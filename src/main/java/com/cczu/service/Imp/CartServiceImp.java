package com.cczu.service.Imp;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cczu.core.Cart;

@Service
public interface CartServiceImp {
	//���빺�ﳵ
	Boolean addCart(Cart cart);

	//�жϹ��ﳵ�Ƿ����
	Cart checkGoods(Cart cart);
	
	//��ȡ�û����ﳵ��Ϣ
	List<Cart> takeGoods(Cart cart);
	
	//ɾ�����ﳵ��Ʒ
	Boolean delCart(Cart cart);


}
