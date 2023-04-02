package com.edu.teamproject.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CampaignController {
	
	//공모사업 리스트 페이지 요청
	@GetMapping("/campaignList")
	public String getCampaignList() {
		return "admin/campaign/campaignListPage";
	}
}
