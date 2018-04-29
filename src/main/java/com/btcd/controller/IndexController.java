package com.btcd.controller;

import com.btcd.data.Banner;
import com.btcd.data.Project;
import com.btcd.service.AdminService;
import com.btcd.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.Date;
import java.util.List;

@Controller
public class IndexController {
    @Autowired
    private IndexService indexService;
    @Autowired
    private AdminService adminService;

    @RequestMapping("/")
    public String index(Model model){
        List<Banner> banners = indexService.findAll();
        List<Project> projects = indexService.findAllProject();
        model.addAttribute("projects",projects);
        model.addAttribute("banners",banners);
        return "index";
    }

    @RequestMapping("/details/{id}")
    public String details(@PathVariable("id")int id,Model model){
        Project project = adminService.findProjectById(id);
        //判断是否结束
        if(!project.getState().equals("准备中")){
            int state = project.getEndTime().compareTo(new Date(System.currentTimeMillis()));
            if(state<0){
                project.setState("已结束");
            }
        }
        List<Project> projects = indexService.findAllProject();
        model.addAttribute("project",project);
        model.addAttribute("projects",projects);
        return "details";
    }

    @RequestMapping("/about")
    public String about(){
        return "about";
    }

    @RequestMapping("/bitclass")
    public String bitClass(Model model){
        model.addAttribute("bitclasses",adminService.findAllBitclass());
        return "bitclass";
    }
}
