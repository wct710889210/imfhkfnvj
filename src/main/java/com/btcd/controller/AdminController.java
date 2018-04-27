package com.btcd.controller;

import com.btcd.data.Banner;
import com.btcd.data.Project;
import com.btcd.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.sql.Date;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

    @RequestMapping("/admin")
    public String admin(){
        return "admin/index";
    }

    @RequestMapping("/banner")
    public String banner(){
        return "admin/banner";
    }

    @RequestMapping("/bannerManage")
    public String bannerManage(Model model){
        model.addAttribute("banners",adminService.findAllBanner());
        return "admin/abanner";
    }

    //banner的修改页面
    @RequestMapping("/bannerChange/{id}")
    public String bannerChange(Model model,@PathVariable("id") int id){
        model.addAttribute("banner",adminService.findBannerById(id));
        return "admin/mbanner";
    }

    @RequestMapping("/bannerDelete/{id}")
    public String bannerDelete(@PathVariable("id")int id){
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
    public String bannerModify(@PathVariable("id") int id,@RequestParam("description")String description,@RequestParam("image")MultipartFile file,HttpServletRequest request){
        Banner banner = adminService.findBannerById(id);
        banner.setTitle(description);
        //如果文件不为空，写入上传路径
        if(!file.isEmpty()) {
            //上传文件路径
            String path = request.getServletContext().getRealPath("static/uploadFiles/banners");
            //上传文件名
            String filename = file.getOriginalFilename();
            File filepath = new File(path,filename);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件当中
            File ultiPath = new File(path + File.separator + adminService.generateRandomFilename()+filename.substring(filename.lastIndexOf(".")+1));
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
            banner.setPath(ultiPath.getAbsolutePath());
        }
        adminService.updateBanner(banner);
        return "redirect:/bannerManage";
    }

    //上传
    //TODO 限制上传类型
    @RequestMapping("/bannerUpload")
    public String bannerUpload(@RequestParam("description") String description, HttpServletRequest request, @RequestParam("image")MultipartFile file){
        //如果文件不为空，写入上传路径
        if(!file.isEmpty()) {
            //上传文件路径
            String path = request.getServletContext().getRealPath("static/uploadFiles/banners");
            //上传文件名
            String filename = file.getOriginalFilename();
            File filepath = new File(path,filename);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件当中
            File ultiPath = new File(path + File.separator + adminService.generateRandomFilename()+filename.substring(filename.lastIndexOf(".")+1));
            try {
                file.transferTo(ultiPath);
            } catch (IOException e) {
                e.printStackTrace();
            }
            adminService.saveBanner(description,ultiPath.getAbsolutePath());
        } else {
            //TODO 文件为空时的情况（未完成）
            return "redirect:/bannerManage";
        }
        return "redirect:/bannerManage";
    }

    @RequestMapping("/activity")
    public String activity(){
        return "admin/activity";
    }

    @RequestMapping("/activityUpload")
    public String activityUpload(String title, String content, String method, String address, String state, double price, Date endTime,boolean top, HttpServletRequest request, @RequestParam("image")MultipartFile file){
        //如果文件不为空，写入上传路径
        if(!file.isEmpty()) {
            //上传文件路径
            String path = request.getServletContext().getRealPath("static/uploadFiles/projects");
            //上传文件名
            String filename = file.getOriginalFilename();
            File filepath = new File(path,filename);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件当中
            File ultiPath = new File(path + File.separator + adminService.generateRandomFilename()+filename.substring(filename.lastIndexOf(".")+1));
            try {
                file.transferTo(ultiPath);
            } catch (IOException e) {
                e.printStackTrace();
            }
            adminService.saveProject(title, ultiPath.getAbsolutePath(), content, method, address, state, price, endTime, top);
        } else {
            //TODO 文件为空时的情况（未完成）
            return "redirect:/activityManage";
        }
        return "redirect:/activityManage";
    }

    @RequestMapping("activityManage")
    public String activityManage(Model model){
        model.addAttribute("projects",adminService.findAllProject());
        return "admin/aactivity";
    }

    @RequestMapping("activityDelete/{id}")
    public String activityDelete(@PathVariable("id")int id){
        Project project = adminService.findProjectById(id);
        File file = new File(project.getPath());
        if(file.exists()){
            file.delete();
        }
        adminService.deleteProject(id);
        return "redirect:/activityManage";
    }

    @RequestMapping("activityChange/{id}")
    public String activityChange(@PathVariable("id")int id,Model model){
        model.addAttribute("project",adminService.findProjectById(id));
        return "admin/mactivity";
    }

    @RequestMapping("activityModify/{id}")
    public String activityModify(@PathVariable("id")int id,String title, String content, String method, String address, String state, double price, Date endTime,boolean top, HttpServletRequest request, @RequestParam("image")MultipartFile file){
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
            String path = request.getServletContext().getRealPath("static/uploadFiles/projects");
            //上传文件名
            String filename = file.getOriginalFilename();
            File filepath = new File(path,filename);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件当中
            File ultiPath = new File(path + File.separator + adminService.generateRandomFilename()+filename.substring(filename.lastIndexOf(".")+1));
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
            project.setPath(ultiPath.getAbsolutePath());
        }
        adminService.updateProject(project);
        return "redirect:/activityManage";
    }

    @RequestMapping("/class")
    public String showClass(){
        return "admin/class";
    }
}
