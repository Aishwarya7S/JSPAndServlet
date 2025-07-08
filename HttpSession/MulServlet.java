package com.task;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.http.HttpSession;
/**
 * Servlet implementation class MulServlet
 */
@WebServlet("/mul")
public class MulServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(false);		
		int sum = (int) session.getAttribute("sum");
		int res = sum * 2;
		PrintWriter out = response.getWriter();
		
		out.println("Sum is : " + sum);
		out.println("Multiplication (sum * 2): " + res);
	}

}