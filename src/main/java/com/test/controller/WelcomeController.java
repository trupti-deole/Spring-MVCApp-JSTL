package com.test.controller;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.binding.Student;
@Controller
public class WelcomeController {
	List<Student> al=new ArrayList<Student>();
	
	@RequestMapping(value = "/welcome")
	public String welcomePage() {
		return "welcome";
	}
	
	@RequestMapping(value="/log")
	public String logPage()
	{
		return "login";
	}
	@RequestMapping(value="/login")
	public String loginPage(@RequestParam String uname,@RequestParam String pwd,Model m)
	{
		m.addAttribute("data",al);
//		return "index";
		return "mysuccess";
//		return "success";
	}
	
	@RequestMapping(value="/reg")
	public String regPage()
	{
		return "register";
	}
	
	@RequestMapping(value="/register")
	public String registerPage(@ModelAttribute Student stud,Model m)
	{
		System.out.println(stud.getFname());
		System.out.println(stud.getUname());
		System.out.println(stud.getEmail());
		System.out.println(stud.getPwd());
		System.out.println(stud.getPhno());
		
//		m.addAttribute("data",stud);
		al.add(stud);
		//m.addAttribute("data",al);
		return "index";
//		return "mysuccess";
	}
}
