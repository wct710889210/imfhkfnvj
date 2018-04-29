package com.btcd.dao;

import com.btcd.data.Admin;

public interface AdminDao {
    public Admin findByAccount(String account);
}
