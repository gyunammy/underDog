package com.edu.teamproject.model.adopt;

import java.util.List;

import com.edu.teamproject.domain.User;

public interface UserDAO {
	public List selectAll();
	public void insert(User user);
}