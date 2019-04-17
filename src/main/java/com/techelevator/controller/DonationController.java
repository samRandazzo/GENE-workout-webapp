package com.techelevator.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.model.Donation;
import com.techelevator.model.DonationDAO;

@Controller
public class DonationController {

	private DonationDAO donationDAO;

	@Autowired
	public DonationController(DonationDAO donationDAO) {
		this.donationDAO = donationDAO;
	}

	@RequestMapping(path = "/profile", method = RequestMethod.POST)
	public String addDonation(@Valid @ModelAttribute Donation donation, BindingResult result, RedirectAttributes flash,
			HttpSession session) {

		donationDAO.stats(donation.getMinutes(), donation.donationTotal());
		
		session.setAttribute("donation", donation.donationTotal());

		return "redirect:/profile";

	}

}
