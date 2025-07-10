package com.crud;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/crudapp", "root", "Mysql7*7db");

			System.out.println("Database connected successfully!");

		} catch (Exception e) {
			System.out.println("❌ Connection failed: " + e.getMessage());
			e.printStackTrace();
		}	
		return conn;
	}
}
