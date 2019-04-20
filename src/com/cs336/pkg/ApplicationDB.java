package com.cs336.pkg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ApplicationDB {
	
	public ApplicationDB(){
		
	}

	/**
	 * Creates connection to SQL database
	 * @return connection to database
	 */
	public Connection getConnection(){
		
		//Create a connection string
		String connectionUrl = "jdbc:mysql://cs336-db.cyltgcwmeu5o.us-east-2.rds.amazonaws.com:3306/FinalProject";
		Connection connection = null;
		
		try {
			//Load JDBC driver - the interface standardizing the connection procedure. Look at WEB-INF\lib for a mysql connector jar file, otherwise it fails.
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			//Create a connection to your DB
			connection = DriverManager.getConnection(connectionUrl, "admin", "adminpass");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return connection;
		
	}
	
	public void closeConnection(Connection connection){
		try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	public static void main(String[] args) {
		ApplicationDB dao = new ApplicationDB();
		Connection connection = dao.getConnection();
		
		
		System.out.println(connection);		
		dao.closeConnection(connection);
	}
	/**
	 * Checks SQL database for username and password
	 * @param user
	 * @return
	 */
	public static boolean log(User user) {
		ApplicationDB dao = new ApplicationDB();
		boolean result = false;
		
		Connection connection = dao.getConnection();

		try {
			PreparedStatement ps = connection.prepareStatement("SELECT * FROM Users WHERE username=? and pass=?");
			
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			System.out.println(ps);
			
			ResultSet rs = ps.executeQuery();
			result = rs.next();
			dao.closeConnection(connection);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return result;
	}

}
