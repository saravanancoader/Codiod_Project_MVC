package com.Codiod_Saravanan.service;

import com.Codiod_Saravanan.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;

import com.Codiod_Saravanan.model.Login;
import com.Codiod_Saravanan.model.User;

public class UserServiceImpl implements UserService {

  @Autowired
  public UserDao userDao;

  public int register(User user)
  {
    return userDao.register(user);
  }

  public User validateUser(Login login) {
    return userDao.validateUser(login);
  }

}
