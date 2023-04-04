package com.sogondak.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sogondak.action.Action;
import com.sogondak.action.ActionForward;
import com.sogondak.board.dao.BoardDAO;

public class UpdateReplyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		ActionForward forward = new ActionForward();
		BoardDAO bdao = new BoardDAO();
		
		int boardnum = Integer.parseInt(request.getParameter("boardnum"));
		
		int replynum = Integer.parseInt(request.getParameter("replynum"));
		String replycontents = request.getParameter("reply"+replynum);  
		//여기textarea의 name을 이렇게 반복문으로 각각 저장해줬었다.  복습잘하자
		
		if(bdao.updateReply(replynum,replycontents) ) {
			System.out.println("댓글수정하기 성공");
			forward.setRedirect(true);
			forward.setPath("/BoardView.bo?boardnum="+boardnum);
		} else {
			//댓글 수정하기 실패시
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
