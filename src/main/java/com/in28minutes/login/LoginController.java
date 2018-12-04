package com.in28minutes.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

//@ controller annotation would tell that this is a controller and this would handle the web request 
@Controller
@SessionAttributes("name")
public class LoginController {

	@Autowired
	LoginService loginService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String defaultController() {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String SayHello() {
		return "login";

	}

//	if @ResponseBody is not put then it would searches for url with /spring-mvc/Hello World and it would not find it and 
//	show the 404 error
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String handleLoginRequest(@RequestParam String name, @RequestParam String password, ModelMap model) {
		if (loginService.validateUser(name, password)) {
			model.put("name", name);
			System.out.println(name + "   " + password);
			return "welcome";
		}
		model.put("errorMessage", "The Creditentials are invalid");
		return "login";

	}

}
