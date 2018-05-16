package com.btcd.service;

import com.btcd.dao.*;
import com.btcd.data.*;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

@Service("adminService")
public class AdminServiceImp implements AdminService{
    @Autowired
    private BannerDao bannerDao;
    @Autowired
    private ProjectDao projectDao;
    @Autowired
    private UserDao userDao;
    @Autowired
    private BitclassDao bitclassDao;
    @Autowired
    private AdminDao adminDao;

    @Override
    public String generateRandomFilename() {
        String RandomFilename = "";
        Random rand = new Random();//生成随机数
        int random = rand.nextInt();
        Calendar calCurrent = Calendar.getInstance();
        int intDay = calCurrent.get(Calendar.DATE);
        int intMonth = calCurrent.get(Calendar.MONTH) + 1;
        int intYear = calCurrent.get(Calendar.YEAR);
        String now = String.valueOf(intYear) + "_" + String.valueOf(intMonth) + "_" +
                String.valueOf(intDay) + "_";
        RandomFilename = now + String.valueOf(random > 0 ? random : ( -1) * random) + ".";
        return RandomFilename;
    }

    @Override
    public void saveBanner(String description, String path,boolean isUse,String url) {
        Banner banner = new Banner();
        banner.setTitle(description);
        banner.setPath(path);
        banner.setUse(isUse);
        banner.setUrl(url);
        bannerDao.add(banner);
    }

    @Override
    public List<Banner> findAllBanner() {
        return bannerDao.findAll();
    }

    @Override
    public Banner findBannerById(int id) {
        return bannerDao.findOne(id);
    }

    @Override
    public void updateBanner(Banner banner) {
        bannerDao.update(banner);
    }

    @Override
    public void deleteBanner(int id) {
        bannerDao.delete(id);
    }

    @Override
    public void saveProject(String title, String path, String content, String method, String address, String state, double price, Date endTime, boolean top) {
        Project project = new Project();
        project.setTitle(title);
        project.setPath(path);
        project.setContent(content);
        project.setMethod(method);
        project.setAddress(address);
        project.setState(state);
        project.setPrice(price);
        project.setEndTime(endTime);
        project.setTop(top);
        projectDao.add(project);
    }

    @Override
    public List<Project> findAllProject() {
        return projectDao.findAll();
    }

    @Override
    public Project findProjectById(int id) {
        return projectDao.findOne(id);
    }

    @Override
    public void updateProject(Project project) {
        projectDao.update(project);
    }

    @Override
    public void deleteProject(int id) {
        projectDao.delete(id);
    }

    @Override
    public void bannerOn(int id) {
        Banner banner = bannerDao.findOne(id);
        banner.setUse(true);
        bannerDao.update(banner);
    }

    @Override
    public void bannerOff(int id) {
        Banner banner = bannerDao.findOne(id);
        banner.setUse(false);
        bannerDao.update(banner);
    }

    @Override
    public void saveBitclass(String title,String auth, String content) {
        Bitclass bitclass = new Bitclass();
        bitclass.setTitle(title);
        bitclass.setAuth(auth);
        bitclass.setContent(content);
        bitclass.setTime(new Date(System.currentTimeMillis()));
        bitclassDao.add(bitclass);
    }

    @Override
    public List<Bitclass> findAllBitclass() {
        return bitclassDao.findAll();
    }

    @Override
    public Bitclass findBitclassById(int id) {
        return bitclassDao.findOne(id);
    }

    @Override
    public void updateBitclass(Bitclass bitclass) {
        bitclassDao.update(bitclass);
    }

    @Override
    public void deleteBitclass(int id) {
        bitclassDao.delete(id);
    }

    @Override
    public User findUserByAccount(String account) {
        return userDao.findByAccount(account);
    }

    @Override
    public Admin findAdminByAccount(String account) {
        return adminDao.findByAccount(account);
    }


}
