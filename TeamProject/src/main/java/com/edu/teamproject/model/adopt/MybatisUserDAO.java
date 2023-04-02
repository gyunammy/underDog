package com.edu.teamproject.model.adopt;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.teamproject.domain.User;
import com.edu.teamproject.exception.UserException;

@Repository
public class MybatisUserDAO implements UserDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List selectAll() {
		return sqlSessionTemplate.selectList("User.selectAll");
	}

	@Override
	public void insert(User user) throws UserException{
		int result = sqlSessionTemplate.insert("User.insert", user);
		if(result<1){
			throw new UserException("회원등록 실패");
		}		
	}
}
