package com.customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("user");
		String add = request.getParameter("updateadd");
		String mail = request.getParameter("updateprof");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.updateCustomer(user, add, mail);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("remarksupdated.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("remarksnotupdated.jsp");
			dis.forward(request, response);
		}
	}

}
