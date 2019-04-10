package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

public class ProductModel {
	
	private List<Product> products;
	
	public ProductModel() {
		this.products = new ArrayList<Product>();
		this.products.add(new Product("01", "Shirt", "image.png", 20.00, "size" ));
	}
	
	public List<Product> findAll(){
		return this.products;
	}
	
	public Product find(String id) {
		for (Product product : this.products) {
			if (product.getId().equalsIgnoreCase(id)) {
				return product;
			}
		}
		return null;
	}
	
}
