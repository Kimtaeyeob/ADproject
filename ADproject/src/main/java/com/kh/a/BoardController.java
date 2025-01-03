package com.kh.a;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import common.Common;
import dao.BoardDAO;
import util.Paging;
import vo.BoardVO;

@Controller
public class BoardController {

	@Autowired
	HttpSession session;

	@Autowired
	HttpServletRequest request;

	BoardDAO board_dao;
	
	public void setBoard_dao(BoardDAO board_dao) {
		this.board_dao = board_dao;
	}

	//전체 게시글 보기
	@RequestMapping("/list.do")
	public String list(
			Model model, 
			String search, String search_text, 
			Integer page) {
		//list.do?page=1
		//list.do?  <--- null
		//list.do?page= <--- empty
		int nowPage = 1; 

		if( page != null  ) {
			nowPage = page;
		}

		//한 페이지에 표시할 게시글의 시작과 끝번호를 계산
		//1page = 1 ~ 10
		//2page = 11 ~ 20
		int start = (nowPage - 1) * Common.Board.BLOCKLIST + 1;
		int end = start + Common.Board.BLOCKLIST - 1;

		//start와 end를 map에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);

		//검색어 관련 
		if( search != null  && !search.equals("all") ) {
			switch( search ) {
			case "name_subject_content":
				map.put("board_name", search_text);
				map.put("board_subject", search_text);
				map.put("board_content", search_text);
				break;

			case "board_name":
				map.put("board_name", search_text);
				break;

			case "board_subject":
				map.put("board_subject", search_text);
				break;

			case "board_content":
				map.put("board_content", search_text);
				break;

			}//switch
		}

		//전체 게시글 조회
		List<BoardVO> list = null;

		list = board_dao.selectList( map );	

		int row_total = board_dao.getRowTotal( map );

		String search_param = 
				String.format(
						"search=%s&search_text=%s", search, search_text);

		//페이지 메뉴 생성
		String pageMenu = Paging.getPaging(
				"list.do", nowPage, row_total, 
				search_param,
				Common.Board.BLOCKLIST, 
				Common.Board.BLOCKPAGE );

		//list를 바인딩
		model.addAttribute("list", list);
		model.addAttribute("pageMenu", pageMenu);

		//조회수 기록을 위해 세션에 저장해뒀던 show정보를 없앤다
		session.removeAttribute("show");

		return common.Common.Board.VIEW_PATH + "board_list.jsp";
	}//list

	//게시글 상세보기
	@RequestMapping("/view.do")
	public String view( Model model, int board_idx ) {

		//idx에 해당하는 게시글 한 건 가져오기
		BoardVO vo = board_dao.selectOne(board_idx);

		//조회수 증가
		String show = (String)session.getAttribute("show");

		if( show == null ) {
			int res = board_dao.update_readhit(board_idx);
			session.setAttribute("show", "y");
		}

		model.addAttribute("vo", vo);

		return common.Common.Board.VIEW_PATH + "board_view.jsp";

	}//view()

	//새 글 작성 페이지로 전환
	@RequestMapping("/write_form.do")
	public String writeForm() {
		return common.Common.Board.VIEW_PATH + "board_write.jsp";
	}

	//게시글 등록
	@RequestMapping("/insert.do")
	public String insert( BoardVO vo ) {

		String ip = request.getRemoteAddr();//접속자의 ip
		vo.setBoard_ip(ip);
		int res = board_dao.insert(vo);
		return "redirect:list.do";	

	}//insert()

	//게시글 삭제
	@RequestMapping("/del.do")
	@ResponseBody
	public String delete( int board_idx ) {

		int res = board_dao.del_update(board_idx);

		String result = "fail";
		if( res == 1 ) {
			result = "succ";
		}

		String resStr = String.format("[{'result':'%s'}]", result);

		return resStr;

	}
	
	//게시글 수정 페이지로 전환
	@RequestMapping("/modify_form.do")
	public String modifyForm(int board_idx, String page, String search, String search_text, Model model) {
		
    BoardVO vo = board_dao.selectOne(board_idx);
		
	model.addAttribute("vo", vo);
		
	return common.Common.Board.VIEW_PATH + "board_modify.jsp";
	}
	
	
	//게시글 수정
	@RequestMapping("/modify_fin.do")
	public String modify(BoardVO vo, String page, String search, String search_text) {

	String ip = request.getRemoteAddr();
	vo.setBoard_ip(ip);
	
	int res = board_dao.update(vo);
    
	return "redirect:list.do";
	}
}