package com.cczu.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.druid.support.json.JSONUtils;
import com.cczu.core.User;
import com.cczu.service.Imp.UserServiceImp;

import net.sf.json.JSON;



@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserServiceImp userService;
	
	//��ת����������
    @RequestMapping(value="/touserCenter")
    public String toIndexDoor(Model model,User user){
    	User user1 = userService.searchUser(user);
    
    	model.addAttribute("user", user1);
    	return "user/userCenter";
    }
    //�����û���Ϣ
    @RequestMapping("submitUser")
    @ResponseBody
    public String submitUser(User user) {
    	Boolean result = userService.submitUser(user);
    	if(result) {
    		return "success";
    	}else {
    		return "false";
    	}
    }
    

}
