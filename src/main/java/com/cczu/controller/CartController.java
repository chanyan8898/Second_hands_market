package com.cczu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cczu.core.Cart;
import com.cczu.core.Goods;
import com.cczu.service.Imp.CartServiceImp;
import com.cczu.service.Imp.GoodsServiceImp;

@Controller
@RequestMapping("/cart")
public class CartController {

	@Autowired
	CartServiceImp cartService;
	@Autowired
	GoodsServiceImp goodService;
	//添加购物车
	@RequestMapping("/addCart")
	@ResponseBody
	public String addCart(Cart cart){
		Boolean result = false;
		Cart cart1 = cartService.checkGoods(cart);
		if(cart1==null) {
			result = cartService.addCart(cart);
			if(result) {
	    		return "success";
	    	}else {
	    		return "false";
	    	}
		}else {
			return "repeat";
		}
	}
	//进入购物车
	@RequestMapping("/toCart")
	public String toCart(Cart cart, Model model){
		List<Cart> cart1 = cartService.takeGoods(cart);
			model.addAttribute("cart", cart1);
			List<Goods> hotGoodsList = goodService.getHotgoods();
	    	model.addAttribute("hotGoodsList", hotGoodsList);
			return "cart";
	}
	//删除购物车
	@RequestMapping("/delCart")
	@ResponseBody
	public String delCart(Cart cart){
		Boolean result = false;
		result = cartService.delCart(cart);
		if(result) {
	    	return "success";
	    }else {
	    	return "false";
	    }
	}
	
}
