package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.contactus.DBConnect;

public class CustomerDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Customer> Display(String username){
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from customer where username = '"+username+"'";
			
			 rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				String user = rs.getString(1);
				String pass = rs.getString(2);    
				String mail = rs.getString(3);
				String contact = rs.getString(4);
				String address = rs.getString(5);
				String fullname = rs.getString(6);
				String dob = rs.getString(7);
				
				Customer c = new Customer(user, pass, mail, contact, address, fullname, dob);
				
				cus.add(c);
			}
		}
		catch(Exception e){
		e.printStackTrace();
		}
		
		return cus;
	}
	
	public static boolean updateCustomer(String user, String add, String mail) {
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update customer set Address = '"+add+"', Email ='"+mail+"' where username = '"+user+"'";
			 int rs = stmt.executeUpdate(sql);
			 
			 if(rs > 0) {
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
	
	public static List<Customer> validateCustomer(String username, String password) {
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from customer where username = '"+username+"' and password = '"+password+"'";
			
			 rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				String user = rs.getString(1);
				String pass = rs.getString(2);
				String mail = rs.getString(3);
				String contact = rs.getString(4);
				String address = rs.getString(5);
				String fullname = rs.getString(6);
				String dob = rs.getString(7);
				
				Customer c = new Customer(user, pass, mail, contact, address, fullname, dob);
				
				cus.add(c);
			}
		}
		catch(Exception e){
		e.printStackTrace();
		}
		
		return cus;
	}
	
	public static boolean deleteCustomer(String user, String pass) {
		boolean isSuccess = false;
		try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "delete from customer where username = '"+user+"' and password = '"+pass+"'";
		
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
