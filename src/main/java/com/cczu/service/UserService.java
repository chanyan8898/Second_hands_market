package com.cczu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cczu.core.User;
import com.cczu.dao.UserDao;
import com.cczu.service.Imp.UserServiceImp;
@Service
public class UserService implements UserServiceImp{

	@Autowired
	UserDao userDao;
	@Override
	public User searchUser(User user) {
		
		return userDao.searchUser(user);
	}
	@Override
	public Boolean submitUser(User user) {
		
		return userDao.submitUser(user);
	}

}
