package com.oracle.tna.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.tna.domain.User;
import com.oracle.tna.service.LoginService;
import com.oracle.tna.service.RegisterService;

@Controller

public class RegisterController {
	
	
	
	private RegisterService register = RegisterService.getRegisterService();
	
	@RequestMapping("register.do")
	public String Register(HttpSession session, Model model,String account,String password,
			String repassword,String name,String id_card,String phone, String code){
		User user;
    	user = register.getUser(account);
    	boolean inputerror = false;//表示输入是否错误,初始为无错误
    	//未写用户名
    	if(account.equals("")){
    		inputerror = true;
    		model.addAttribute("inerror1", "请输入用户名");
    	}
    	if(password.equals("")){
    		inputerror = true;
    		model.addAttribute("inerror2","请输入密码");
    	}
    	if(!repassword.equals(password)){
    		inputerror = true;
    		model.addAttribute("inerror3","密码不一致");
    	}
    	if(name.equals("")){
    		inputerror = true;
    		model.addAttribute("inerror4","请输入名字");
    	}
    	if(id_card.equals("") || id_card.length() != 18){
    		inputerror = true;
    		model.addAttribute("inerror5","请正确输入身份证号");
    	}
    	if(phone.equals("") || phone.length() != 11){
    		inputerror = true;
    		model.addAttribute("inerror6","请正确输入手机号码");
    	}
    	if(code.equals("wrong")){
    		inputerror = true;
    	}
    	
    	
    	if(inputerror == true){
    		return "user/register";
    	}
    	//若全部输入完成
    	else{
    		//首先判断输入的用户名是否存在
    		//若不存在，则向数据库插入数据
    		if(user == null){
    			User newuser = new User(0,account,password,name,id_card,phone);
    			register.setUser(newuser);
    			return "user/login";
    		}
    		//若存在，则显示用户已存在
    		else{
        		model.addAttribute("error1", "该用户已存在！");
        		return "user/register";
    		}
    	}
    
	}
	
}
