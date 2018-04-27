package com.btcd.controller;

import com.btcd.data.User;
import com.btcd.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
    @Autowired
    private IndexService indexService;
    @Autowired
    private JavaMailSender mailSender;

    @RequestMapping("/register")
    public String register(){
        return "register";
    }

    @RequestMapping("/registerCheck")
    public String registerCheck(String account,String password,String repassword){
        User search = indexService.findUserByAccount(account);
        if(search == null){
            if(password.equals(repassword)){
                //TODO 存储用户，发送邮件
                indexService.sendEmail(account);
                indexService.addUser(account,password);
            }else {
                //密码错误
            }
        }else{
            //账号已存在
        }
        return "redirect:/login";
    }

    @RequestMapping("/confirm")
    public String confirm(String key){
        User user = indexService.findUserByConfirm(key);
        if(user == null){
            //无效
        }else{
            user.setActivate(true);
            indexService.updateUser(user);
        }
        return "redirect:/login";
    }

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    @RequestMapping("/loginCheck")
    public String loginCheck(){

        return "redirect:/";
    }

    @RequestMapping("/mine")
    public String mine(){
        return "mine";
    }
}
