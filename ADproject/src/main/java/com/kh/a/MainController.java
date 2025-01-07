package com.kh.a;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.AcademyDAO;
import dao.ScheduleDAO;
import vo.AcademyVO;
import vo.ScheduleVO;

@Controller
public class MainController {
	
	
	@Autowired
	private AcademyDAO academy_dao;

	@Autowired
	private ScheduleDAO schedule_dao;
	
	public void setAcademy_dao(AcademyDAO academy_dao) {
		this.academy_dao = academy_dao;
	}
	
	public void setSchedule_dao(ScheduleDAO schedule_dao) {
		this.schedule_dao = schedule_dao;
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
	

	@RequestMapping("academy_detail.do")
	public String academy_detail_page ( Model model, int academy_idx ) {
		
		
        AcademyVO vo = academy_dao.select_one(academy_idx);
        model.addAttribute("vo", vo);
        
        // 09:00 ~ 21:00 시간대 배열
        String[] hours = new String[] {"09:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00", "19:00", "20:00", "21:00"};
        
        // 월, 화, 수, 목, 금, 토
        String[] days = new String[] {"월", "화", "수", "목", "금", "토"};

        
        // 모든 스케줄 조회
        List<ScheduleVO> schedules = schedule_dao.getAllSchedules();
        if (schedules == null || schedules.isEmpty()) {
            throw new RuntimeException("스케줄 정보를 찾을 수 없습니다.");
        }

        // 모델에 데이터를 담아 JSP로 전달
        model.addAttribute("hours", hours);
        model.addAttribute("days", days);
        model.addAttribute("schedules", schedules);
        
        
        
        
		return common.Common.academy_detail.VIEW_PATH + "academy_detail.jsp";
	}

	

	  @RequestMapping("cart_page.do") public String cartpage() {
	  
	  return common.Common.cart.VIEW_PATH +"cart.jsp"; }
	  
	 
}





















