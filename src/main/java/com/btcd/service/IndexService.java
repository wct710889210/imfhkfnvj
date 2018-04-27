package com.btcd.service;

import com.btcd.data.Banner;
import com.btcd.data.Project;
import com.btcd.data.User;

import java.util.List;

public interface IndexService {
    public void addBanner(String title,String path);
    public List<Banner> findAll();
    public List<Project> findAllProject();
    public User findUserByAccount(String account);
    public void addUser(String account,String password);
    public void sendEmail(String receiveMail);
    public User findUserByConfirm(String confirm);
    public void updateUser(User user);
}
