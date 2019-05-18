package com.cczu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cczu.core.Category;
import com.cczu.core.User;

public interface ManagerDao {

	List<User> getAllUser();

	Boolean deleteUser(User user);

	List<Category> getAllCategory();

	Boolean deleteCtg(Category ctg);

	Category searchCtg(Category ctg);

	Boolean changeCtgStatus(Category ctg);

	Boolean addCtg(Category ctg);

	Boolean edtCtg(@Param("ctg")Category ctg, @Param("newName")String newName);

}
