package com.bookaride;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class BookaRideInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String source = request.getParameter("location");
		String desti = request.getParameter("destination");
		String Vehtype = request.getParameter("veh-type");
		
		boolean isTrue;
		
		isTrue = BookaRideDBUtil.insertRideDetails(source, desti, Vehtype);
		
		if(isTrue = true) {
			RequestDispatcher dis = request.getRequestDispatcher("remarksinserted.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("remarksnotins.jsp");
			dis.forward(request, response);
		}
		
	}

}
