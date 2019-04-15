package com.techelevator.model;

import javax.sql.DataSource;

import org.bouncycastle.util.encoders.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.model.User;
import com.techelevator.security.PasswordHasher;

@Component
public class JDBCDonationDAO implements DonationDAO{





		private JdbcTemplate jdbcTemplate;

		@Autowired
		public JDBCDonationDAO(DataSource dataSource) {
			this.jdbcTemplate = new JdbcTemplate(dataSource);
		}
		
		@Override
		public void totalMinutes(int minutes) {
			
			jdbcTemplate.update("INSERT INTO app_user(user_name, password, salt) VALUES (?, ?, ?)",
					userName, hashedPassword, saltString);
		}

		@Override
		public void totalDonation(float donation) {
			jdbcTemplate.batchUpdate("INSERT INTO app_user()
		}

	}
