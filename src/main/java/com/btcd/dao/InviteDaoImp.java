package com.btcd.dao;

import com.btcd.data.Invite;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("inviteDao")
public class InviteDaoImp implements InviteDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Invite> findByInvite(String invite) {
        return sessionFactory.getCurrentSession().createQuery("from Invite where invite=?").setParameter(0,invite).list();
    }

    @Override
    public void add(Invite invite) {
        sessionFactory.getCurrentSession().save(invite);
    }
}
