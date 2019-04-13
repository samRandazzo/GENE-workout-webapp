package com.techelevator.model;

import java.util.ArrayList;

public class CartBean {
	private ArrayList<Item> allCartItems = new ArrayList<Item>();
	private double orderTotal;
	
	public int getLineItemCount() {
		return allCartItems.size();
	}
	
	public void deleteCartItem(String strItemIndex) {
		int index = 0;
		try {
			index = Integer.parseInt(strItemIndex);
			allCartItems.remove(index -1);
			calculateOrderTotal();
		} catch(NumberFormatException nfe) {
			System.out.println("Error occured in deleting item: " + nfe.getMessage());
			nfe.printStackTrace();
		}
	}
	public void addCartItem(String idNum, String strName, String strDescription, String strPrice, String strQuantity) {
		double totalCost = 0.0;
		double unitPrice =0.0;
		int quantity = 0;
		
		
		Item cartItems = new Item();
		try {
			unitPrice = Double.parseDouble(strPrice);
			quantity = Integer.parseInt(strQuantity);
			
		if(quantity>0) {
			totalCost = unitPrice * quantity;
			cartItems.setId(idNum);
			cartItems.setName(strName);
			cartItems.setDescription(strDescription);
			cartItems.setPrice(unitPrice);
			cartItems.setQuantity(quantity);
			cartItems.setTotalCost(totalCost);
			allCartItems.add(cartItems);
			calculateOrderTotal();
		}
		} catch(NumberFormatException nfe) {
			System.out.println("Error occured in parasing items: " + nfe.getMessage());
			nfe.printStackTrace();
		}
	}
	public void updateCartItem(String strItemIndex, String strQuantity) {
		double totalCost = 0.0;
		double unitCost = 0.0;
		int quantity = 0;
		int itemIndex = 0;
		Item cartItem = null;
		try {
			itemIndex = Integer.parseInt(strItemIndex);
			quantity =Integer.parseInt(strQuantity);
			if(quantity>0) {
				cartItem = (Item)allCartItems.get(itemIndex -1);
				unitCost = cartItem.getPrice();
				totalCost = unitCost*quantity;
				cartItem.setQuantity(quantity);
				cartItem.setTotalCost(totalCost);
			}
		} catch(NumberFormatException nfe) {
			System.out.println("Error occured in updating cart: " + nfe.getMessage());
			nfe.printStackTrace();
		}
	}
	
	public Item getCartItem(int itemIndex) {
		Item cartItem = null;
		if(allCartItems.size()>itemIndex) {
			cartItem = (Item) getAllCartItems().get(itemIndex);
		}
		return cartItem;
	}
	public void addCartItem(Item cartItems) {
		allCartItems.add(cartItems);
	}
	public ArrayList<Item> getAllCartItems() {
		return allCartItems;
	}

	public void setAllCartItems(ArrayList<Item> allCartItems) {
		this.allCartItems = allCartItems;
	}

	public double getOrderTotal() {
		return orderTotal;
	}

	public void setOrderTotal(double orderTotal) {
		this.orderTotal = orderTotal;
	}

	protected void calculateOrderTotal() {
		double total = 0;
		for(int counter= 0; counter < allCartItems.size(); counter++) {
			Item cartItem = (Item) allCartItems.get(counter);
			total+=cartItem.getTotalCost();
		}
		setOrderTotal(total);
	}

	
}
