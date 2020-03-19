package org.donneyo.action;


import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.opensymphony.xwork2.ActionSupport;

public class AddMovieAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	private String certificate;
	private String duration;
	private String director;
	private String language;
	private String cast;
	private String description;
	private int price;
	private String type;
	private File image;
	private String msg;

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	
	// create database connection
	public static Connection connect() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		return (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "root");
	}

	@Override
	public String execute() {
		try {
			PreparedStatement preparedStatement = connect().prepareStatement("INSERT INTO IMAGE_UPLOAD(NAME,CERTIFICATE,DURATION,DIRECTOR,LANGUAGE,CAST,DESCRIPTION,PRICE,TYPE,IMAGE) VALUES(?,?,?,?,?,?,?,?,?,?)");
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, certificate);
			preparedStatement.setString(3, duration);
			preparedStatement.setString(4, director);
			preparedStatement.setString(5, language);
			preparedStatement.setString(6, cast);
			preparedStatement.setString(7, description);
			preparedStatement.setInt(8, price);
			preparedStatement.setString(9, type);
			// for inserting image in database
			FileInputStream inputStream = new FileInputStream(image);
			preparedStatement.setBinaryStream(10, inputStream);
			int i = preparedStatement.executeUpdate();
			setName("");
			if (i > 0) {
				setMsg("Image successfully inserted.");
			} else {
				setMsg("Something gone wrong.");
			}
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
	
	
	public String getCertificate() {
		return certificate;
	}

	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	
	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
}
