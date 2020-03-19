package org.donneyo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MovieListDAO {
	
	// create database connection
		public static Connection connect() throws Exception {
			Class.forName("com.mysql.jdbc.Driver");
			return (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "root");
		}
		
		
		public ResultSet getData() {
			try {
				return connect().prepareStatement("SELECT ID,DESCRIPTION,CAST FROM image_upload").executeQuery();
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		}
		
		public ResultSet getPhoto(String id) {
			try {
				PreparedStatement ps = connect().prepareStatement("SELECT IMAGE FROM image_upload WHERE ID=?");
				ps.setString(1, id);
				return ps.executeQuery();
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		}

}
