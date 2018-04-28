package com.btcd.service;

import com.btcd.data.Banner;
import com.btcd.data.Project;

import java.sql.Date;
import java.util.List;

public interface AdminService {
    public String generateRandomFilename();
    public void saveBanner(String description,String path);
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
}
