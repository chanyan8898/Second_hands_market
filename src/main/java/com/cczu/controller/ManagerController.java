package com.cczu.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cczu.core.Category;
import com.cczu.core.User;
import com.cczu.service.Imp.ManageServiceImp;

@Controller
@RequestMapping("/manager")
public class ManagerController {

	@Autowired
	ManageServiceImp managerService;
	//��ת���û��������
    @RequestMapping(value="/toManager")
    public String toLogin(Model model){
    	
    	return "manager/userManager";
    }
    //��ȡ�����û�
    @RequestMapping(value = "/toUserList")
    public String toUserList(Model model){
    	List<User> userList = managerService.getAllUsers();
    	model.addAttribute("userList", userList);
    	return "manager/userManager";    	
    } 
    //ɾ��ָ���û�
    @RequestMapping("deleteUser")
    @ResponseBody
    public String deleteUser(User user) {
    	Boolean result = managerService.deteleUser(user);
    	if(result) {
    		return "success";
    	}else {
    		return "false";
    	}
    }
    
    //��ȡ��Ʒ���
    @RequestMapping("/toCategory")
    public String toCategory(Model model){
    	List<Category> ctgList = managerService.getAllCategory();
    	model.addAttribute("ctgList", ctgList);
    	return "manager/categoryManager";    	
    }  
    //ɾ����Ʒ���
    @RequestMapping("deleteCtg")
    @ResponseBody
    public String deleteCtg(Category ctg) {
    	Boolean result = managerService.deteleCtg(ctg);
    	if(result) {
    		return "success";
    	}else {
    		return "false";
    	}
    }
    //�޸���Ʒ���
    @RequestMapping("edtCtg")
    @ResponseBody
    public String edtCtg(Category ctg,String newName) {
    	Boolean result = managerService.edtCtg(ctg,newName);
    	if(result) {
    		return "success";
    	}else {
    		return "false";
    	}
    }
    
    //�����Ʒ���
    @RequestMapping("addCtg")
    @ResponseBody
    public String addCtg(Category ctg) {
    	Category ctg1 = managerService.searchCtg(ctg);
    	Boolean result = false;
    	if(ctg1==null) {
    		 result = managerService.addCtg(ctg);
        	if(result) {
        		return "success";
        	}else {
        		return "false";
        	}
    	}else if(ctg1.getStatus()==1){
    		result = managerService.changeCtgStatus(ctg1);
        	if(result) {
        		return "success";
        	}else {
        		return "false";
        	}
    	}else {
    		return "repeat";
    	}
    }
    
}
