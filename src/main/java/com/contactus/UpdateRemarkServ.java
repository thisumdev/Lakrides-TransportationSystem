package com.contactus;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UpdateRemarkServ")

public class UpdateRemarkServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username2");
		String description = request.getParameter("description");
		
		boolean isTrue;
		
		isTrue = RemarksDBUtil.UpdateRem(username, description);
		
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
