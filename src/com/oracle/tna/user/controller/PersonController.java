package com.oracle.tna.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.tna.domain.User;
import com.oracle.tna.service.PersonService;


@Controller

public class PersonController {
	
   
	private PersonService person = PersonService.getPersonService();
	
    @RequestMapping("/person.do")
    public String alterperson(HttpSession session, HttpServletRequest request, Model model, String username,String password,String name,String idnumber,String telno) throws Exception {
    	request.setCharacterEncoding("UTF-8");
    	System.out.println("乱码问题:" + name);
    	User user;
//    	System.out.println("用户名" + username);
    	User updateduser = new User(0,username,password,name,idnumber,telno);
    	
    	boolean inputerror = false;//表示输入是否错误,初始为无错误
    	if(password.equals("")){
    		inputerror = true;
    		model.addAttribute("inerror2","请输入密码");
    	}
    	if(name.equals("")){
    		inputerror = true;
    		model.addAttribute("inerror4","请输入名字");
    	}
    	if(idnumber.equals("") || idnumber.length() != 18){
    		inputerror = true;
    		model.addAttribute("inerror5","请正确输入身份证号");
    	}
    	if(telno.equals("") || telno.length() != 11){
    		inputerror = true;
    		model.addAttribute("inerror6","请正确输入手机号码");
    	}
    	
    	if(inputerror == true){
    		return "user/personalInfo";
    	}
    	//若全部输入完成
    	else{
    		user = person.getupdatedUser(updateduser);
        	session.setAttribute("current_user", user);
        	return "user/personalInfo";
    	}
    }
}
