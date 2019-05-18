package com.cczu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cczu.core.Category;
import com.cczu.core.Page;
import com.cczu.core.User;
import com.cczu.dao.ManagerDao;
import com.cczu.dao.UserLoginDao;
import com.cczu.service.Imp.ManageServiceImp;



@Service
public class ManagerService implements ManageServiceImp {

	@Autowired
	ManagerDao managerDao;
	
	//获取所有用户
	@Override
	public List<User> getAllUsers() {
		List<User> userList = managerDao.getAllUser();
		return userList;
	}

	//删除指定用户
	@Override
	public Boolean deteleUser(User user) {
		
		return managerDao.deleteUser(user);
	}
	
	//获取所有类别
	@Override
	public List<Category> getAllCategory() {
		
		List<Category> ctgList = managerDao.getAllCategory();
		return ctgList;
	}
	
	//删除商品类别
	@Override
	public Boolean deteleCtg(Category ctg) {
		
		return managerDao.deleteCtg(ctg);
	}
	//查询重复类别
	@Override
	public Category searchCtg(Category ctg) {
		return managerDao.searchCtg(ctg);
	}
	
	//改变商品类别状态
	@Override
	public Boolean changeCtgStatus(Category ctg) {
		return managerDao.changeCtgStatus(ctg);
	}
	//添加商品类别
	@Override
	public Boolean addCtg(Category ctg) {

		return managerDao.addCtg(ctg);
	}
	//修改商品类别
	@Override
	public Boolean edtCtg(Category ctg, String newName) {

		return managerDao.edtCtg(ctg,newName);
	}
}
