package com.alex.dao.impl;

import com.alex.dao.UserDao;
import com.alex.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import java.util.List;


@Component
public class JdbcTemplateUserDao implements UserDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;


    public List<User> getAll()  {
        return jdbcTemplate.query(
                "select * from users",
                new BeanPropertyRowMapper<>(User.class));
    }
    public User getOne(String email){
        return jdbcTemplate.query("select *from users where email = ?",
                new Object[]{email}, new BeanPropertyRowMapper<>(User.class))
                .stream().findAny().orElse(null);
    }
    public  void add(User user) {
        jdbcTemplate.update("INSERT INTO users VALUE (?,?,?,?)",
                user.getName(),
                user.getSurname(),
                user.getEmail(),
                user.getSex());
    }
}
