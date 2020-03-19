 package org.donneyo.action;

import org.donneyo.dao.Admin;



import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name, email, pass, info;
	

	Admin adm = new Admin();
	

	@Override
	public String execute() throws Exception {
		try {
			setInfo(adm.addAdmin(name, email, pass));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "SUCCESS";
	}
	
	
	public String getName() {
		return name;
	}

	
	
	
	public void setName(String name) {
		this.name = name;
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


	public String getInfo() {
		return info;
	}


	public void setInfo(String info) {
		this.info = info;
	}



	public Admin getAdm() {
		return adm;
	}


	public void setAdm(Admin adm) {
		this.adm = adm;
	}


	
}
