package com.sogondak.app.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sogondak.action.ActionForward;

@WebServlet("*.us")
public class UserFrontController extends HttpServlet {

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
		case "/UserJoin.us" 	: forward = new UserJoinAction().execute(request, response);		break;
		case "/UserLoginOk.us"	: forward = new UserLoginOkAction().execute(request, response); 	break;
		case "/UserLogOut.us"	: forward = new UserLogOutAction().execute(request, response); 	break;
		
		}
		
		//전송에 대한 일괄처리
		if(forward != null) {
			if(forward.isRedirect() ) {
				//true : redirect
				response.sendRedirect(forward.getPath());
			} else {
				// false : forward
				RequestDispatcher disp = request.getRequestDispatcher(forward.getPath());
				disp.forward(request, response);
			}
		}
	}
}
