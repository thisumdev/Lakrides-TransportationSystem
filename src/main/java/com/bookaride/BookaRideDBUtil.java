package com.bookaride;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class BookaRideDBUtil {
	
	boolean isSuccess = false;
	
	private static Connection con = null;
	private static ResultSet res = null;
	private static Statement stmt = null;
	
	
	public static boolean insertRideDetails(String source, String desti, String veh_type) {
		
		boolean isSuccess = false;
		
		try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "insert into bookaride values('"+source+"', '"+desti+"', '"+veh_type+"')";
		
		int res = stmt.executeUpdate(sql);
		
		if(res > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
