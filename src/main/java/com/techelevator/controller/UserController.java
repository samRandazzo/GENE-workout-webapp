package com.techelevator.controller;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.model.User;
import com.techelevator.model.UserDAO;

@Controller
public class UserController {
	
	private UserDAO userDAO;

	@Autowired
	public UserController(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	@RequestMapping(path="/home", method=RequestMethod.GET)
	public String getHome() {
		return "home";
	}
	
	@RequestMapping(path="/community", method=RequestMethod.GET)
	public String getCommunity() {
		return "community";
	}
	
	@RequestMapping(path="/howItWorks", method=RequestMethod.GET)
	public String getHowItWorks() {
		return "howItWorks";
	}
	
	@RequestMapping(path="leaderboard", method=RequestMethod.GET)
	public String displayLeaderboard() {
		return "leaderboard";
	}
	
	@RequestMapping(path="donations", method=RequestMethod.GET)
	public String displayDonations() {
		return "donations";
	}
	
	@RequestMapping(path="shop", method=RequestMethod.GET)
	public String displayShop() {
		return "shop";
	}
	@RequestMapping(path="/personaltraining", method=RequestMethod.GET)
	public String getPersonalTraining() {
		return "personaltraining";
	}

	@RequestMapping(path="signUp", method=RequestMethod.GET)
	public String displaySignUpForm(ModelMap modelHolder) {
		if( ! modelHolder.containsAttribute("user")) {
			modelHolder.addAttribute("user", new User());
		}
		return "newUser";
	}
	
	@RequestMapping(path="/signUp", method=RequestMethod.POST)
	public String createUser(@Valid @ModelAttribute User user, BindingResult result, RedirectAttributes flash, HttpSession session) {
	    
		if(result.hasErrors()) {
			flash.addFlashAttribute("user", user);
			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "user", result);
			return "redirect:/signUp";
		} 
		
		if(userDAO.searchForUsernameAndPassword(user.getUserName(), user.getPassword())) {
			session.setAttribute("message", "Username already exists");
			return "redirect:/signUp";
		
		} else {
			user.setUserSince(Timestamp.valueOf(LocalDateTime.now()));
			userDAO.saveUser(user.getUserName(), user.getPassword(), user.getEmail(), user.getUserSince());
		}
		return "redirect:/profile";
	}
	
	@RequestMapping(path="profile", method=RequestMethod.GET)
	public String displayProfilePage() {
		return "profile";
	}
	
	@RequestMapping(path="/administrator", method=RequestMethod.GET)
	public String displayAdministratorPage() {
		return "administrator";
	}
	@RequestMapping(path = "/userSearch", method = RequestMethod.GET)
	public String searchUsers(@RequestParam String search, ModelMap model) {
	    model.put("user", userDAO.getUserByUserName(search));
	    return "administrator";
	}

	@GetMapping("/deleteUser/{userName}")
	public String deleteUser(@PathVariable("userName")String userName) {
	    userDAO.deleteUser(userName);
	    return "redirect:/administrator";
	}
}
