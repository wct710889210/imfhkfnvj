package com.btcd.dao;

import com.btcd.data.Bitclass;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("bitclassDao")
public class BitclassDaoImp implements BitclassDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void add(Bitclass bitclass) {
        sessionFactory.getCurrentSession().save(bitclass);
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(session.get(Bitclass.class,id));
    }

    @Override
    public void update(Bitclass bitclass) {
        sessionFactory.getCurrentSession().update(bitclass);
    }

    @Override
    public Bitclass findOne(int id) {
        return sessionFactory.getCurrentSession().get(Bitclass.class,id);
    }

    @Override
    public List<Bitclass> findAll() {
        return sessionFactory.getCurrentSession().createQuery("from Bitclass ").list();
    }
}
