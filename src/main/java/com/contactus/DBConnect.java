package com.contactus;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/lakrides";
	private static String username = "root";
	private static String password = "Thisum@123";
	private static Connection con;
	
	public static Connection getConnection(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
			
		}
		catch(Exception e){
			System.out.println("Database connection is not succesfull!");
		}
		return con;
	}
	
}
