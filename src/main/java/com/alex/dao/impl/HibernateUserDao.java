package com.alex.dao.impl;

import com.alex.dao.UserDao;
import com.alex.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class HibernateUserDao implements UserDao {
  @Autowired
  private SessionFactory sessionFactory;

  private Session currentSesion(){
    return sessionFactory.openSession();
  }

  @Override
  public List<User> getAll() {
    return currentSesion().createQuery("from User", User.class).list();
  }

  @Override
  public User getOne(String email) {
    Query<User> q = currentSesion().createQuery(
            "from User where email = :email",User.class);
    q.setParameter("email", email);
    return q.list().stream().findAny().orElse(null);
  }

  @Override
  public void add(User user) {
    currentSesion().save(user);
  }
}
