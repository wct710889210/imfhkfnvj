package com.btcd.service;

import com.btcd.dao.BannerDao;
import com.btcd.dao.ProjectDaoImp;
import com.btcd.dao.UserDao;
import com.btcd.data.Banner;
import com.btcd.data.Project;
import com.btcd.data.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("indexService")
public class IndexServiceImp implements IndexService{
    @Autowired
    private BannerDao bannerDao;
    @Autowired
    private UserDao userDao;

    @Autowired
    private ProjectDaoImp projectDao;

    @Override
    public void addBanner(String title, String path) {
        Banner banner = new Banner();
        banner.setTitle(title);
        banner.setPath(path);
        bannerDao.add(banner);
    }

    @Override
    public List<Banner> findAll() {
        return bannerDao.findAll();
    }

    @Override
    public List<Project> findAllProject(){
        return projectDao.findAll();
    }

    @Override
    public User findUserByAccount(String account) {
        return userDao.findByAccount(account);
    }


}
