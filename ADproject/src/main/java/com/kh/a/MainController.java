package com.kh.a;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class MainController {

	
	public MainController() {
	}
	
	@RequestMapping(value = {"/", "/mainhome.do" })
	public String list() {
		
		return common.Common.main.VIEW_PATH + "stepup_main.jsp";      

	}

	@RequestMapping("login_page.do")
	public String login_main_page() {
		return common.Common.login.VIEW_PATH + "login_main.jsp";
	}
	
}





















