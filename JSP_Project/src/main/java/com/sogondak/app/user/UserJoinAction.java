package com.sogondak.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sogondak.action.Action;
import com.sogondak.action.ActionForward;
import com.sogondak.app.user.dao.UserDAO;
import com.sogondak.app.user.dao.UserDTO;

public class UserJoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
	
		UserDTO user = new UserDTO();
		user.setUserid(request.getParameter("userid"));
		user.setUserpw(request.getParameter("userpw"));
		user.setUsername(request.getParameter("username"));
		user.setUserphone(request.getParameter("userphone"));
		user.setZipcode(request.getParameter("zipcode"));
		user.setAddr(request.getParameter("addr"));
		user.setAddrdetail(request.getParameter("addrdetail"));
		user.setAddretc(request.getParameter("addretc"));
		
		UserDAO udao = new UserDAO();
		
		ActionForward forward = new ActionForward();
		
		if(udao.join(user)) {
			System.out.println("가입성공");
			forward.setPath("/shop/index.jsp?joinFlag=true");
			forward.setRedirect(true);
		} else {
			System.out.println("가입실패");
			forward.setPath("/shop/joinview.jsp?joinFlag=false");
			forward.setRedirect(true);
		}
		
		return forward;
	}

}
