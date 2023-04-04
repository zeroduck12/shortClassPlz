package com.sogondak.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sogondak.action.Action;
import com.sogondak.action.ActionForward;
import com.sogondak.board.dao.BoardDAO;
import com.sogondak.board.dao.ReplyBean;

public class AddReplyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		ActionForward forward = new ActionForward();
		BoardDAO bdao = new BoardDAO();
		ReplyBean reply = new ReplyBean();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String replycontents = request.getParameter("replycontents");
		int boardnum = Integer.parseInt(request.getParameter("boardnum"));
		
		reply.setUsername(username);
		reply.setPassword(password);
		reply.setReplycontents(replycontents);
		reply.setBoardnum(boardnum);
		
		if(bdao.insertReply(reply)) {
			//댓글쓰기 성공시
			System.out.println("댓글쓰기 성공");
			forward.setRedirect(true);
			forward.setPath("/BoardView.bo?boardnum="+boardnum);
		} else {
			//댓글 쓰기 실패시
			try {
				forward.setRedirect(false);
				PrintWriter out = response.getWriter();
				out.println("<script>alert('오류발생');history.back();</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		

		
		return forward;
		
	}

}
