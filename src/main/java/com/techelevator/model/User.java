package com.techelevator.model;

import java.sql.Timestamp;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class User {
	@NotBlank
	@Size(min=5, max=32, message="Username cannnot be less than 5 or more than 32 characters!")
	
	private String userName;
	
	@Size(min=10, message="Password too short, must be at least 10")
	@Pattern.List({
		@Pattern(regexp=".*[a-z].*", message="Must have a lower case"),
		@Pattern(regexp=".*[A-Z].*", message="Must have a capital")
	})
	private String password;
	@NotBlank(message="Email is required") @Email(message="Not a valid Email address")
	private String email;
	@NotBlank(message="Email is required") @Email(message="Email address does not match")
	private String confirmEmail;

	private String role;

	private String confirmPassword;
	private boolean isadmin = false;
	private Timestamp userSince;
	
	
	public String getUserName() {
		return userName;
	}
	/**
	 * @return the role
	 */
	public String getRole() {
		return role;
	}
	/**
	 * @param role the role to set
	 */
	public void setRole(String role) {
		this.role = role;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getConfirmEmail() {
		return confirmEmail;
	}
	public void setConfirmEmail(String confirmEmail) {
		this.confirmEmail = confirmEmail;
	}
	public void setUserSince(Timestamp timestamp) {
		this.userSince = timestamp;
	}
	public Timestamp getUserSince() {
		return userSince;
	}
}
