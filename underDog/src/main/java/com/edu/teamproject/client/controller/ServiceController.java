package com.edu.teamproject.client.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ServiceController {
	// 자원봉사 게시판 페이지 요청
	@GetMapping("/service")
	public String getServicePage(HttpServletRequest request) {
		return "client/service/servicepage";
	}

	// 보호소 페이지 요청
	@GetMapping("/loc")
	public String getLocPage(HttpServletRequest request) {
		return "client/service/locpage";
	}
}
