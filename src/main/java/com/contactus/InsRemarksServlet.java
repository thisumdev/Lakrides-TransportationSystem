package com.contactus;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet("/InsRemarksServlet")

public class InsRemarksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String remark = request.getParameter("descri");
		
		boolean isTrue;
		
		isTrue = RemarksDBUtil.insertRem(username, remark);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("remarksinserted.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("remarksnotins.jsp");
			dis2.forward(request, response);
		}
		
		
		
	}

}
