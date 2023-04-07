<%@page import="com.sogondak.app.user.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
	String userid = request.getParameter("userid");
	
	UserDAO udao = new UserDAO();

	boolean DBHaveId = udao.checkId(userid);
	
	if(!DBHaveId){
		//회원가입 할 수 있는 경우
		out.print("ok");
	} else {
		//회원가입 불가 경우
		out.print("not_ok");
	}
%>