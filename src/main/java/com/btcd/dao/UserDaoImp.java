package com.btcd.dao;

import com.btcd.data.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userDao")
public class UserDaoImp implements UserDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void add(User user) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public void update(User user) {

    }

    @Override
    public User findByAccount(String account) {
        return (User) sessionFactory.getCurrentSession().createQuery("from User where account = ?").setParameter(0,account).uniqueResult();
    }

    @Override
    public User findOne(int id) {
        return null;
    }

    @Override
    public List<User> findAll() {
        return null;
    }
}
