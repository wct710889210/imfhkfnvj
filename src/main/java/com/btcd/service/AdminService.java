package com.btcd.service;

import com.btcd.data.*;

import java.sql.Date;
import java.util.List;

public interface AdminService {
    public String generateRandomFilename();
    public void saveBanner(String description,String path,boolean isUse,String url);
    public List<Banner> findAllBanner();
    public Banner findBannerById(int id);
    public void updateBanner(Banner banner);
    public void deleteBanner(int id);

    public void saveProject(String title, String path, String content, String method, String address, String state, double price, Date endTime, boolean top);
    public List<Project> findAllProject();
    public Project findProjectById(int id);
    public void updateProject(Project project);
    public void deleteProject(int id);
    public void bannerOn(int id);
    public void bannerOff(int id);

    public void saveBitclass(String title,String auth,String content);
    public List<Bitclass> findAllBitclass();
    public Bitclass findBitclassById(int id);
    public void updateBitclass(Bitclass bitclass);
    public void deleteBitclass(int id);

    public User findUserByAccount(String account);
    public void deleteUserById(int id);

    public Admin findAdminByAccount(String account);
}
