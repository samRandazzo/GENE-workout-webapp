package com.techelevator.model;

public class Item {
	private Product product;
	private int quantity;
	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Item() {
		
	}
	public Item(Product product, int quanitity) {
		this.product = product;
		this.quantity = quanitity;
	}
	
}
