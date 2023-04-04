package com.sogondak.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sogondak.action.Action;
import com.sogondak.action.ActionForward;
import com.sogondak.board.dao.BoardDAO;

public class BoardViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		BoardDAO bdao = new BoardDAO();
		
		int boardnum = Integer.parseInt(request.getParameter("boardnum"));
		
		//업데이트 하는 부분을 추가한다. 1번째 단계
		bdao.updateReadCount(boardnum);
		//
		
		//넘어갈 때 댓글리스트도 같이넘겨볼까? 여기가 1단계 댓글조회
		request.setAttribute("replylist", bdao.getReplys(boardnum));
		//
		
		request.setAttribute("board", bdao.getDetail(boardnum));
		forward.setPath("/shop/boardview.jsp");
		forward.setRedirect(false);
		
		return forward;
	}
	
	
	
	
	
}





