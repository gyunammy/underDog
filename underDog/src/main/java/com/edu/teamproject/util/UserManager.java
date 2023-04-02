package com.edu.teamproject.util;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.edu.teamproject.domain.User;
import com.edu.teamproject.model.adopt.UserService;

public class UserManager {
	
	@Autowired
	private UserService userService;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public boolean loginCheck(User user) {
		
		List<User> userList=userService.selectAll();
		
		boolean result=true;
		
		for(int a=0;a<userList.size();a++) {
			User userByDB =userList.get(a);
			
			logger.info("추출한 user"+ userByDB);
			
			if(userByDB.getId().equals(user.getId())) {
				result=false;
				break;
			}
		}
		return result;
	}
}
