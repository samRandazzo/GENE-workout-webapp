package com.techelevator.model;

import java.sql.Timestamp;

public interface UserDAO {

	public void saveUser(String userName, String password, String email, Timestamp since);

	public boolean searchForUsernameAndPassword(String userName, String password);

	public void updatePassword(String userName, String password);

	public Object getUserByUserName(String userName);
	
	public void deleteUser(String userName);
	
	public boolean getAdminStatus(String userName);

}
