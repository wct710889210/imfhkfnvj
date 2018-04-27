package com.btcd.dao;

import com.btcd.data.User;
import org.hibernate.Session;
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
        sessionFactory.getCurrentSession().save(user);
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(session.get(User.class,id));
    }

    @Override
    public void update(User user) {
        sessionFactory.getCurrentSession().update(user);
    }

    @Override
    public User findByAccount(String account) {
        return (User) sessionFactory.getCurrentSession().createQuery("from User where account = ?").setParameter(0,account).uniqueResult();
    }

    @Override
    public User findOne(int id) {
        return sessionFactory.getCurrentSession().get(User.class,id);
    }

    @Override
    public List<User> findAll() {
        return sessionFactory.getCurrentSession().createQuery("from User").list();
    }

    @Override
    public User findByConfirm(String confirm) {
        return (User) sessionFactory.getCurrentSession().createQuery("from User where confirm=?").setParameter(0,confirm).uniqueResult();
    }
}
