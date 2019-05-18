package com.cczu.dao;





import com.cczu.core.User;

public interface UserLoginDao {


	
	public User login(User user);

	public Boolean register(User user);

	public User checkRegister(User user);

}
