package com.Spring.Myapp.model;

import java.sql.Date;

public class Hello {
	
	/*
	 * private String username; private String password;
	 */
	 
	private int student_no;
	private String student_name;
	private Date student_dob;
	private Date student_doj;
	
	public int getStudent_no() {
		return student_no;
	}
	public void setStudent_no(int student_no) {
		this.student_no = student_no;
	}
	public String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	public Date getStudent_dob() {
		return student_dob;
	}
	public void setStudent_dob(Date student_dob) {
		this.student_dob = student_dob;
	}
	public Date getStudent_doj() {
		return student_doj;
	}
	public void setStudent_doj(Date student_doj) {
		this.student_doj = student_doj;
	}
	
	
	
}
