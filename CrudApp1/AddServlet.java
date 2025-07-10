package com.crud;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;

@WebServlet("/add")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		try {
			Connection conn = DbConnection.getConnection();
			String sql = "INSERT INTO user (name, email, password) VALUES ('Jaya', 'Jaya@gmail.com', 'jayas123')";
			Statement stmt = conn.createStatement();
			
			int i = stmt.executeUpdate(sql);
			if( i > 0) {
				 out.println("Data inserted successfully.");
			}
			else {
				 out.println("Failed to insert.");
			}
			conn.close();
		}
		catch(Exception e) {
			 out.println("Error" + e.getMessage());
		}
	}
}
