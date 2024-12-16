package com.kh.a;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class MainController {

	
	public MainController() {
	}
	
	@RequestMapping(value = {"/", "/mainhome.do" })
	public String list(Model model, String search, String search_text, Integer page) {
		
		return "/WEB-INF/views/main/stepup_main.jsp";

	}

}





















