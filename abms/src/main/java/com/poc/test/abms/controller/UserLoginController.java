package com.poc.test.abms.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.poc.test.abms.beans.User;



@Controller
public class UserLoginController {

	@RequestMapping(value="/userlogin.htm",method=RequestMethod.GET)
	public String userLoginForm(@ModelAttribute("userLogin") User userObject,Map<String,Object> model){
		 
		 System.out.println("Inside the login Form");
		 return "login";
	}
	
	@RequestMapping(value="/console.htm",method=RequestMethod.POST)
	public String userAuthentication(@ModelAttribute("userLogin") User userObject,Map<String,Object> model){
		 
		 System.out.println("Inside the login Form");
		 return "ManagementConsole";
	}

}
