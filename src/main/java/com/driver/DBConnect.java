package com.driver;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static Connection con;
	private static String username = "root";
	private static String password = "Thisum@123";
	private static String url = "jdbc:mysql://localhost:3306/lakrides";
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("Database connection not succesfull");
		}
		
		return con;
	}
	
}
