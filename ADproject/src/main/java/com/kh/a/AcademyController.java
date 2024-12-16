package com.kh.a;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.AcademyDAO;
import vo.AcademyVO;

@Controller
public class AcademyController {

	AcademyDAO academy_dao;
	
	public void setAcademy_dao(AcademyDAO academy_dao) {
		this.academy_dao = academy_dao;
	}
	
	@RequestMapping("academy_search.do")
	public String select(Model model) {
		List <AcademyVO> list = academy_dao.selectAcademy();
		model.addAttribute("list",list);
		return "/WEB-INF/views/academy_search.jsp";
		
	}
}
