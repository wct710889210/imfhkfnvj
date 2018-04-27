package com.btcd.dao;

import com.btcd.data.User;

import java.util.List;

public interface UserDao {
    public void add(User user);
    public void delete(int id);
    public void update(User user);
    public User findByAccount(String account);
    public User findOne(int id);
    public List<User> findAll();
}
