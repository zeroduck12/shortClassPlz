package com.sogondak.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sogondak.action.Action;
import com.sogondak.action.ActionForward;
import com.sogondak.app.user.dao.UserDAO;

public class UserLoginOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
	
		
		UserDAO udao = new UserDAO();
		
		ActionForward forward = new ActionForward();
		
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		
		if(udao.login(userid,userpw)) {
			
			request.getSession().setAttribute("userIsLogin", udao.userIsLogin(userid));
			request.getSession().setMaxInactiveInterval(60*30);
			
			
			forward.setPath("/shop/index.jsp?loginFlag=true");
		} else {
			forward.setPath("/shop/loginOrJoin.jsp?loginFlag=false");
		}
		
		forward.setRedirect(true);
		return forward;
	}

	
	
}
