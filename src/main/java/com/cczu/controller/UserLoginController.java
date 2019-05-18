package com.cczu.controller;






import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.druid.support.json.JSONUtils;
import com.alibaba.fastjson.JSON;
import com.cczu.core.User;
import com.cczu.service.Imp.UserLoginServiceImp;

@Controller
//@SessionAttributes("isLogin")
@RequestMapping("/user")
public class UserLoginController {

	@Autowired
	UserLoginServiceImp userLoginService;
	//��ת����¼
    @RequestMapping(value="/toLogin")
    public String toLogin(Model model){
    	
    	return "login";
    }
    //��¼
    @ResponseBody
    @RequestMapping("/login")	
    public User checklogin( User user,HttpSession session){
        System.out.println(user.getUsername());
        User user1 =userLoginService.login(user);
        if(user1!=null) {
        	session.setAttribute("user_session", user1);
            session.setAttribute("user_session_json", JSON.toJSONString(user1));
            return user1;
        }else {
            return null;
        }   
    }
    //ע��
    @ResponseBody
    @RequestMapping("/register")
    public String register(User user) {
    	String birthday = user.getBirthday();
    	Boolean result = false;
    	User user1 = userLoginService.checkRegister(user);
    	if(user1==null) {
    		result = userLoginService.register(user);
        	if(result) {
        		return "success";
        	}else {
        		return "false";
        	}
    	}else {
    		return "false";
    	}
    	
    	
    }
    //ע����¼
  	@RequestMapping("/outLogin")
  	public String outLogin(HttpSession session){
  		//ͨ��session.invalidata()������ע����ǰ��session
  		session.invalidate();
  		return "begin";
  	}
    //��ת����ҳ
    @RequestMapping(value="/toIndexDoor")
    public String toIndexDoor(Model model){
    	
    	return "begin";
    }

}
