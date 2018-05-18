package com.btcd.controller;

import com.baidu.ueditor.ActionEnter;
import com.btcd.data.Admin;
import com.btcd.data.Banner;
import com.btcd.data.Bitclass;
import com.btcd.data.Project;
import com.btcd.service.AdminService;
import com.btcd.service.IndexService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.regex.Pattern;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;
    @Autowired
    private IndexService indexService;

    @RequestMapping(value = "/static/admin/ueditor/jsp/ueditor", method = RequestMethod.GET)
    public @ResponseBody String ueditor(HttpServletRequest request, HttpServletResponse response) throws IllegalStateException, IOException {
        //这里就是把controller.jsp代码copy下来
        request.setCharacterEncoding( "utf-8" );
        response.setHeader("Content-Type" , "text/html");
        String roolPath = request.getSession().getServletContext().getRealPath("/");
        String configStr = new ActionEnter(request, roolPath).exec();
        System.out.printf("ueditor\n");
        return configStr;
    }

    @RequestMapping(value = "/ueditorUpload", method = RequestMethod.POST)
    public @ResponseBody Map<String, Object> ueUpload(HttpServletRequest request, HttpServletResponse response) throws IllegalStateException {
        System.out.printf("uploading\n");
        Map<String, Object> m = new HashMap<String, Object>();
        CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        commonsMultipartResolver.setDefaultEncoding("utf-8");
        if(commonsMultipartResolver.isMultipart(request)){
            MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
            MultipartFile file = multipartHttpServletRequest.getFile("upfile");
            System.out.printf("isMultipart:"+file.getOriginalFilename()+"\n");
            if(!file.isEmpty()) { ;
                //上传文件路径
                //String path = request.getServletContext().getRealPath("static"+File.separator+"admin"+File.separator+"ueditor"+File.separator+"jsp"+File.separator+"upload");
                String path = new File(request.getServletContext().getRealPath("")).getParentFile().getAbsolutePath()+File.separator+"uploadFiles"+File.separator+"ueditor";
                //上传文件名
                String filename = file.getOriginalFilename();
                File filepath = new File(path,filename);
                filepath.setWritable(true,false);
                //判断路径是否存在，如果不存在就创建一个
                if (!filepath.getParentFile().exists()) {
                    filepath.getParentFile().mkdirs();
                }
                //将上传文件保存到一个目标文件当中
                String newFileName = String.valueOf(System.currentTimeMillis()).concat("_").concat(getRandom(6)).concat(".").concat(filename.substring(filename.lastIndexOf(".")+1));
                File ultiPath = new File(path + File.separator + newFileName);
                ultiPath.setWritable(true,false);
                try {
                    file.transferTo(ultiPath);
                    m.put("path", "/uploadFiles/ueditor/");
                    m.put("filename", newFileName);
                    m.put("original", filename);
                    m.put("name", newFileName);
                    m.put("url", "/uploadFiles/ueditor/"+newFileName);
                    m.put("state", "SUCCESS");
                    m.put("type",filename.substring(filename.lastIndexOf(".")+1 ));
                    m.put("size", file.getSize());
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return m;
    }

    public String getRandom(int num){
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        for(int i = 0;i < num; i++){
            sb.append(String.valueOf(random.nextInt(10)));
        }
        return sb.toString();
    }

    @RequestMapping("/admin")
    public String admin(HttpSession session){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        return "admin/index";
    }

    @RequestMapping("bannerOn/{id}")
    @ResponseBody
    public boolean bannerOn(@PathVariable("id")int id,HttpSession session){
        if(session.getAttribute("admin" )==null){
            return false;
        }
        adminService.bannerOn(id);
        return true;
    }

    @RequestMapping("bannerOff/{id}")
    @ResponseBody
    public boolean bannerOff(@PathVariable("id")int id,HttpSession session){
        if(session.getAttribute("admin" )==null){
            return false;
        }
        adminService.bannerOff(id);
        return true;
    }

    @RequestMapping("/banner")
    public String banner(HttpSession session){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        return "admin/banner";
    }

    @RequestMapping("/bannerManage")
    public String bannerManage(Model model,HttpSession session){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        model.addAttribute("banners",adminService.findAllBanner());
        return "admin/abanner";
    }

    //banner的修改页面
    @RequestMapping("/bannerChange/{id}")
    public String bannerChange(HttpSession session,Model model,@PathVariable("id") int id){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        model.addAttribute("banner",adminService.findBannerById(id));
        return "admin/mbanner";
    }

    @RequestMapping("/bannerDelete/{id}")
    public String bannerDelete(HttpSession session,@PathVariable("id")int id,HttpServletRequest request){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        Banner banner = adminService.findBannerById(id);
        File file = new File(new File(request.getServletContext().getRealPath("")).getParentFile().getAbsolutePath()+File.separator+banner.getPath());
        if(file.exists()){
            file.delete();
        }
        adminService.deleteBanner(id);
        return "redirect:/bannerManage";
    }

    //banner的修改页面
    @RequestMapping("/bannerModify/{id}")
    public String bannerModify(HttpSession session,@PathVariable("id") int id,@RequestParam("image")MultipartFile file,HttpServletRequest request){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        Banner banner = adminService.findBannerById(id);
        String url = null;
        String description = null;
        if(request.getParameter("url") != null){
            url = request.getParameter("url");
        }
        if(request.getParameter("description") != null){
            description = request.getParameter("description");
        }
        banner.setTitle(description);
        banner.setUrl(url);
        //如果文件不为空，写入上传路径
        if(!file.isEmpty()) {
            //上传文件路径
            //String path =  request.getServletContext().getRealPath("static"+File.separator+"uploadFiles"+File.separator+"banners");
            String path = new File(request.getServletContext().getRealPath("")).getParentFile().getAbsolutePath()+File.separator+"uploadFiles"+File.separator+"banners";
            //上传文件名
            String filename = file.getOriginalFilename();
            File filepath = new File(path,filename);
            filepath.setWritable(true,false);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件当中
            File ultiPath = new File(path + File.separator + adminService.generateRandomFilename()+filename.substring(filename.lastIndexOf(".")+1));
            ultiPath.setWritable(true,false);
            try {
                file.transferTo(ultiPath);
            } catch (IOException e) {
                e.printStackTrace();
            }
            //删除之前的图片
            File deleteFile = new File( new File(request.getServletContext().getRealPath("")).getParentFile().getAbsolutePath()+File.separator+banner.getPath());
            System.out.printf("deleteFile:"+deleteFile.getAbsolutePath()+"\n");
            if(deleteFile.exists()){
                deleteFile.delete();
            }
            banner.setPath(ultiPath.getPath().substring(ultiPath.getPath().indexOf("uploadFiles")));
        }
        adminService.updateBanner(banner);
        return "redirect:/bannerManage";
    }

    //上传
    //TODO 限制上传类型
    @RequestMapping("/bannerUpload")
    public String bannerUpload(HttpSession session, HttpServletRequest request, @RequestParam("image")MultipartFile file){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        //如果文件不为空，写入上传路径
        String url = null;
        String description = null;
        if(request.getParameter("url") != null){
            url = request.getParameter("url");
        }
        if(request.getParameter("description") != null){
            description = request.getParameter("description");
        }
        if(!file.isEmpty()) {
            //上传文件路径
            //String path = request.getServletContext().getRealPath("static"+File.separator+"uploadFiles"+File.separator+"banners");
            String path = new File(request.getServletContext().getRealPath("")).getParentFile().getAbsolutePath()+File.separator+"uploadFiles"+File.separator+"banners";
            System.out.printf("path:"+path+"\n");
            //上传文件名
            String filename = file.getOriginalFilename();
            File filepath = new File(path,filename);
            filepath.setWritable(true,false);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件当中
            File ultiPath = new File(path + File.separator + adminService.generateRandomFilename()+filename.substring(filename.lastIndexOf(".")+1));
            ultiPath.setWritable(true,false);
            try {
                file.transferTo(ultiPath);
            } catch (IOException e) {
                e.printStackTrace();
            }
            adminService.saveBanner(description,ultiPath.getPath().substring(ultiPath.getPath().indexOf("uploadFiles")),true,url);
        } else {
            //TODO 文件为空时的情况（未完成）
            return "redirect:/bannerManage";
        }
        return "redirect:/bannerManage";
    }

    @RequestMapping("/activity")
    public String activity(HttpSession session){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        return "admin/activity";
    }

    @RequestMapping("/activityUpload")
    public String activityUpload(Date endTime,boolean top, HttpServletRequest request,HttpSession session){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        try {
            request.setCharacterEncoding("utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String method = request.getParameter("method");
        String address = request.getParameter("address");
        String state = request.getParameter("state");
        double price = Double.parseDouble(request.getParameter("price"));
        String savePath = "img/portfolio/portfolio-6.jpg";
        CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        commonsMultipartResolver.setDefaultEncoding("utf-8");
        //如果文件不为空，写入上传路径
        if(commonsMultipartResolver.isMultipart(request)){
            MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
            MultipartFile file = multipartHttpServletRequest.getFile("image");
            if(!file.isEmpty()) {
                //上传文件路径
                //String path = request.getServletContext().getRealPath("static"+File.separator+"uploadFiles"+File.separator+"projects");
                String path = new File(request.getServletContext().getRealPath("")).getParentFile().getAbsolutePath()+File.separator+"uploadFiles"+File.separator+"projects";
                //上传文件名
                String filename = file.getOriginalFilename();
                File filepath = new File(path,filename);
                filepath.setWritable(true,false);
                //判断路径是否存在，如果不存在就创建一个
                if (!filepath.getParentFile().exists()) {
                    filepath.getParentFile().mkdirs();
                }
                //将上传文件保存到一个目标文件当中
                File ultiPath = new File(path + File.separator + adminService.generateRandomFilename()+filename.substring(filename.lastIndexOf(".")+1));
                ultiPath.setWritable(true,false);
                try {
                    file.transferTo(ultiPath);
                    savePath = ultiPath.getPath().substring(ultiPath.getPath().indexOf("uploadFiles"));
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        adminService.saveProject(title,savePath, content, method, address, state, price, endTime, top);
        return "redirect:/activityManage";
    }

    @RequestMapping("activityManage")
    public String activityManage(Model model,HttpSession session){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        model.addAttribute("projects",adminService.findAllProject());
        return "admin/aactivity";
    }

    @RequestMapping("activityDelete/{id}")
    public String activityDelete(@PathVariable("id")int id,HttpSession session,HttpServletRequest request){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        Project project = adminService.findProjectById(id);
        if(!project.getPath().equals("img/portfolio/portfolio-6.jpg")) {
            File file = new File(new File(request.getServletContext().getRealPath("")).getParentFile().getAbsolutePath()+File.separator+project.getPath());
            if (file.exists()) {
                file.delete();
            }
        }
        adminService.deleteProject(id);
        return "redirect:/activityManage";
    }

    @RequestMapping("activityChange/{id}")
    public String activityChange(@PathVariable("id")int id,Model model,HttpSession session){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        model.addAttribute("project",adminService.findProjectById(id));
        return "admin/mactivity";
    }

    @RequestMapping("activityModify/{id}")
    public String activityModify(HttpSession session,@PathVariable("id")int id, Date endTime,boolean top, HttpServletRequest request){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        try {
            request.setCharacterEncoding("utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String method = request.getParameter("method");
        String address = request.getParameter("address");
        String state = request.getParameter("state");
        double price = Double.parseDouble(request.getParameter("price"));
        Project project = adminService.findProjectById(id);
        project.setTitle(title);
        project.setContent(content);
        project.setMethod(method);
        project.setAddress(address);
        project.setState(state);
        project.setPrice(price);
        project.setEndTime(endTime);
        project.setTop(top);
        CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        commonsMultipartResolver.setDefaultEncoding("utf-8");
        //如果文件不为空，写入上传路径
        if(commonsMultipartResolver.isMultipart(request)) {
            MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
            MultipartFile file = multipartHttpServletRequest.getFile("image");
            if(!file.isEmpty()) {
                //上传文件路径
                //String path = request.getServletContext().getRealPath("static"+File.separator+"uploadFiles"+File.separator+"projects");
                String path = new File(request.getServletContext().getRealPath("")).getParentFile().getAbsolutePath()+File.separator+"uploadFiles"+File.separator+"projects";
                System.out.printf("deleteFile");
                //上传文件名
                String filename = file.getOriginalFilename();
                File filepath = new File(path,filename);
                filepath.setWritable(true,false);
                //判断路径是否存在，如果不存在就创建一个
                if (!filepath.getParentFile().exists()) {
                    filepath.getParentFile().mkdirs();
                }
                //将上传文件保存到一个目标文件当中
                File ultiPath = new File(path + File.separator + adminService.generateRandomFilename()+filename.substring(filename.lastIndexOf(".")+1));
                ultiPath.setWritable(true,false);
                try {
                    file.transferTo(ultiPath);
                } catch (IOException e) {
                    e.printStackTrace();
                }
                //删除之前的图片
                if(!project.getPath().equals("img/portfolio/portfolio-6.jpg")) {
                    File deleteFile = new File(new File(request.getServletContext().getRealPath("")).getParentFile().getAbsolutePath()+File.separator+project.getPath());
                    if (deleteFile.exists()) {
                        deleteFile.delete();
                    }
                }
                project.setPath(ultiPath.getPath().substring(ultiPath.getPath().indexOf("uploadFiles")));
            }
        }
        adminService.updateProject(project);
        return "redirect:/activityManage";
    }

    @RequestMapping("/class")
    public String showClass(HttpSession session){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        return "admin/class";
    }

    @RequestMapping("/classAdd")
    public String classAdd(String title,String auth,@RequestParam("editorValue")String content,HttpSession session){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        adminService.saveBitclass(title,auth,content);
        return "redirect:/classManage";
    }

    @RequestMapping("/classManage")
    public String classManage(Model model,HttpSession session){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        model.addAttribute("bitclasses",adminService.findAllBitclass());
        return "admin/aclass";
    }

    @RequestMapping("/classChange/{id}")
    public String classChange(@PathVariable("id")int id,Model model,HttpSession session){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        model.addAttribute("bitclass",adminService.findBitclassById(id));
        return "admin/mclass";
    }

    @RequestMapping("/classModify/{id}")
    public String classModify(@PathVariable("id")int id,String title,String auth,@RequestParam("editorValue")String content,HttpSession session){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        Bitclass bitclass = adminService.findBitclassById(id);
        bitclass.setTitle(title);
        bitclass.setAuth(auth);
        bitclass.setContent(content);
        //修改时修改发布时间
        bitclass.setTime(new Date(System.currentTimeMillis()));
        adminService.updateBitclass(bitclass);
        return "redirect:/classManage";
    }

    @RequestMapping("/classDelete/{id}")
    public String classDelete(@PathVariable("id")int id,HttpSession session){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        adminService.deleteBitclass(id);
        return "redirect:/classManage";
    }

    @RequestMapping("/userList")
    public String userList(Model model,HttpSession session){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        model.addAttribute("users",indexService.findAllUser());
        return "admin/user";
    }

    @RequestMapping("/adminLogin")
    public String adminLogin(HttpSession session){
        return "admin/alogin";
    }

    @RequestMapping("/adminLoginCheck")
    public String adminLoginCheck(String account, String password, HttpSession session){
        Admin search = adminService.findAdminByAccount(account);
        if(search == null){
            //不存在此用户
            return "redirect:/adminLogin";
        }else{
            if(search.getPassword().equals(DigestUtils.md5DigestAsHex(password.getBytes()))){
                session.setAttribute("admin",account);
                //登录成功
                return "redirect:/admin";
            }else {
                //密码错误
                return "redirect:/adminLogin";
            }
        }
    }


}
