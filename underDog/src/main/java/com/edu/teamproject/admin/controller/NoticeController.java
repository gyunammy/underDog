package com.edu.teamproject.admin.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.edu.teamproject.domain.Adopt;
import com.edu.teamproject.domain.AdoptImg;
import com.edu.teamproject.domain.Notice;
import com.edu.teamproject.domain.Service;
import com.edu.teamproject.model.notice.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	//공지사항 글등록 페이지 요청
	@GetMapping("/notice/registform")
	public String getServiceRegistForm() {
		return "admin/notice/noticeRegistPage";
	}
	
	//공지사항 리스트 페이지 요청
	@GetMapping("/notices")
	public ModelAndView getreportList() {
		
		List<Notice> noticeList=(List)noticeService.selectAll();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("noticeList",noticeList);
		mav.setViewName("admin/notice/noticeListPage");
		return mav;
	}
	
	//검색 기능을 통한 입양 리스트 
	@PostMapping("/notice/search")
	public ModelAndView getListBySearch(HttpServletRequest request) {
		
		String category=request.getParameter("category");
		String keyword=request.getParameter("keyword");
		
		logger.info("category is "+category);
		logger.info("keyword is "+keyword);
		
		List<Notice> noticeList = null;

		if(category.length()<1 || keyword.length()<1) { //아무것도 넘어온 파라미터가 없다면...
			noticeList = noticeService.selectAll();
			
		}else {
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("category", category); 
			map.put("keyword", keyword);
			noticeList = noticeService.selectBySearch(map);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("noticeList",noticeList);
		mav.setViewName("admin/notice/noticeListPage");
		
		return mav;
	}
	
	@GetMapping("/notices/{notice_idx}")
	public ModelAndView getDetail(@PathVariable("notice_idx") int notice_idx) {
		logger.info("넘어온 idx"+notice_idx);
		
		Notice notice = noticeService.select(notice_idx);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("notice", notice);
		mav.setViewName("admin/notice/noticeDetailPage");
		
		return mav;
	}
	
	//신고 리스트 페이지 요청
	@GetMapping("/reports")
	public String getNoticeList() {
		return "admin/notice/reportListPage";
	}
	
}
