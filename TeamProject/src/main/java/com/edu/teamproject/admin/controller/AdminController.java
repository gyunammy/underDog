package com.edu.teamproject.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

	//메인페이지 요청
	@GetMapping("/main")
	public String getMain() {
		return "admin/main";
	}
	
	//캘린더추가
	@GetMapping("/cal")
	public String getCal() {
		return "/admin/cal";
	}
	
	//디폴트 페이지
	@GetMapping("/addpage2")
	public String addPage2() {
		return "/admin/addPage2";
	}
	
	//관리자 인증 페이지 요청
	@GetMapping("/loginform")
	public String getLoginForm() {
		return "admin/loginPage";
	}
	
	//멤버리스트 페이지 요청
	@GetMapping("/memberList")
	public String getMemberList() {
		return "admin/memberListPage";
	}

}
 