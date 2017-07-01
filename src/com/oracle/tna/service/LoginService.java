package com.oracle.tna.service;

import mybatis.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.oracle.tna.dao.UserMapper;
import com.oracle.tna.domain.User;

@Service
public class LoginService {

	private static LoginService loginService = new LoginService();
	
	private LoginService(){};
	
	public static LoginService getLoginService(){
		return loginService;
	}
	
	public User getUser(String username){
//		System.out.println("用户查询测试5" + username);
		SqlSession session = mybatis.getSqlSession(true);
//		System.out.println("用户查询测试6" + username);
		UserMapper userMapper = session.getMapper(UserMapper.class);
//		System.out.println("用户查询测试7" + username);
		User user = new User();
//		System.out.println("用户查询测试3" + username);
		user = userMapper.selectByusername(username);
//		System.out.println("用户查询测试4");
	
		return user;
	}
	
	
}
