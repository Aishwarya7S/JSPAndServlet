package com.crud;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		try {
			Connection conn = DbConnection.getConnection();
			String sql = "UPDATE user SET name='Aish', email='Aishu@gmail.com', password='saishu73' WHERE id='1'";
			Statement stmt = conn.createStatement();
			
			int i = stmt.executeUpdate(sql);
			if( i > 0) {
				 out.println("Data updated successfully.");
			}
			else {
				 out.println("Failed to update.");
			}
			conn.close();
		}
		catch(Exception e) {
			 out.println("Error" + e.getMessage());
		}
	}
	}