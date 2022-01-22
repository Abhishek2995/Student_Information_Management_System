package com.pojo;

public class payment {
	private long receipt;
	private String name;
	private String fname;
	private String gender;
	java.sql.Date dateOfBirth;
	private long contact;
	private String email;
	private String course;
	private String year;
	private long enroll;
	
	public long getReceipt() {
		return receipt;
	}
	public void setReceipt(long receipt) {
		this.receipt = receipt;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public java.sql.Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(java.sql.Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public long getContact() {
		return contact;
	}
	public void setContact(long contact) {
		this.contact = contact;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public long getEnroll() {
		return enroll;
	}
	public void setEnroll(long enroll) {
		this.enroll = enroll;
	}
	
	
}
