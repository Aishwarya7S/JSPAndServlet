package com.servlet;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/servlet")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("user");
		
		if(name == null || name.isEmpty()) {
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
			rd.include(request,response);
		}
		else {
			request.setAttribute("username", name);
			RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
			rd.forward(request,response);
		}
	}

}
