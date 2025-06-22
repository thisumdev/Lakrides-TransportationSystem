package com.driver;

public class Driver {
	
	private String user;
	private String fullname;
	private String vehnumber;
	private String phone;
	private String mail;
	
	public Driver(String user, String fullname, String vehnumber, String phone, String mail) {
		super();
		this.user = user;
		this.fullname = fullname;
		this.vehnumber = vehnumber;
		this.phone = phone;
		this.mail = mail;
	}

	public String getUser() {
		return user;
	}

	public String getFullname() {
		return fullname;
	}

	public String getVehnumber() {
		return vehnumber;
	}

	public String getPhone() {
		return phone;
	}

	public String getMail() {
		return mail;
	}

	
	
	
}
