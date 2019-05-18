package com.cczu.service.Imp;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cczu.core.Goods;

@Service
public interface GoodsServiceImp {

	//获取最新商品
	List<Goods> getNewgoods();
	//获取热门商品
	List<Goods> getHotgoods();
	//获取竞价商品
	List<Goods> getCpgoods();
	//获取所有商品
	List<Goods> getAllGoods();
	//搜索商品
	List<Goods> searchGoods(String name);
	//类别获取商品
	List<Goods> searchCtg(Goods good);
	//进入详情页
	Goods searchOneGood(Goods good);

}
