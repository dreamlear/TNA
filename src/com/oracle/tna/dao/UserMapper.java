package com.oracle.tna.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.oracle.tna.domain.User;



//写对应的接口，接口里写对应的方法
@Repository
public interface UserMapper {
	
	public User selectByusername(String username);	
	public void insert(User user);
	public void updateperson(User user); 
	public List<User> selectuser();
	public int selectusercount();
}
