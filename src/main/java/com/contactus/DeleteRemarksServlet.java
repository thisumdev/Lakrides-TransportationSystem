package com.contactus;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteRemarksServlet")

public class DeleteRemarksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username3");
		
		boolean isTrue;
		
		isTrue = RemarksDBUtil.DeleteRem(username);
		
		if(isTrue = true) {
			RequestDispatcher dis = request.getRequestDispatcher("remarkdeleted.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("remarknotdeleted.jsp");
			dis.forward(request, response);
		}
	}

}
