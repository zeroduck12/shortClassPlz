package com.sogondak.basket;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sogondak.action.ActionForward;

@WebServlet("*.bs")
public class BasketFrontController extends HttpServlet {

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
		case "/BasketView.bs" 	: forward = new BasketViewAction().execute(request, response);		break;
		case "/BasketAdd.bs" 	: forward = new BasketAddAction().execute(request, response);		break;
		case "/BasketItemCntMinus.bs" 	: forward = new BasketItemCntMinusAction().execute(request, response);		break;
		case "/BasketItemCntPlus.bs" 	: forward = new BasketItemCntPlusAction().execute(request, response);		break;
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
