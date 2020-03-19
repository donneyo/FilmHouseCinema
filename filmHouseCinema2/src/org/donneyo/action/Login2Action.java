package org.donneyo.action;


import org.donneyo.dao.Customer;
import com.opensymphony.xwork2.ActionSupport;

public class Login2Action extends ActionSupport {


	private static final long serialVersionUID = 1L;
	private String msg;
	private String email, pass;
	
	Customer cus = new Customer();

	@Override
	public String execute() throws Exception {	
		msg = cus.getUser(email, pass);
		if (msg.startsWith("Sorry")) {
			return "FAILURE";
		} else {
			return "SUCCESS";
		}	
	}
	
	
	
	public String getMsg() {
		return msg;
	}
	
	public void setMsg(String msg) {
		this.msg = msg;
	}


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public Customer getCus() {
		return cus;
	}

	public void setCus(Customer cus) {
		this.cus = cus;
	}

}
