package com.examportal.demo;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="test1")
@Component
public class test1 {
	@Id
	private int userid;
	private int marks;
	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getMarks() {
		return marks;
	}
	public void setMarks(int marks) {
		this.marks = marks;
	}
	@Override
	public int hashCode() {
		return Objects.hash(marks, userid);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		test1 other = (test1) obj;
		return marks == other.marks && userid == other.userid;
	}
	public test1(int userid, int marks) {
		super();
		this.userid = userid;
		this.marks = marks;
	}
	@Override
	public String toString() {
		return "test1 [userid=" + userid + ", marks=" + marks + "]";
	}
	public int calculatemarks(String s1 , String s2 ,String s3 ) {
		int correct=0;
		int incorrect=0;

		if(s1.equals("A")) {
			correct++;
		}
		else if(s1.equals("E")){
		}
		else {
			incorrect++;
		}
		if(s2.equals("C")) {
			correct++;
		}
		else if(s2.equals("E")){
		}
		else {
			incorrect++;
		}
		if(s3.equalsIgnoreCase("hockey")) {
			correct++;
		}
		else if(s3.equals("")){
		}
		else {
			incorrect++;
		}
		marks = 3*correct + (-1)*incorrect;
		return marks;
	}
	public test1() {
		super();
	}
	
}
