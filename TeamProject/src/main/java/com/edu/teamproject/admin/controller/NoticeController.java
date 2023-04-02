package com.edu.teamproject.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {
	//신고 리스트 페이지 요청
	@GetMapping("/reportList")
	public String getreportList() {
		return "admin/notice/reportListPage";
	}
	
	//공지사항 리스트 페이지 요청
	@GetMapping("/noticeList")
	public String getNoticeList() {
		return "admin/notice/noticeListPage";
	}
}
