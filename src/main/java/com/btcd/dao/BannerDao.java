package com.btcd.dao;

import com.btcd.data.Banner;

import java.util.List;

public interface BannerDao {
    public void add(Banner banner);
    public void delete(int id);
    public void update(Banner banner);
    public Banner findOne(int id);
    public List<Banner> findAll();
}
