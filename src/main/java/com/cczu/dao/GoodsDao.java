package com.cczu.dao;

import java.util.List;

import com.cczu.core.Goods;

public interface GoodsDao {

	public List<Goods> getNewgoods();
	public List<Goods> getHotgoods();
	public List<Goods> getCpgoods();
	public List<Goods> getAllGoods();
	public List<Goods> searchGoods(String name);
	public List<Goods> searchCtg(Goods good);
	public Goods searchOneGood(Goods good);

}
