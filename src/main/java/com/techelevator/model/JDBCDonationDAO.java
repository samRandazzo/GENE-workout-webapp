package com.techelevator.model;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class JDBCDonationDAO implements DonationDAO {
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCDonationDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
        public void stats(int totalMinutes, double totalDonation) {
            
            jdbcTemplate.update(" INSERT INTO exercise_stats(total_donated,total_workout_time)"
                    + " SELECT CAST(total_workout_time as INT) from exercise_stats" 
                    + " VALUES (?, ?)", totalDonation, totalMinutes 
                    + " SELECT ex_id from exercise_stats LEFT JOIN app_user on app_user.id = exercise_stats.ex_id")
            ;
            jdbcTemplate.update("Select ex_id, total_donated from exercise_stats"
                    + " SUM(total_donated) as total_donated");
    }
}