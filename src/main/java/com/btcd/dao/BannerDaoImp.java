package com.btcd.dao;

import com.btcd.data.Banner;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("bannerDao")
public class BannerDaoImp implements BannerDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void add(Banner banner) {
        sessionFactory.getCurrentSession().save(banner);
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(session.get(Banner.class,id));
    }

    @Override
    public void update(Banner banner) {
        sessionFactory.getCurrentSession().update(banner);
    }

    @Override
    public Banner findOne(int id) {
        return sessionFactory.getCurrentSession().get(Banner.class,id);
    }

    @Override
    public List<Banner> findAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("From Banner");
        return query.list();
    }
}
