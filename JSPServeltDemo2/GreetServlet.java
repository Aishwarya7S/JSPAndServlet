package com.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class GreetServlet
 */
@WebServlet("/GreetServlet")
public class GreetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("username");
		
		request.setAttribute("greet", "Hello, "+ name + "! Welcome to Servlet and you used GET method.");
		
		RequestDispatcher rd = request.getRequestDispatcher("greet.jsp");
		
		rd.forward(request, response);
	}

}
