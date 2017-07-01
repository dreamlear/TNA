package com.oracle.tna.service;

import java.util.List;

import mybatis.mybatis;

import org.apache.ibatis.session.SqlSession;

import com.oracle.tna.dao.ScoreMapper;
import com.oracle.tna.dao.UserMapper;
import com.oracle.tna.domain.User;

public class UserlistService {
	private static UserlistService UserlistService = new UserlistService();

	private UserlistService(){};

	public static UserlistService getExamRecordService(){
		return UserlistService;
	}

	public List<User> getUser(){
		SqlSession session = mybatis.getSqlSession(true);
		UserMapper userMapper = session.getMapper(UserMapper.class);
		
		List<User> user = userMapper.selectuser();
		return user;
	}
	public int getUsercount(){
		SqlSession session = mybatis.getSqlSession(true);
		UserMapper userMapper = session.getMapper(UserMapper.class);
		
		int usercount = userMapper.selectusercount();
		return usercount;
	}
	
}
