package com.cczu.service.Imp;



import org.springframework.stereotype.Service;

import com.cczu.core.User;



@Service
public interface UserServiceImp {
	//�����û���Ϣ
	User searchUser(User user);
	//�����û���Ϣ
	Boolean submitUser(User user);


}
