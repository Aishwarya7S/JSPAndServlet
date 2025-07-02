package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDbDemo {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		String jdbcURL = "jdbc:mysql://localhost:3306/crudapp";
		String dbUser = "root";
		String dbPassword = "Mysql7*7db";

		// Load MySQL JDBC Driver
		Class.forName("com.mysql.cj.jdbc.Driver");

		// Connect to the database
		Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

		System.out.println("✅ Database connected successfully!");

		// Close connection
		conn.close();

	}
}
