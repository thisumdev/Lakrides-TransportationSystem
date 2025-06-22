package com.driver;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DriverDBUtil {
	private static Connection con = null;
	private static ResultSet res = null;
	private static Statement stmt = null;
	
	
	public static List<Driver> display(String username){
		ArrayList<Driver> driver = new ArrayList<>();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from driver where username = '"+username+"'";
			
			res = stmt.executeQuery(sql);
			
			if(res.next()) {
				String user = res.getString(1);
				String fullname = res.getString(2);
				String vehnum = res.getString(3);
				String phone = res.getString(4);
				String mail = res.getString(5);
				
				Driver dr = new Driver(user, fullname, vehnum, phone, mail);
				driver.add(dr);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return driver;
	}
}

