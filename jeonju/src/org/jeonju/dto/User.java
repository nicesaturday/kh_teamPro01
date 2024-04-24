package org.jeonju.dto;

public class User {
	private int id;
	private String email;
	private String name;
	private int pw;
	private String phone_num;
	private String address;
	public User(int id, String email, String name, int pw, String phone_num, String address) {
		super();
		this.id = id;
		this.email = email;
		this.name = name;
		this.pw = pw;
		this.phone_num = phone_num;
		this.address = address;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPw() {
		return pw;
	}
	public void setPw(int pw) {
		this.pw = pw;
	}
	public String getPhone_num() {
		return phone_num;
	}
	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + email + ", name=" + name + ", pw=" + pw + ", phone_num=" + phone_num
				+ ", address=" + address + "]";
	}
	
	
}
