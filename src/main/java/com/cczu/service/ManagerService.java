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
	
	//��ȡ�����û�
	@Override
	public List<User> getAllUsers() {
		List<User> userList = managerDao.getAllUser();
		return userList;
	}

	//ɾ��ָ���û�
	@Override
	public Boolean deteleUser(User user) {
		
		return managerDao.deleteUser(user);
	}
	
	//��ȡ�������
	@Override
	public List<Category> getAllCategory() {
		
		List<Category> ctgList = managerDao.getAllCategory();
		return ctgList;
	}
	
	//ɾ����Ʒ���
	@Override
	public Boolean deteleCtg(Category ctg) {
		
		return managerDao.deleteCtg(ctg);
	}
	//��ѯ�ظ����
	@Override
	public Category searchCtg(Category ctg) {
		return managerDao.searchCtg(ctg);
	}
	
	//�ı���Ʒ���״̬
	@Override
	public Boolean changeCtgStatus(Category ctg) {
		return managerDao.changeCtgStatus(ctg);
	}
	//�����Ʒ���
	@Override
	public Boolean addCtg(Category ctg) {

		return managerDao.addCtg(ctg);
	}
	//�޸���Ʒ���
	@Override
	public Boolean edtCtg(Category ctg, String newName) {

		return managerDao.edtCtg(ctg,newName);
	}
}
