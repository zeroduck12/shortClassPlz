package com.sogondak.item.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sogondak.board.dao.BoardBean;
import com.sogondak.mybatis.SqlMapConfig;

public class ItemDAO {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public ItemDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public boolean join(ItemBean item) {
		boolean result = false;
		if(sqlsession.insert("Item.join",item)==1) {
			result = true;
		}
		return result;
	}

	public int getItemCnt() {
		return sqlsession.selectOne("Item.getItemCnt");
	}

	public List<ItemBean> getItemList(int startRow, int endRow) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		
		List<ItemBean> itemList =
				sqlsession.selectList("Item.getItemList", datas);
		
		return itemList;
	}
	
	
}
