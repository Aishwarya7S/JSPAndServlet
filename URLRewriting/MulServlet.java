package com.task;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class MulServlet
 */
@WebServlet("/mul")
public class MulServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int sum = Integer.parseInt(request.getParameter("sum"));
		int res = sum * sum;
		PrintWriter out = response.getWriter();
		
		out.println("Square of Sum is : " + res);
	}

}