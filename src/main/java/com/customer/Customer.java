package com.customer;

public class Customer {
	private String username;
	private String password;
	private String email;
	private String contactno;
	private String address;
	private String fullname;
	private String dob;
	
	
	public Customer(String username, String password, String email, String contactno, String address, String fullname, String dob) {
		this.username = username;
		this.password = password;
		this.email = email;
		this.contactno = contactno;
		this.address = address;
		this.fullname = fullname;
		this.dob = dob;
	}

	public String getUsername() {
		return username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getContactno() {
		return contactno;
	}
	
	public String getAddress() {
		return address;
	}
	
	public String getFullname() {
		return fullname;
	}
	
	public String getDob() {
		return dob;
	}
	
	
}
