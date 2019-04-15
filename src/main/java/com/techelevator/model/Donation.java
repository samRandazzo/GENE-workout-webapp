package com.techelevator.model;


public class Donation {
	
	private int minutes;
	
	private float donation;

	public int getMinutes() {
		return minutes;
	}

	public void setMinutes(int minutes) {
		this.minutes = minutes;
	}

	public float getDonation() {
		return donation;
	}

	public void setDonation(float donation) {
		this.donation = donation;
	}
	
	
	public float donationTotal() {
	
	float donation = (float) .50;
	boolean fullHour = false;
	boolean halfHour = false;
	float totalDonation = 0;
	if(fullHour == true) {
		totalDonation = donation + donation;
		return totalDonation;
	} else if (halfHour ==  true) {
		totalDonation = donation;
	}
	return totalDonation;
	}
}
