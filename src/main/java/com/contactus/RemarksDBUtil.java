package com.contactus;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class RemarksDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	/*public static List<Remarks> validate(String username, String remarks){
		
		ArrayList<Remarks> rem = new ArrayList<>();
		
		//create database connection
		String url = "jbdc:mysql://localhost:3306/Lakrides";
		String user = "root";
		String password = "";
		
		try {
			Class.forName("com.mysql.jbdc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, password);
			
			Statement stat = con.createStatement();
			
			String sql = "select * from Remarks where username='"+username+"'";
			
			ResultSet res = stat.executeQuery(sql);
			
			if(res.next()) {
				String name = res.getString(1);
				String remark = res.getString(2);
				
				Remarks re = new Remarks(name, remark);
				rem.add(re);
				
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return rem;
	}*/
	
	public static boolean insertRem(String username, String remark) {
		boolean isSuccess = false;
		
	
		
		try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
			
			String sql = "insert into remarks values ('"+username+"','"+remark+"')";
			
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
	
	public static boolean UpdateRem(String username, String remark) {
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update remarks set remarks ='"+remark+"' where username = '"+username+"'";
			
			int res = stmt.executeUpdate(sql);
			
			if(res > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		return isSuccess;
	}
	
	public static boolean DeleteRem(String username) {
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from remarks where username = '"+username+"'";
			
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
