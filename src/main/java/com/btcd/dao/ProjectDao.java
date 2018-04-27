package com.btcd.dao;

import com.btcd.data.Project;
import java.util.List;

public interface ProjectDao {
    public void add(Project project);
    public void delete(int id);
    public void update(Project project);
    public Project findOne(int id);
    public List<Project> findAll();
}
