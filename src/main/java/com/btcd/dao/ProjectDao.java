package com.btcd.dao;

import com.btcd.data.Project;
import java.util.List;

public interface ProjectDao {
    public void add(Project bitclass);
    public void delete(int id);
    public void update(Project bitclass);
    public Project findOne(int id);
    public List<Project> findAll();
}
