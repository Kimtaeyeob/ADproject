package com.kh.a;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.AcademyDAO;
import vo.AcademyVO;



@Controller
public class MainController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	HttpServletRequest request;
	
	
	AcademyDAO academy_dao;
	
	public void setAcademy_dao(AcademyDAO academy_dao) {
		this.academy_dao = academy_dao;
	}
	
	

	@RequestMapping(value = {"/", "/mainhome.do" })
	public String list(Model model) {
		
		List<AcademyVO> list = academy_dao.selectList();
		
		
		model.addAttribute("list", list);
		return common.Common.main.VIEW_PATH + "stepup_main.jsp";      

	}

	@RequestMapping("login_page.do")
	public String login_main_page() {
		return common.Common.login.VIEW_PATH + "login_main.jsp";
	}
	
	
	@RequestMapping("member_join.do")
	public String member_join_page() {
		return common.Common.login.VIEW_PATH + "member_join_page.jsp";
	}
	
	 @RequestMapping("/terms.do")
	    public String termsPage(Model model) {
	        model.addAttribute("termsTitle", "이용약관");
	        model.addAttribute("siteName", "StepUp");
	        return common.Common.main.VIEW_PATH +"terms.jsp";
	    }

	    @RequestMapping("/privacy-policy.do")
	    public String privacyPolicyPage() {
	        return common.Common.main.VIEW_PATH + "privacy-policy.jsp"; // "privacy-policy.jsp" 뷰로 이동
	    }
	    
	    @RequestMapping("/support.do")
	    public String supportPage() {
	        return common.Common.main.VIEW_PATH + "support.jsp"; 
	    }
	
}





















