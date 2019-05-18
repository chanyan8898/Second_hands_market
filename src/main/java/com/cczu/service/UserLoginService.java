package com.cczu.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.cczu.core.User;
import com.cczu.dao.UserLoginDao;
import com.cczu.service.Imp.UserLoginServiceImp;
@Service
public class UserLoginService implements UserLoginServiceImp {
	@Autowired
	UserLoginDao userLoginDao;


	public User login(User user) {
	        return userLoginDao.login(user);
	    }


	@Override
	public Boolean register(User user) {
		
		
		return userLoginDao.register(user);

		
	}


	@Override
	public User checkRegister(User user) {
		// TODO Auto-generated method stub
		return userLoginDao.checkRegister(user);
	}

}
