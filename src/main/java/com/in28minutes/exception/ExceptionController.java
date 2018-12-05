package com.in28minutes.exception;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@ControllerAdvice
@EnableWebMvc
public class ExceptionController {

	private Log logger = LogFactory.getLog(ExceptionController.class);

	@ExceptionHandler(value = Exception.class) // What kind of exception you want to handle -- i.e of Type
												// Exception.class
	public String handleException(HttpServletRequest request, Exception exception) {
		logger.error("Request: " + request.getRequestURL() + "raised " + exception);
		return "error";
	}
}
