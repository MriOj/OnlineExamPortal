package com.examportal.demo;

import org.springframework.data.jpa.repository.JpaRepository;



public interface StudentRepo extends JpaRepository<Student,Integer>{

	Student findByEmailid(String string);

}