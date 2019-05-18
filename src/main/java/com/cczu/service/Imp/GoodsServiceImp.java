package com.cczu.service.Imp;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cczu.core.Goods;

@Service
public interface GoodsServiceImp {

	//��ȡ������Ʒ
	List<Goods> getNewgoods();
	//��ȡ������Ʒ
	List<Goods> getHotgoods();
	//��ȡ������Ʒ
	List<Goods> getCpgoods();
	//��ȡ������Ʒ
	List<Goods> getAllGoods();
	//������Ʒ
	List<Goods> searchGoods(String name);
	//����ȡ��Ʒ
	List<Goods> searchCtg(Goods good);
	//��������ҳ
	Goods searchOneGood(Goods good);

}
