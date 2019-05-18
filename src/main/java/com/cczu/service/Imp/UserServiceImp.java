package com.cczu.service.Imp;



import org.springframework.stereotype.Service;

import com.cczu.core.User;



@Service
public interface UserServiceImp {
	//回显用户信息
	User searchUser(User user);
	//保存用户信息
	Boolean submitUser(User user);


}
