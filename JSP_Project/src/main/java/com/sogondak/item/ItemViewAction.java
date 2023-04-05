package com.sogondak.item;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sogondak.action.Action;
import com.sogondak.action.ActionForward;
import com.sogondak.item.dao.ItemDAO;

public class ItemViewAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		ActionForward forward = new ActionForward();
		ItemDAO idao = new ItemDAO();
		
		
		String itemname = request.getParameter("itemname");
		
		request.setAttribute("item", idao.getItemDetail(itemname));
		forward.setPath("shop/itemview.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
