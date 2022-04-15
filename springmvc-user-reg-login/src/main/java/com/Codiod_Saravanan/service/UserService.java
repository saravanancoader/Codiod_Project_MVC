package com.Codiod_Saravanan.service;

import com.Codiod_Saravanan.model.Login;
import com.Codiod_Saravanan.model.User;

public interface UserService {

  int register(User user);

  User validateUser(Login login);
}
