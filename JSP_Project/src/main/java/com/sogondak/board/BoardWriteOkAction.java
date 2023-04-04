package com.sogondak.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sogondak.action.Action;
import com.sogondak.action.ActionForward;
import com.sogondak.board.dao.BoardDAO;
import com.sogondak.board.dao.BoardBean;

public class BoardWriteOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		ActionForward forward = new ActionForward();
		BoardDAO bdao = new BoardDAO();
		
		BoardBean board = new BoardBean();
		
		String boardtitle = request.getParameter("boardtitle");
		String boardcontents = request.getParameter("boardcontents");
		String username = request.getParameter("username");
		board.setBoardtitle(boardtitle);
		board.setBoardcontents(boardcontents);
		board.setUsername(username);
		
//		board.setBoardtitle(request.getParameter("boardtitle"));
//		board.setBoardcontents(request.getParameter("boardcontents"));
//		board.setUsername(request.getParameter("username"));
		
		if(bdao.insertBoard(board)) {
			//성공시
			System.out.println("글 등록 성공");
			forward.setPath("/BoardList.bo");
			
		} else {
			System.out.println("글 등록 실패");
			forward.setPath("/shop/contact.jsp");
		}
		
		forward.setRedirect(true);
		
		return forward;
		
	}
}
