package com.examportal.demo;

import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="student")
@Component
public class Student {
	@Id
	@GeneratedValue
	private int userid;
	private String password;
	private String firstname;
	private String lastname;
	private String emailid;
	private String course;
	private String gender;
	private long  phone;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	@Override
	public int hashCode() {
		return Objects.hash(course, emailid, firstname, gender, lastname, password, phone, userid);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Student other = (Student) obj;
		return Objects.equals(course, other.course) && Objects.equals(emailid, other.emailid)
				&& Objects.equals(firstname, other.firstname) && Objects.equals(gender, other.gender)
				&& Objects.equals(lastname, other.lastname) && Objects.equals(password, other.password)
				&& phone == other.phone && userid == other.userid;
	}
	@Override
	public String toString() {
		return "Student [userid=" + userid + ", password=" + password + ", firstname=" + firstname + ", lastname="
				+ lastname + ", emailid=" + emailid + ", course=" + course + ", gender=" + gender + ", phone=" + phone
				+ "]";
	}
	public Student(String password, String firstname, String lastname, String emailid, String course, String gender,
			long phone) {
		super();
		this.password = password;
		this.firstname = firstname;
		this.lastname = lastname;
		this.emailid = emailid;
		this.course = course;
		this.gender = gender;
		this.phone = phone;
	}
	public Student() {
		super();
	}
	
	
	
	

}
