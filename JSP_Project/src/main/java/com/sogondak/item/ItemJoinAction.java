package com.sogondak.item;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sogondak.action.Action;
import com.sogondak.action.ActionForward;
import com.sogondak.item.dao.ItemBean;
import com.sogondak.item.dao.ItemDAO;

public class ItemJoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		ItemBean item = new ItemBean();
		item.setItemname(request.getParameter("itemname"));
		item.setPrice(request.getParameter("price"));
		item.setExplain(request.getParameter("explain"));
		item.setSpec(request.getParameter("spec"));
		item.setSize1(request.getParameter("size1"));
		item.setSize2(request.getParameter("size2"));
		item.setSize3(request.getParameter("size3"));
		item.setImgnumber(request.getParameter("imgnumber"));
		
		ItemDAO idao = new ItemDAO();
		
		ActionForward forward = new ActionForward();
		
		if(idao.join(item)) {
			System.out.println("아이템 등록성공");
			forward.setPath("/ItemList.it");
			forward.setRedirect(true);
			
		} else {
			System.out.println("아이템 등록 실패");
			forward.setPath("/shop/shop.jsp?joinFlag=false");
			forward.setRedirect(true);
		}
		
		
		return forward;
	}

}
