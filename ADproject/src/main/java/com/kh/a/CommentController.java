package com.kh.a;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import common.Common;
import dao.CommentDAO;
import util.PagingComment;
import vo.CommentVO;

@Controller
public class CommentController {

	@Autowired
	HttpServletRequest request;

	CommentDAO comment_dao;
	public void setComment_dao(CommentDAO comment_dao) {
		this.comment_dao = comment_dao;
	}

	//댓글작성
	@RequestMapping("/comment_insert.do")
	@ResponseBody
	public String comment_ins( CommentVO vo, int board_idx ) {
		String ip = request.getRemoteAddr();
		vo.setComment_ip(ip);

		int res = comment_dao.insert(vo);
		String str = "no";
		if( res == 1 ) {
			str = "yes";
		}

		String resultStr = String.format("[{'result':'%s'}]", str);

		return resultStr;
	}

	//댓글목록
	@RequestMapping("/comment_list.do")
	public String commentList( Model model, Integer page, int board_idx ) {
		//댓글 페이징 처리를 위한 변수
		int nowPage = 1;
		
		if( page != null ) {
			nowPage = page;
		}

		int start = (nowPage - 1) * Common.Comment.BLOCKLIST + 1;
		int end = start + Common.Comment.BLOCKLIST - 1;

		//댓글 페이지를 위한 변수를 map에 저장
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("board_idx", board_idx);
		map.put("start", start);
		map.put("end", end);

		List<CommentVO> list = comment_dao.selectList(map);

		int row_total = comment_dao.getRowTotal(board_idx);
		
		//페이지 메뉴 생성
		String pageMenu = 
				PagingComment.getPaging(
						"comment_list.do", 
						nowPage, 
						row_total, 
						Common.Comment.BLOCKLIST, 
						Common.Comment.BLOCKPAGE);

		model.addAttribute("list", list);
		model.addAttribute("pageMenu", pageMenu);

		return common.Common.Comment.VIEW_PATH + "comment_list.jsp";
	}

	//댓글삭제
	@RequestMapping("/comment_del.do")
	@ResponseBody
	public String commentDel( int comment_idx ) {
		
		int res = comment_dao.delete(comment_idx);
		
		String str = "no";
		if( res == 1 ) {
			str = "yes";
		}
		
		String resultStr = String.format("[{'result':'%s'}]", str);
		return resultStr;
	}
	
}