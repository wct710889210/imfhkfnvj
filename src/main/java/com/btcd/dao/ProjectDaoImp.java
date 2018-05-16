package com.btcd.dao;

import com.btcd.data.Project;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository("projectDao")
public class ProjectDaoImp implements ProjectDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void add(Project project) {
        sessionFactory.getCurrentSession().save(project);
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(session.get(Project.class,id));
    }

    @Override
    public void update(Project project) {
        sessionFactory.getCurrentSession().update(project);
    }

    @Override
    public Project findOne(int id) {
        return sessionFactory.getCurrentSession().get(Project.class,id);
    }

    @Override
    public List<Project> findAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("From Project order by top desc");
        return query.list();
    }
}
