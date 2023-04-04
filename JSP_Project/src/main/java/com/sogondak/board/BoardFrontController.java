package com.sogondak.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sogondak.action.ActionForward;

@WebServlet("*.bo")
public class BoardFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		ActionForward forward = null;

		switch (requestURI) {
		case "/BoardWrite.bo":
			System.out.println("BoardWrite도착");
			forward = new ActionForward(true, "/shop/boardwrite.jsp");// 화면 이동만 하는 경우
			break;

		case "/BoardWriteOK.bo":
			forward = new BoardWriteOkAction().execute(request, response);// DB를 갔다오며 화면이동하는 경우
			break;

		case "/BoardList.bo":
			forward = new BoardListAction().execute(request, response);
			break;

		case "/BoardView.bo":
			forward = new BoardViewAction().execute(request, response);
			break;
			
		case "/AddReply.bo":
			forward = new AddReplyAction().execute(request, response);
			break;
		
		case "/UpdateReply.bo":
			forward = new UpdateReplyAction().execute(request, response);
			break;
		
		case "/DeleteReply.bo":
			forward = new DeleteReplyAction().execute(request, response);
			break;

		}

		// 전송에 대한 일괄처리
		if (forward != null) {
			if (forward.isRedirect()) {
				// true : redirect
				response.sendRedirect(forward.getPath());
			} else {
				// false : forward
				RequestDispatcher disp = request.getRequestDispatcher(forward.getPath());
				disp.forward(request, response);
			}
		}
	}

}
