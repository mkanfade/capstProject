package com.musicAnalyser.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



/**
 * @author Hareesha
 * Feb 8, 2017
 */
@Entity
@Table(name="USER")
public class RegistrationBean {
	
	@Column(name="firstName")
	private String fname;
	
	@Column(name="lastName")
	private String lname;
	
	@Id
	@Column(name="email",nullable=false)
	private String email;
	
	@Column(name="psw")
	private String psw;
	
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPsw() {
		return psw;
	}
	public void setPsw(String psw) {
		this.psw = psw;
	}
	
}
