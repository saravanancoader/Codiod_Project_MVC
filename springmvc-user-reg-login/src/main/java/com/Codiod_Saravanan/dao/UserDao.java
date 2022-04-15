package com.Codiod_Saravanan.dao;

import com.Codiod_Saravanan.model.Login;
import com.Codiod_Saravanan.model.User;

public interface UserDao {

  int register(User user);

  User validateUser(Login login);
}
