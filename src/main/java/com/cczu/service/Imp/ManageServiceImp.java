package com.cczu.service.Imp;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cczu.core.Category;
import com.cczu.core.Page;
import com.cczu.core.User;

@Service
public interface ManageServiceImp{
	//获取所有用户
		public List<User> getAllUsers();

		public Boolean deteleUser(User user);

		public List<Category> getAllCategory();

		public Boolean deteleCtg(Category ctg);

		public Category searchCtg(Category ctg);

		public Boolean changeCtgStatus(Category ctg1);

		public Boolean addCtg(Category ctg);

		public Boolean edtCtg(Category ctg, String newName);

}
