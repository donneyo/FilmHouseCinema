package org.donneyo.action;


import java.sql.ResultSet;

import org.donneyo.dao.Admin;

import com.opensymphony.xwork2.ActionSupport;

public class UpdateAction extends  ActionSupport {

	private static final long serialVersionUID = -1905974197186620917L;
	private String cast = "", description = "";
	private String msg = "";
	ResultSet rs = null;
	Admin dao = new Admin();
	String submitType;
	

	@Override
	public String execute() throws Exception {
		try {
			if (submitType.equals("updatedata")) {
				rs = dao.fetchUserDetails(cast.trim());
				if (rs != null) {
					while (rs.next()) {
						cast = rs.getString("CAST");
						
						description = rs.getString("DESCRIPTION");
						
					}
				}
			} else {
				int i = dao.updateUserDetails(cast, description);
				if (i > 0) {
					msg = "Record Updated Successfuly";
				} else {
					msg = "error";
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "UPDATE";
	}
	
	public String getCast() {
		return cast;
	}


	public void setCast(String cast) {
		this.cast = cast;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getMsg() {
		return msg;
	}


	public void setMsg(String msg) {
		this.msg = msg;
	}


}
