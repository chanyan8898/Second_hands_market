package com.cczu.dao;

import com.cczu.core.User;

public interface UserDao {

	User searchUser(User user);

	Boolean submitUser(User user);

}
