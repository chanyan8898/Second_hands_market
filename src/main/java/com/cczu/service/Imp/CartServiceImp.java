package com.cczu.service.Imp;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cczu.core.Cart;

@Service
public interface CartServiceImp {
	//加入购物车
	Boolean addCart(Cart cart);

	//判断购物车是否存在
	Cart checkGoods(Cart cart);
	
	//拿取用户购物车信息
	List<Cart> takeGoods(Cart cart);
	
	//删除购物车商品
	Boolean delCart(Cart cart);


}
