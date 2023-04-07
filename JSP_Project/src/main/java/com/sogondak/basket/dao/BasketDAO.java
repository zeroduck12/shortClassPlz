package com.sogondak.basket.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sogondak.mybatis.SqlMapConfig;

public class BasketDAO {

	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public BasketDAO() {
		sqlSession = factory.openSession(true);
	}

	public int getBasketCnt(int userIDNumber) {
		return sqlSession.selectOne("Basket.getBasketCnt",userIDNumber);
	}

	public List<BasketBean> getBasketList(int startRow, int endRow, int userIDNumber) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		datas.put("userIDNumber", userIDNumber);
	
		List<BasketBean> basketList = sqlSession.selectList("Basket.getBasketList",datas);
	
		return basketList;
	}

	public boolean basketAdd(BasketBean basket) {
		boolean result = false;
		if(sqlSession.insert("Basket.basketAdd",basket)==1) {
			result = true;
		}
		
		return result;
	}

	public boolean alreadyHaveItem(BasketBean basket) {

		boolean result = false;
		
		HashMap<Object, Object> datas = new HashMap<>();
		
		datas.put("userIDNumber", basket.getUserIDNumber());
		datas.put("itemname", basket.getItemname());
		
		if((Integer)sqlSession.selectOne("Basket.alreadyHaveItem",datas)>=1) {
			result = true;
		}
		
		return result;
	}
	
	
}
