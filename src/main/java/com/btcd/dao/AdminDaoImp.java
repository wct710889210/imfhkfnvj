package com.btcd.dao;

import com.btcd.data.Admin;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("adminDao")
public class AdminDaoImp implements AdminDao{
    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public Admin findByAccount(String account) {
        return (Admin) sessionFactory.getCurrentSession().createQuery("from Admin where account = ?").setParameter(0,account).uniqueResult();
    }
}
