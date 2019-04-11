package com.techelevator.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.techelevator.model.Products;

@Controller
@RequestMapping(value = "product")
public class ProductController {
 
	@RequestMapping("/shop")
	public String showProducts(HttpServletRequest request) {
		request.setAttribute("shop", getProducts());
		return "shop";
	}
	private List<Products> getProducts(){
		List<Products> newClothing = new ArrayList<Products>();
		return newClothing;
	}
}