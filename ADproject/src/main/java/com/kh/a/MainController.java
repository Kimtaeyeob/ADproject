package com.kh.a;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import dao.AcademyDAO;



@Controller
public class MainController {


	@RequestMapping(value = {"/", "/mainhome.do" })
	public String list() {
		
		return common.Common.main.VIEW_PATH + "stepup_main.jsp";      

	}

	@RequestMapping("login_page.do")
	public String login_main_page() {
		return common.Common.login.VIEW_PATH + "login_main.jsp";
	}
	
}





















