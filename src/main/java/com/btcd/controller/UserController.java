package com.btcd.controller;

import com.btcd.data.User;
import com.btcd.service.AdminService;
import com.btcd.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    @Autowired
    private IndexService indexService;
//    @Autowired
//    private JavaMailSender mailSender;
    @Autowired
    private AdminService adminService;

    @RequestMapping("/register")
    public String register(){
        return "register";
    }

    @RequestMapping("/registerCheck")
    @ResponseBody
    public String registerCheck(String account,String password){
        User search = indexService.findUserByAccount(account);
        if(search == null){
                //存储用户，发送邮件
                System.out.printf("sending");
                indexService.sendEmail(account);
                indexService.addUser(account,DigestUtils.md5DigestAsHex(password.getBytes()));
                //注册成功
                return "0";
        }else{
            //该账号已存在
            return "1";
        }
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
        return "redirect:/success";
    }

    @RequestMapping("/success")
    public String success(){
        return "success";
    }

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    @RequestMapping("/loginCheck")
    @ResponseBody
    public String loginCheck(String account,String password,HttpSession httpSession){
        User search = indexService.findUserByAccount(account);
        if(search == null){
            //不存在此用户
            return "1";
        }else{
            if(search.getPassword().equals(DigestUtils.md5DigestAsHex(password.getBytes()))){
                if(search.isActivate()){
                    httpSession.setAttribute("account",account);
                    //登录成功
                    return "0";
                }else {
                    //账号未激活
                    return "3";
                }
            }else {
                //密码错误
                return "2";
            }
        }
    }

    @RequestMapping("/mine")
    public String mine(HttpSession session, Model model){
        if(session.getAttribute("account") == null){
            return "redirect:/login";
        }else{
            User user = adminService.findUserByAccount((String)session.getAttribute("account"));
            model.addAttribute("user",user);
            return "mine";
        }
    }
}
