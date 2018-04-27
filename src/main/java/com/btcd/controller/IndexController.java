package com.btcd.controller;

import com.btcd.data.Banner;
import com.btcd.data.Project;
import com.btcd.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;

@Controller
public class IndexController {
    @Autowired
    private IndexService indexService;

    @RequestMapping("/")
    public String index(Model model){
        List<Banner> banners = indexService.findAll();
        List<Project> projects = indexService.findAllProject();
        model.addAttribute("projects",projects);
        model.addAttribute("banners",banners);
        return "index";
    }

}
