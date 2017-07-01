package com.oracle.tna.service;

import mybatis.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.oracle.tna.dao.UserMapper;
import com.oracle.tna.domain.User;

@Service
public class PersonService {

	private static PersonService loginService = new PersonService();
	
	private PersonService(){};
	
	public static PersonService getPersonService(){
		return loginService;
	}
	
	public User getupdatedUser(User updateduser){
		SqlSession session = mybatis.getSqlSession(true);
		UserMapper userMapper = session.getMapper(UserMapper.class);
		/*User personuser = new User();*/
		User personuser2 = new User();
		/*personuser = userMapper.selectByusername(username);*/
//		System.out.println("1hao"+updateduser);
		userMapper.updateperson(updateduser);
//		System.out.println("2hao"+updateduser);
		personuser2 = userMapper.selectByusername(updateduser.getUsername());
//		System.out.println("ceshi" + personuser2);
		return personuser2;
	}
}
