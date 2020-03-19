package org.donneyo.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Types;

public class Customer {
	
	// method for create connection
			public static Connection getConnection() throws Exception {
				try {
					Class.forName("com.mysql.jdbc.Driver");
					return DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "root");
				} catch (Exception e) {
					e.printStackTrace();
					return null;
				}
			}
	

			//method for getUser store procedure
			public String getUser(String user_email, String user_pass) {
				try {
					CallableStatement cs = getConnection().prepareCall("{call getUser(?,?,?)}");
					cs.setString(1, user_email);
					cs.setString(2, user_pass);
					cs.registerOutParameter(3, Types.VARCHAR);
					cs.executeQuery();
					return cs.getString(3);
				} catch (Exception e) {
					return e.getMessage();
				}
			}
			
			//method for addUser store procedure
			public String addUser(String user_name, String user_email, String user_pass) {
				try {
					CallableStatement cs = getConnection().prepareCall("{call addUser(?,?,?,?)}");
					cs.setString(1, user_name);
					cs.setString(2, user_email);
					cs.setString(3, user_pass);
					cs.registerOutParameter(4, Types.VARCHAR);
					cs.executeQuery();
					return cs.getString(4);
				} catch (Exception e) {
					return e.getMessage();
				}

			}
}
