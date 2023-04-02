package com.edu.teamproject.model.adopt;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.teamproject.domain.User;
import com.edu.teamproject.exception.UserException;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO userDAO;
	
	@Override
	public List selectAll() {
		return userDAO.selectAll();
	}

	@Override
	public void insert(User user) throws UserException{
		userDAO.insert(user);
	}

}
