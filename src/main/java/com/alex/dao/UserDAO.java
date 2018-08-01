package com.alex.dao;

import com.alex.model.User;

import java.util.List;

public interface UserDao {
    List<User> getAll();
    User getOne(String email);
    void add(User user);
}
