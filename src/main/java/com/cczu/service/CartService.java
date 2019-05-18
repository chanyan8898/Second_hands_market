package com.cczu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cczu.core.Cart;
import com.cczu.dao.CartDao;
import com.cczu.service.Imp.CartServiceImp;
@Service
public class CartService implements CartServiceImp{

	@Autowired
	CartDao cartDao ;
	@Override
	public Boolean addCart(Cart cart) {

		return cartDao.addCart(cart);
	}
	@Override
	public Cart checkGoods(Cart cart) {
		
		return cartDao.checkGoods(cart);
	}
	@Override
	public List<Cart> takeGoods(Cart cart) {
		
		return cartDao.takeGoods(cart);
	}
	@Override
	public Boolean delCart(Cart cart) {
		
		return cartDao.delDao(cart);
	}

}
