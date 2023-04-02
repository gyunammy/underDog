package com.edu.teamproject.client.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.edu.teamproject.domain.User;
import com.edu.teamproject.exception.UserException;
import com.edu.teamproject.sns.GoogleLogin;
import com.edu.teamproject.util.Message;

@RestController
@RequestMapping("/rest")
public class RestMemberController {
	
	@Autowired
	private GoogleLogin googleLogin;
	
	@GetMapping("/member/authform/google")
	public ResponseEntity<Message> getUrl(HttpServletRequest request, User user){
		
		String url = googleLogin.getGrantUrl();
		
		Message message = new Message();
		message.setMsg(url);
		
		ResponseEntity entity = new ResponseEntity<Message>(message, HttpStatus.OK);
		
		return entity;
	}

}
