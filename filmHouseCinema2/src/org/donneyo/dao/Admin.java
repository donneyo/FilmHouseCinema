package org.donneyo.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;


public class Admin {
	
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
	

	public String getAdmin(String admin_email, String admin_pass) {
		try {
			CallableStatement cs = getConnection().prepareCall("{call getAdmin(?,?,?)}");
			cs.setString(1, admin_email);
			cs.setString(2, admin_pass);
			cs.registerOutParameter(3, Types.VARCHAR);
			cs.executeQuery();
			return cs.getString(3);
		} catch (Exception e) {
			return e.getMessage();
		}
	}

	public String addAdmin(String admin_name, String admin_email, String admin_pass) {
		try {
			CallableStatement cs = getConnection().prepareCall("{call addAdmin(?,?,?,?)}");
			cs.setString(1, admin_name);
			cs.setString(2, admin_email);
			cs.setString(3, admin_pass);
			cs.registerOutParameter(4, Types.VARCHAR);
			cs.executeQuery();
			return cs.getString(4);
		} catch (Exception e) {
			return e.getMessage();
		}

	}
	
	
	// method for save user data in database
	public int registerUser(String name, String email,String pass) throws Exception {
		int i = 0;
		try {
			String sql = "INSERT INTO test.add_admin VALUES (?,?,?,?)";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pass);
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			return i;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	// method for fetch saved user data
	public ResultSet report() throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT CAST,DESCRIPTION FROM test.image_upload";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	// method for fetch old data to be update
	public ResultSet fetchUserDetails(String cast) throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT CAST,DESCRIPTION FROM test.image_upload WHERE CAST=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, cast);
			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	// method for update new data in database
	public int updateUserDetails(String description, String cast)
			throws SQLException, Exception {
		getConnection().setAutoCommit(false);
		int i = 0;
		try {
			String sql = "UPDATE test.image_upload SET DESCRIPTION=?,CAST=?  WHERE CAST=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, description);
			ps.setString(2, cast);
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			getConnection().rollback();
			return 0;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	// method for delete the record
	public int deleteUserDetails(int id) throws SQLException, Exception {
		getConnection().setAutoCommit(false);
		int i = 0;
		try {
			String sql = "DELETE FROM test.image_upload WHERE ID=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setInt(1, id);
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			getConnection().rollback();
			return 0;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

}

