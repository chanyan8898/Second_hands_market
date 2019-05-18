package com.cczu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cczu.core.Goods;
import com.cczu.dao.GoodsDao;
import com.cczu.service.Imp.GoodsServiceImp;
@Service
public class goodsService implements GoodsServiceImp{

	@Autowired
	GoodsDao goodsDao;
	//获取最新商品
	@Override
	public List<Goods> getNewgoods() {

		return goodsDao.getNewgoods();
	}
	//获取热门商品
	@Override
	public List<Goods> getHotgoods() {

		return goodsDao.getHotgoods();
	}
	//获取竞价商品
	@Override
	public List<Goods> getCpgoods() {

		return goodsDao.getCpgoods();
	}
	//获取所有商品
	@Override
	public List<Goods> getAllGoods() {
		
		return goodsDao.getAllGoods();
	}
	@Override
	public List<Goods> searchGoods(String name) {

		return goodsDao.searchGoods(name);
	}
	@Override
	public List<Goods> searchCtg(Goods good) {
		
		return goodsDao.searchCtg(good);
	}
	@Override
	public Goods searchOneGood(Goods good) {
		
		return goodsDao.searchOneGood(good);
	}

}
