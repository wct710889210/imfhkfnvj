package com.btcd.controller;

import com.btcd.data.Admin;
import com.btcd.data.Banner;
import com.btcd.data.Bitclass;
import com.btcd.data.Project;
import com.btcd.service.AdminService;
import com.btcd.service.IndexService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.sql.Date;
import java.util.regex.Pattern;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;
    @Autowired
    private IndexService indexService;

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
    public String bannerDelete(HttpSession session,@PathVariable("id")int id){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        Banner banner = adminService.findBannerById(id);
        File file = new File(banner.getPath());
        if(file.exists()){
            file.delete();
        }
        adminService.deleteBanner(id);
        return "redirect:/bannerManage";
    }

    //banner的修改页面
    @RequestMapping("/bannerModify/{id}")
    public String bannerModify(HttpSession session,@PathVariable("id") int id,@RequestParam("description")String description,@RequestParam("image")MultipartFile file,HttpServletRequest request){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        Banner banner = adminService.findBannerById(id);
        banner.setTitle(description);
        //如果文件不为空，写入上传路径
        if(!file.isEmpty()) {
            //上传文件路径
            String path =  request.getServletContext().getRealPath("static"+File.separator+"uploadFiles"+File.separator+"banners");
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
            File deleteFile = new File(banner.getPath());
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
    public String bannerUpload(HttpSession session,@RequestParam("description") String description, HttpServletRequest request, @RequestParam("image")MultipartFile file){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        //如果文件不为空，写入上传路径
        if(!file.isEmpty()) {
            //上传文件路径
            String path = request.getServletContext().getRealPath("static"+File.separator+"uploadFiles"+File.separator+"banners");
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
            adminService.saveBanner(description,ultiPath.getPath().substring(ultiPath.getPath().indexOf("uploadFiles")));
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
    public String activityUpload(String title, String content, String method, String address, String state, double price, Date endTime,boolean top, HttpServletRequest request, @RequestParam("image")MultipartFile file,HttpSession session){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        //如果文件不为空，写入上传路径
        if(!file.isEmpty()) {
            //上传文件路径
            String path = request.getServletContext().getRealPath("static"+File.separator+"uploadFiles"+File.separator+"projects");
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
            adminService.saveProject(title, ultiPath.getPath().substring(ultiPath.getPath().indexOf("uploadFiles")), content, method, address, state, price, endTime, top);
        } else {
            //TODO 文件为空时的情况（未完成）
            return "redirect:/activityManage";
        }
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
    public String activityDelete(@PathVariable("id")int id,HttpSession session){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        Project project = adminService.findProjectById(id);
        File file = new File(project.getPath());
        if(file.exists()){
            file.delete();
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
    public String activityModify(HttpSession session,@PathVariable("id")int id,String title, String content, String method, String address, String state, double price, Date endTime,boolean top, HttpServletRequest request, @RequestParam("image")MultipartFile file){
        if(session.getAttribute("admin" )==null){
            return "redirect:/adminLogin";
        }
        Project project = adminService.findProjectById(id);
        project.setTitle(title);
        project.setContent(content);
        project.setMethod(method);
        project.setAddress(address);
        project.setState(state);
        project.setPrice(price);
        project.setEndTime(endTime);
        project.setTop(top);
        //如果文件不为空，写入上传路径
        if(!file.isEmpty()) {
            //上传文件路径
            String path = request.getServletContext().getRealPath("static"+File.separator+"uploadFiles"+File.separator+"projects");
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
            File deleteFile = new File(project.getPath());
            if(deleteFile.exists()){
                deleteFile.delete();
            }
            project.setPath(ultiPath.getPath().substring(ultiPath.getPath().indexOf("uploadFiles")));
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
