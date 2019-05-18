package com.cczu.controller;

import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cczu.core.Cart;
import com.cczu.core.Category;
import com.cczu.core.Goods;
import com.cczu.core.User;
import com.cczu.service.Imp.CartServiceImp;
import com.cczu.service.Imp.GoodsServiceImp;
import com.cczu.service.Imp.ManageServiceImp;
import com.cczu.service.Imp.UserServiceImp;

@Controller
@RequestMapping("/goods")
public class GoodsController {

	@Autowired
	GoodsServiceImp goodService;
	@Autowired
	ManageServiceImp managerService;
	@Autowired
	UserServiceImp userService;
	@Autowired
	CartServiceImp cartService;
	
	
	//��ȡ��ҳ��Ʒ
	@RequestMapping("/getGoods")
	public String getGoods(Model model, User user) {
		Cart cart = new Cart();
		List<Goods> newGoodsList = goodService.getNewgoods();
		List<Goods> hotGoodsList = goodService.getHotgoods();
		List<Goods> cpGoodsList = goodService.getCpgoods();
		List<Category> ctgList = managerService.getAllCategory();
		if(user.getUsername()!=null) {
			User newUser = userService.searchUser(user);
			cart.setId(newUser.getId());
			List<Cart> cart1 = cartService.takeGoods(cart);
			model.addAttribute("cart", cart1); 
		}
    	model.addAttribute("ctgList", ctgList);
    	model.addAttribute("newGoodsList", newGoodsList);
    	model.addAttribute("hotGoodsList", hotGoodsList);
    	model.addAttribute("cpGoodsList", cpGoodsList);
    	return "index";
	}
	//��ת������Ʒҳ��
	@RequestMapping(value="/toAllProduct")
    public String toAllProduct(Model model,User user){
		Cart cart = new Cart();
		List<Goods> goodsList = goodService.getAllGoods();
		model.addAttribute("goodsList", goodsList);
		List<Category> ctgList = managerService.getAllCategory();
    	model.addAttribute("ctgList", ctgList);
    	if(user.getUsername()!="") {
			User newUser = userService.searchUser(user);
			cart.setId(newUser.getId());
			List<Cart> cart1 = cartService.takeGoods(cart);
			model.addAttribute("cart", cart1);
		}
    	return "allproduct";
    }
	//��ȡ������Ʒ
	@RequestMapping("/getNewGoods")
	public String getNewGoods(Model model,User user) {
		Cart cart = new Cart();
		List<Category> ctgList = managerService.getAllCategory();
    	model.addAttribute("ctgList", ctgList);
		List<Goods> newGoodsList = goodService.getNewgoods();
    	model.addAttribute("goodsList", newGoodsList);
    	if(user.getUsername()!="") {
			User newUser = userService.searchUser(user);
			cart.setId(newUser.getId());
			List<Cart> cart1 = cartService.takeGoods(cart);
			model.addAttribute("cart", cart1);
		}
    	return "allproduct";
	}
	//��ȡ������Ʒ
	@RequestMapping("/getCpGoods")
	public String getCpGoods(Model model,User user) {
		Cart cart = new Cart();
		List<Category> ctgList = managerService.getAllCategory();
    	model.addAttribute("ctgList", ctgList);
		List<Goods> cpGoodsList = goodService.getCpgoods();
    	model.addAttribute("goodsList", cpGoodsList);
    	if(user.getUsername()!="") {
			User newUser = userService.searchUser(user);
			cart.setId(newUser.getId());
			List<Cart> cart1 = cartService.takeGoods(cart);
			model.addAttribute("cart", cart1);
		}
    	return "allproduct";
	}
	//������Ʒ
	@RequestMapping("/searchGoods")
	@ResponseBody
	public List<Goods> searchGoods(Model model,String name) {
		List<Goods> goodsList = goodService.searchGoods(name);
    	model.addAttribute("goodsList", goodsList);

		
		return goodsList;
		
	}
	//��ת��������Ʒҳ��
	@RequestMapping("/toSearch")
	public String toSearch(Model model,String name) {
		List<Goods> goodsList = goodService.searchGoods(name);
    	model.addAttribute("goodsList", goodsList);
		List<Category> ctgList = managerService.getAllCategory();
    	model.addAttribute("ctgList", ctgList);
		
		return "allproduct";
		
	}
	//����ѯ��Ʒ
	@RequestMapping("/searchCtg")
	public String searchCtg(Model model,Goods good,User user) {
		Cart cart = new Cart();
		List<Goods> goodsList = goodService.searchCtg(good);
    	model.addAttribute("goodsList", goodsList);
		List<Category> ctgList = managerService.getAllCategory();
    	model.addAttribute("ctgList", ctgList);
    	if(user.getUsername()!="") {
    		User newUser = userService.searchUser(user);
			cart.setId(newUser.getId());
			List<Cart> cart1 = cartService.takeGoods(cart);
			model.addAttribute("cart", cart1);
		}
		return "allproduct";
		
	}
	//��ת������ҳ
	@RequestMapping("/toDetail")
	public String toDetail(Model model,Goods good,User user) {
		Cart cart = new Cart();
		Goods good1 = goodService.searchOneGood(good);
    	model.addAttribute("goods", good1);
		List<Category> ctgList = managerService.getAllCategory();
    	model.addAttribute("ctgList", ctgList);
    	List<Goods> hotGoodsList = goodService.getHotgoods();
    	model.addAttribute("hotGoodsList", hotGoodsList);
    	if(user.getId()!=0) {
			cart.setId(user.getId());
			List<Cart> cart1 = cartService.takeGoods(cart);
			model.addAttribute("cart", cart1);
		}
		return "productdetail";
		
	}


}
