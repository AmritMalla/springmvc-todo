package com.in28minutes.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//@ controller annotation would tell that this is a controller and this would handle the web request 
@Controller
public class UserController {

	@RequestMapping(value = "/user")
	public String SayHello() {
		return "user";

	}
//	if @ResponseBody is not put then it would searches for url with /spring-mvc/Hello World and it would not find it and 
//	show the 404 error
}
