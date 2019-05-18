package com.cczu.dao;

import java.util.List;

import com.cczu.core.Cart;

public interface CartDao {

	Boolean addCart(Cart cart);

	Cart checkGoods(Cart cart);

	List<Cart> takeGoods(Cart cart);

	Boolean delDao(Cart cart);

}
