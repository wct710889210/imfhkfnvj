package com.btcd.controller;

import com.btcd.data.Banner;
import com.btcd.data.Bitclass;
import com.btcd.data.Project;
import com.btcd.service.AdminService;
import com.btcd.service.IndexService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.Date;
import java.util.List;
import java.util.regex.Pattern;

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

    @RequestMapping(value = "/getHomeData",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String getHomeData(){
        List<Banner> banners = indexService.findAll();
        List<Project> projects = indexService.findAllProject();
        JSONArray bannerJson = JSONArray.fromObject(banners);
        JSONArray projectsJson = new JSONArray();
        for(Project project:projects){
            JSONObject temp = new JSONObject();
            temp.put("id",project.getId());
            temp.put("title",project.getTitle());
            temp.put("path",project.getPath());
            temp.put("content",project.getContent());
            temp.put("method",project.getMethod());
            temp.put("address",project.getAddress());
            temp.put("state",project.getState());
            temp.put("price",project.getPrice());
            temp.put("endTime",project.getEndTime().toString());
            temp.put("top",project.isTop());
            projectsJson.add(temp);
        }
        JSONArray json = new JSONArray();
        json.add(bannerJson.toString());
        json.add(projectsJson.toString());
        return json.toString();
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
        List<Bitclass> bitclasses = adminService.findAllBitclass();
        for(Bitclass bitclass:bitclasses){
            bitclass.setContent(html2Text(bitclass.getContent()));
        }
        model.addAttribute("bitclasses",bitclasses);
        return "bitclass";
    }

    @RequestMapping("/article/{id}")
    public String article(@PathVariable("id")int id,Model model){
        model.addAttribute("bitclass",adminService.findBitclassById(id));
        return "article";
    }

    //从html中提取纯文本
    public String html2Text(String inputString) {
        String htmlStr = inputString; // 含html标签的字符串
        String textStr = "";
        java.util.regex.Pattern p_script;
        java.util.regex.Matcher m_script;
        java.util.regex.Pattern p_style;
        java.util.regex.Matcher m_style;
        java.util.regex.Pattern p_html;
        java.util.regex.Matcher m_html;
        try {
            String regEx_script = "<[\\s]*?script[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?script[\\s]*?>"; // 定义script的正则表达式{或<script[^>]*?>[\\s\\S]*?<\\/script>
            String regEx_style = "<[\\s]*?style[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?style[\\s]*?>"; // 定义style的正则表达式{或<style[^>]*?>[\\s\\S]*?<\\/style>
            String regEx_html = "<[^>]+>"; // 定义HTML标签的正则表达式
            p_script = Pattern.compile(regEx_script, Pattern.CASE_INSENSITIVE);
            m_script = p_script.matcher(htmlStr);
            htmlStr = m_script.replaceAll(""); // 过滤script标签
            p_style = Pattern.compile(regEx_style, Pattern.CASE_INSENSITIVE);
            m_style = p_style.matcher(htmlStr);
            htmlStr = m_style.replaceAll(""); // 过滤style标签
            p_html = Pattern.compile(regEx_html, Pattern.CASE_INSENSITIVE);
            m_html = p_html.matcher(htmlStr);
            htmlStr = m_html.replaceAll(""); // 过滤html标签
            textStr = htmlStr;
        } catch (Exception e) {System.err.println("Html2Text: " + e.getMessage()); }
        //剔除空格行
        textStr=textStr.replaceAll("[ ]+", " ");
        textStr=textStr.replaceAll("(?m)^\\s*$(\\n|\\r\\n)", "");
        return textStr;// 返回文本字符串
    }
}
