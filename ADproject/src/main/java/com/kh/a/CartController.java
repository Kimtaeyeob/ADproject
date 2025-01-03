package com.kh.a;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class CartController {

	@Autowired
	HttpSession session;
	
	@Autowired
	HttpServletRequest request;
	
	
	
	
}
