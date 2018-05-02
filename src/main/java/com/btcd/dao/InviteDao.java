package com.btcd.dao;

import com.btcd.data.Invite;

import java.util.List;

public interface InviteDao {
    public List<Invite> findByInvite(String invite);
    public void add(Invite invite);
}
