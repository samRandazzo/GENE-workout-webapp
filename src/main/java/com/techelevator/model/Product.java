package com.techelevator.model;

public class Product {

	private String id;
	private String name;
	private String photo;
	private double price;
	private String size;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public Product() {
		
	}
	public Product(String id, String name, String photo, double price, String size) {
		this.id = id;
		this.name = name;
		this.photo =photo;
		this.price = price;
		this.size = size;
		
	}
}
