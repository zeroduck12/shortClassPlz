package com.sogondak.basket;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sogondak.action.Action;
import com.sogondak.action.ActionForward;
import com.sogondak.basket.dao.BasketBean;
import com.sogondak.basket.dao.BasketDAO;

public class BasketAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		ActionForward forward = new ActionForward();
		
		BasketBean basket = new BasketBean();
		
		basket.setUserIDNumber(Integer.parseInt(request.getParameter("userIDNumber")));
		basket.setItemname(request.getParameter("itemname"));
		basket.setPrice(Integer.parseInt(request.getParameter("price")));
		basket.setHowmany(1);
		
		
		BasketDAO bdao = new BasketDAO();
		
		//현재 장바구니에 이미담겨있는지 확인. 있으면 alert창 뛰우고 없으면 추가하기
		if(bdao.alreadyHaveItem(basket)) {

			try {
				PrintWriter out = response.getWriter();
				out.println("<script>alert('장바구니에 이미 담겨져 있습니다.');history.back();</script>");
				out.flush();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			} else {	
					if(bdao.basketAdd(basket)) {
					System.out.println("장바구니 추가 성공");
					forward.setPath("/ItemList.it");
					forward.setRedirect(false);
					} else {
					System.out.println("장바구니 추가 실패");
					
					}
			
					}
		
		forward.setPath("/ItemList.it");
		forward.setRedirect(false);
		return forward;
	}

}
