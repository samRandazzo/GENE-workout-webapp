package com.techelevator.model;

import java.io.Console;
import java.sql.Timestamp;

import javax.sql.DataSource;

import org.bouncycastle.util.encoders.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.model.User;
import com.techelevator.security.PasswordHasher;

@Component
public class JDBCUserDAO implements UserDAO {

	private JdbcTemplate jdbcTemplate;
	private PasswordHasher hashMaster;

	@Autowired
	public JDBCUserDAO(DataSource dataSource, PasswordHasher hashMaster) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		this.hashMaster = hashMaster;
	}
	
	@Override
	public void saveUser(String userName, String password, String email, Timestamp since) {
		byte[] salt = hashMaster.generateRandomSalt();
		String hashedPassword = hashMaster.computeHash(password, salt);
		String saltString = new String(Base64.encode(salt));
		
		jdbcTemplate.update("INSERT INTO app_user(user_name, password, salt, email, user_since) VALUES (?, ?, ?, ?, ?)",
				userName, hashedPassword, saltString, email, since);
	}

	@Override
	public boolean searchForUsernameAndPassword(String userName, String password) {
		String sqlSearchForUser = "SELECT * "+
							      "FROM app_user "+
							      "WHERE UPPER(user_name) = ? ";
		
		SqlRowSet user = jdbcTemplate.queryForRowSet(sqlSearchForUser, userName.toUpperCase());
		if(user.next()) {
			String dbSalt = user.getString("salt");
			String dbHashedPassword = user.getString("password");
			String givenPassword = hashMaster.computeHash(password, Base64.decode(dbSalt));
			return dbHashedPassword.equals(givenPassword);
		} else {
			return false;
		}
	}

	@Override
	public void updatePassword(String userName, String password) {
		jdbcTemplate.update("UPDATE app_user SET password = ? WHERE user_name = ?", password, userName);
	}

	@Override
	public Object getUserByUserName(String userName) {
		String sqlSearchForUsername ="SELECT * "+
		"FROM app_user "+
		"WHERE UPPER(user_name) = ? ";

		SqlRowSet user = jdbcTemplate.queryForRowSet(sqlSearchForUsername, userName.toUpperCase()); 
		User thisUser = null;
		if(user.next()) {
			thisUser = new User();
			thisUser.setUserName(user.getString("user_name"));
			thisUser.setPassword(user.getString("password"));
			thisUser.setEmail(user.getString("email"));
			thisUser.setUserSince(user.getTimestamp("user_since"));
		}

		return thisUser;
	}

	@Override
	public void deleteUser(String userName) {
		String sqlDeleteUserByUsernameString = "DELETE FROM app_user WHERE user_name = ?";
		jdbcTemplate.batchUpdate(sqlDeleteUserByUsernameString, userName);
		
	}

	@Override
	public boolean getAdminStatus(String userName) {
		String sqlGetAdminStatusByUserName = "SELECT is_admin FROM app_user WHERE user_name = ?";
		SqlRowSet adminStatus = jdbcTemplate.queryForRowSet(sqlGetAdminStatusByUserName, userName);
		
		boolean status = false;
		if(adminStatus.next()) {
			status = adminStatus.getBoolean("is_admin");
		}
		
		return status;		
	}

}
