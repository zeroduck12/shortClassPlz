package com.sogondak.basket;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sogondak.action.Action;
import com.sogondak.action.ActionForward;
import com.sogondak.basket.dao.BasketBean;
import com.sogondak.basket.dao.BasketDAO;

public class BasketItemCntMinusAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		ActionForward forward = new ActionForward();
		
		BasketBean basket = new BasketBean();
		
		basket.setUserIDNumber(Integer.parseInt(request.getParameter("userIDNumber")));
		basket.setItemname(request.getParameter("itemname"));
		
		BasketDAO bdao = new BasketDAO();
		
		if(bdao.BasketItemCntMinus(basket)) {
			forward.setPath("/BasketView.bs?userIDNumber="+basket.getUserIDNumber());
			forward.setRedirect(false);
		}
		
		return forward;
	}

}
