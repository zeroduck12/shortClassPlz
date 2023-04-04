package com.sogondak.board.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sogondak.mybatis.SqlMapConfig;

public class BoardDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public BoardDAO() {
		sqlSession = factory.openSession(true);
	}

	public boolean insertBoard(BoardBean board) {
		boolean result = false;
		
		if(sqlSession.insert("Board.insertBoard", board) == 1) {
			// insert 성공
			result = true;
		}
		
		return result;
	}

	public List<BoardBean> getBoardList(int startRow, int endRow) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		
		List<BoardBean> boardList =
				sqlSession.selectList("Board.getBoardList", datas);
		
		return boardList;
	}

	public int getBoardCnt() {
		return sqlSession.selectOne("Board.getBoardCnt");
	}

	
	public BoardBean getDetail(int boardnum) {
		return sqlSession.selectOne("Board.getDetail", boardnum);
	}

	//업데이트 하는 부분을 추가한다. 2번째 단계
	public void updateReadCount(int boardnum) {
		sqlSession.update("Board.updateReadCount", boardnum);
	}
	//

	public boolean insertReply(ReplyBean reply) {
		boolean result = false;
		
		if(sqlSession.insert("Board.insertReply", reply) == 1) {
			// insert 성공
			result = true;
		}
		return result;
	}

	public List<ReplyBean> getReplys(int boardnum) {
		
		List<ReplyBean> list = new ArrayList<>();
		
		list =sqlSession.selectList("Board.getReplys", boardnum);
		
		return list;
		
	}


	public boolean updateReply(int replynum, String replycontents) {
		boolean result = false;
		
		HashMap<String, Object> datas = new HashMap<>();
		datas.put("replynum", replynum);
		datas.put("replycontents", replycontents);
		if(sqlSession.update("Board.updateReply", datas) == 1) {
			result = true;
		}
		return result;
	}

	public boolean deleteReply(int replynum) {
		boolean result = false;
		
		if(sqlSession.delete("Board.deleteReply", replynum)==1) {
			result = true;
		}
		
		return result;
	}

	
}

