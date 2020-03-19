package org.donneyo.action;

import com.opensymphony.xwork2.ActionSupport;

public class ValidateAction  extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private String r1;
	private String role;
	
	@Override
	public String execute() throws Exception {
		 role=getR1();
		if (role.equals("customer")) {
			return "CUSTOMER";
		} else {		
			return "ADMINISTRATOR";
			}
	}
	

	public String getR1() {
		return r1;
	}
	public void setR1(String r1) {
		this.r1 = r1;
	}
	

}




