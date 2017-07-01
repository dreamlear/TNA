package com.oracle.tna.user.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.tna.domain.User;
import com.oracle.tna.service.LoginService;


@Controller

public class LoginController {
	
   
	private LoginService login = LoginService.getLoginService();
	
    @RequestMapping("/login.do")
    public String Login(HttpSession session, Model model, String account,String password) throws Exception {
    	
    	User user;
//    	System.out.println("用户查询测试1" + account);
    	user = login.getUser(account);
//    	System.out.println("用户查询测试2");
    	if(user == null){
    		model.addAttribute("error1", "用户不存在");
    		return "user/login";
    	}//if 查不到用户
    	else if(!user.getPassword().equals(password)){
    		model.addAttribute("error2", "密码错误");
    		return "user/login";
    	}//密码错误
    	else{
    		session.setAttribute("current_user", user);
    		
    		model.addAttribute("password",user.getPassword());
    		if(user.getAdmintype() == 0){
    			return "user/firstpage";
    		}
    		else if(user.getAdmintype() == 1){
    			return "admin/admin_firstpage";
    		}
    		
    	}//登录成功
		return "user/firstpage";
    	
   
        }
}
