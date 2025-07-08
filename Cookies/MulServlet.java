package com.task;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.http.Cookie;
/**
 * Servlet implementation class MulServlet
 */
@WebServlet("/mul")
public class MulServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int sum = 0;
		Cookie cookies[] = request.getCookies();
		for(Cookie c : cookies) {
			if(c.getName().equals("sum"))
				sum = Integer.parseInt(c.getValue());
		}
		int res = sum * 2;
		PrintWriter out = response.getWriter();
		
		out.println("Result is : " + res);
		
	}

}