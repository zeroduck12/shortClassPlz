package com.sogondak.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sogondak.action.Action;
import com.sogondak.action.ActionForward;

public class UserLogOutAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		ActionForward forward = new ActionForward();
		
		request.getSession().invalidate();
		forward.setPath("/shop/index.jsp");
		
		forward.setRedirect(true);
		
		return forward;
	}

}
