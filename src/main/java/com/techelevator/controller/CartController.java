package com.techelevator.controller;

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.model.CartBean;
import com.techelevator.model.Item;



public class CartController extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		
		String strAction = request.getParameter("action");
		
		if(strAction!=null && !strAction.equals("")) {
			if(strAction.contentEquals("add")) {
				addToCart(request);
			}else if (strAction.equals("Update")) {
				updateCart(request);
			}else if (strAction.equals("Delete")) {
				deleteCart(request);
			}
		}
		response.sendRedirect("../ShoppingCart.jsp");
	}

	private void deleteCart(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String strItemIndex = request.getParameter("itemIndex");
		CartBean cartBean = null;
		
		Object objCartBean = session.getAttribute("cart");
		if(objCartBean != null) {
			cartBean = new CartBean();
		}
		cartBean.deleteCartItem(strItemIndex);
	}

	private void updateCart(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String strQuantity = request.getParameter("quantity");
		String strItemIndex = request.getParameter("itemIndex");
		
		CartBean cartBean = null;
		
		Object objCartBean = session.getAttribute("cart");
		if(objCartBean !=null) {
		} else {
			cartBean = new CartBean();
		}
		cartBean.updateCartItem(strItemIndex, strQuantity);
	}

	private void addToCart(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String idNum = request.getParameter("id");
		String strName = request.getParameter("name");
		String strDescription =request.getParameter("description");
		String strPrice = request.getParameter("price");
		String strQuantity = request.getParameter("quantity");
		
		CartBean cartBean = null;
		
		Object objCartBean = session.getAttribute("cart");
		
		if(objCartBean != null) {
			cartBean = (CartBean) objCartBean;
		} else {
			cartBean = new CartBean();
			session.setAttribute("cart", cartBean);
		}
		cartBean.addCartItem(idNum, strName, strDescription, strPrice, strQuantity);
	}
}
