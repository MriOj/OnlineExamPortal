package com.examportal.demo;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController
public class MyController {

	@Autowired
	StudentRepo  srepo;
	@Autowired 
	Test1repo t1repo;
	@Autowired 
	Test2repo t2repo;
	@Autowired
	Student s;
	@Autowired 
	test1 t1;
	@Autowired 
	test2 t2;
	// HOME PAGE 
	@GetMapping(value="/home")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home.jsp");
		return mv;
	}
	// ADMIN LOGIN
	@GetMapping(value="/admin")
	public ModelAndView admin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin.jsp");
		return mv;
	}
	// login a student
	@GetMapping(value="/slogin")
	public ModelAndView slogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("student.jsp");
		return mv;
	}
	// register a student
	@GetMapping(value="/sregister")
	public ModelAndView sregister() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sregister.jsp");
		return mv;
	}
	
	@PostMapping(value="/admlogin")
	public ModelAndView adminloggedin(@RequestParam("uname")String username,@RequestParam("psw") String password) {
		ModelAndView mv = new ModelAndView();
		if(username.equals("admin")&&password.equals("1234")) {
			mv.setViewName("admlogin.jsp");
			return mv;
		}
		mv.setViewName("logfail.jsp");
		return mv;
	}
	// registration confirmation for student
	 @PostMapping(path= "/sregisterconf")
	 public ModelAndView insert( String emailid,String password,String firstname,String lastname,String course,String gender,long  phone ) {
		 Student e = new Student(password,firstname,lastname,emailid,course,gender,phone);
		 srepo.save(e);
		 int user=srepo.findByEmailid(emailid).getUserid();
		 e.setUserid(user);
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("sregisterconf.jsp");
		 mv.addObject("userid",user);
		 return mv;
	 }
	 @PostMapping(path= "/studentlogin")
	 public ModelAndView slogin( @RequestParam("uname") Integer userid , @RequestParam("psw") String password) {
		 Student e = (Student) srepo.findById(userid).get();
		 ModelAndView mv = new ModelAndView();
		 if(e.getPassword().equals(password)) {
			 String s = e.getFirstname(); 
			 mv.addObject("student",s);
			 mv.addObject("userid",userid);
			 mv.setViewName("sloginconf.jsp");
		 }
		 else {
			 mv.setViewName("logfail.jsp");
		 }
		 return mv;
	 }
	 @PostMapping(path= "/test")
	 public ModelAndView stest( @RequestParam("userid") Integer userid , @RequestParam("test") Integer testnum) {
		 ModelAndView mv = new ModelAndView();
		
		 if(testnum==1 && !t1repo.existsById(userid) ) {
			 mv.setViewName("test1.jsp");
			 mv.addObject("userid",userid);
		 }
		 else if(testnum==2 && !t2repo.existsById(userid)) {
			 mv.setViewName("test2.jsp");
			 mv.addObject("userid",userid);
		 }
		 else {
			 mv.setViewName("thanks.jsp");
		 }
		 return mv;
	 }
	 @GetMapping(path= "/test")
	 public ModelAndView preventtimerreset() {
		 ModelAndView mv = new ModelAndView("thanks.jsp");
		 return mv;
	 }

	 @PostMapping(path= "/than")
	 public ModelAndView scorecalculator(Integer userid ,Integer test,String Q1,String Q2, String Q3) {
		 ModelAndView mv = new ModelAndView("thanks.jsp");
		 if(test==1) {
			 test1 t1 = new test1();
			 int marks =t1.calculatemarks(Q1,Q2,Q3);
			 t1 = new test1(userid,marks);
			 t1repo.save(t1); 
		 }
		 else if(test==2) {
			 test2 t2 = new test2();
			 int marks =t2.calculatemarks(Q1,Q2,Q3);
			 t2 = new test2(userid,marks);
			 t2repo.save(t2);
		 }
		 return mv;
	 }
	
	 @PostMapping(path= "/results")
	 public ModelAndView result(@RequestParam("userid")Integer id , @RequestParam("test") Integer test) {
		 ModelAndView mv = new ModelAndView("sresult.jsp");
		 Student s = srepo.findById(id).get();
		 String fname = s.getFirstname();
		 String lname = s.getLastname();
		 
		 mv.addObject("fname",fname);
		 mv.addObject("lname",lname);
		 if(test==1) {
			 mv.addObject("test",1);
			 int marks = t1repo.getById(id).getMarks();
			 mv.addObject("marks",marks);
		 }
		 else if(test==2) {
			 mv.addObject("test",2);
			 int marks = t2repo.getById(id).getMarks();
			 mv.addObject("marks",marks);
		 }
		 
		 return mv;
	 }
	 @PostMapping(path= "/reportcard")
	 public ModelAndView report(@RequestParam("userid")Integer id) {
		 ModelAndView mv = new ModelAndView("reportcard.jsp");
		 Student s = srepo.findById(id).get();
		 test1 t1 = t1repo.findById(id).get();
		 test2 t2 = t2repo.findById(id).get();
		 
		 mv.addObject("fname",s.getFirstname());
		 mv.addObject("lname",s.getLastname());
		 mv.addObject("phone",s.getPhone());
		 mv.addObject("course",s.getCourse());
		 mv.addObject("gender",s.getGender());
		 mv.addObject("t1m",t1.getMarks());
		 mv.addObject("t2m",t2.getMarks());
		 return mv;
	 }
	 @GetMapping(path="classresults")
	 public ModelAndView classr() {
		 ModelAndView mv = new ModelAndView("classresults.jsp");
		 return mv;
		 
	 }

	
}
