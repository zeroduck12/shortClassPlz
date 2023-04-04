package com.sogondak.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sogondak.action.Action;
import com.sogondak.action.ActionForward;
import com.sogondak.board.dao.BoardDAO;

public class DeleteReplyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		BoardDAO bdao = new BoardDAO();
		
		int replynum = Integer.parseInt(request.getParameter("replynum"));
		String boardnum = request.getParameter("boardnum");
		
		if(bdao.deleteReply(replynum)) {
			forward.setRedirect(true);
			forward.setPath("/BoardView.bo?boardnum="+boardnum);
		} 
		
		return forward;
	}

}
