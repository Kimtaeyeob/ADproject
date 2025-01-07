package com.kh.a;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.LoginDAO;
import vo.StepupMemberVO;

@Controller
public class LoginController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	HttpServletRequest request;
	
	LoginDAO logindao;
	
	public void setLogindao(LoginDAO logindao) {
		this.logindao = logindao;
	}
	
	
	@RequestMapping("/naver_login_call.do")
	public String n_login_c() {
		return common.Common.login.VIEW_PATH + "naver_callback.jsp";
	}
	
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	@ResponseBody
	public String stepup_login( Model model, String stepup_id, String stepup_password) {
		
		StepupMemberVO member = logindao.select_one(stepup_id);
		//해당되는 id 없을 때
		System.out.println("121");
		
		if(member == null) {
			return "로그인 실패";
		}else {
			String real_password = logindao.select_one_pwd(stepup_id);
			
			if( real_password.equals(stepup_password)) {
				
				session.setAttribute("member", member);
				return "로그인 성공";
			}else{
				return "로그인 실패";
			}
			
		}
	}
	
	@RequestMapping("/logout.do")
	public String stepup_logout() {
		session.removeAttribute("member");
		
		
		return "redirect:/mainhome.do";
	}
	
	@RequestMapping("/member_insert.do")
	public String stepup_member_insert(Model model, StepupMemberVO member) {
		
		int res = logindao.insert(member);
		
		return "redirect:/mainhome.do";
	}
	
	@RequestMapping("/member_info.do")
	public String step_member_info( Model model , String stepup_id) {
		
		StepupMemberVO member = logindao.select_one(stepup_id);
		model.addAttribute("member", member);
		
		return common.Common.login.VIEW_PATH + "user_information.jsp";
	}
	
	
	
}
