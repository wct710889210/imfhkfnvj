package com.btcd.dao;

import com.btcd.data.Bitclass;

import java.util.List;

public interface BitclassDao {
    public void add(Bitclass project);
    public void delete(int id);
    public void update(Bitclass project);
    public Bitclass findOne(int id);
    public List<Bitclass> findAll();
}
