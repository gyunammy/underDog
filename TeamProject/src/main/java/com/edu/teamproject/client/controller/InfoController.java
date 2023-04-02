package com.edu.teamproject.client.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class InfoController {
	//공지사항  페이지 요청
	@GetMapping("/notice")
	public String getNoticePage(HttpServletRequest request) {
		return "client/info/noticepage";
	}
	//공모사업  페이지 요청
	@GetMapping("/campaign")
	public String getCampaignPage(HttpServletRequest request) {
		return "client/info/campaignpage";
	}
	
	//공모사업 글쓰기 폼 요청
	@GetMapping("/info/regist")
	public String getRegistForm(HttpServletRequest request) {
		return "client/info/campaignregistform";
	}
}
