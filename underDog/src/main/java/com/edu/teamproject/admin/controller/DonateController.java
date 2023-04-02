package com.edu.teamproject.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DonateController {

	//후원 리스트 페이지 요청
	@GetMapping("/donateList")
	public String getAdopList() {
		return "admin/donate/donateListPage";
	}
	
	//후원 리스트 페이지 요청
	@GetMapping("/consumeList")
	public String getConsumeList() {
		return "admin/donate/consumeListPage";
	}
}
