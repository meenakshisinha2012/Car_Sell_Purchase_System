package com.wu.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Users {
	@Id
	@Column(length = 25)
	private String username;
	@Column(length = 25)
	private String password;
	@Column(length = 25)
	private String type;
	@Column(length = 40)
	private String email_id;
	public Users() {}
	public Users(String username, String password, String type, String email_id) {
		super();
		this.username = username;
		this.password = password;
		this.type = type;
		this.email_id = email_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	@Override
	public String toString() {
		return "Users [username=" + username + ", password=" + password + ", type=" + type + ", email_id=" + email_id
				+ "]";
	}
	
	

	
}
