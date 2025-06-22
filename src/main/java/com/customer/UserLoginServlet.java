package com.customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("username");
		String pass = request.getParameter("password");
		
		try {
			List<Customer> cus = CustomerDBUtil.validateCustomer(user, pass);
			request.setAttribute("UserDet", "UserDet");
			
			if(cus == null) {
				RequestDispatcher dis = request.getRequestDispatcher("remarksnotupdated.jsp");
				dis.forward(request, response);
			}
			else {
				RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
				dis.forward(request, response);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
