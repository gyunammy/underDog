package com.edu.teamproject.client.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdoptController {
	//입양 페이지 요청
	@GetMapping("/adopt")
	public String getAdoptPage(HttpServletRequest request) {
		return "client/adopt/adoptpage";
	}
}
