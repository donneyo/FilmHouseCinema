package org.donneyo.action;

import java.util.Map;

import javax.servlet.http.HttpSession;


import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import org.donneyo.dao.Admin;


import com.opensymphony.xwork2.ActionSupport;


  
public class LoginAction  extends ActionSupport implements SessionAware {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private SessionMap<String, Object> sessionMap;
	private String info;
	private String email, pass;
	Admin adm = new Admin();
	
	@Override
	public void setSession(Map<String, Object> map) {
		sessionMap = (SessionMap<String, Object>) map;
		
	}

	@Override
	public String execute() throws Exception {
		
		HttpSession session = ServletActionContext.getRequest().getSession(true);
		
		info = adm.getAdmin(email, pass);
		if( pass != null) {
		
			
		if (info.startsWith("Sorry")) {
			return "FAILURE";
		} else {
			sessionMap.put("pass", pass);
			return "SUCCESS";
		}	
		
		}else {
			
		
			String getSessionAttr = (String) session.getAttribute("pass");
			
			if (getSessionAttr != null) {
				return "SUCCESS";
				
				} else {
				return "FAILURE";
				}
			}
			
		}
		

	public String logout() {
		
		sessionMap.remove("pass");
		sessionMap.invalidate();
		
		return "LOGOUT";
	}
		
	
	
	public SessionMap<String, Object> getSessionMap() {
		return sessionMap;
	}

	public void setSessionMap(SessionMap<String, Object> sessionMap) {
		this.sessionMap = sessionMap;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
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
	
}
