package main.java.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionUtil {

	public static Connection getConnection() throws SQLException, IOException {
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:1440/book_store";
			conn = DriverManager.getConnection(url, "root", "thanh123dz");
			System.out.println("Da ket noi");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return conn; 
	}
}
