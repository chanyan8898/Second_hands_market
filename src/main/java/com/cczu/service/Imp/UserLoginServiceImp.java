package com.cczu.service.Imp;



import org.springframework.stereotype.Service;


import com.cczu.core.User;

@Service("userLoginService")
public interface UserLoginServiceImp {

	 User login(User user);

	Boolean register(User user);

	User checkRegister(User user);

}
