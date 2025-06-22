package com.driver;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class DisplayDriverServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("user");
		
		try {
			List<Driver> driverDetails = DriverDBUtil.display(user);
			request.setAttribute("driverDetails", driverDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("displaydriverdetails.jsp");
			dis.forward(request, response);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
