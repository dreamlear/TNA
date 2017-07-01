package com.oracle.tna.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.tna.domain.User;
import com.oracle.tna.service.UserlistService;

@Controller

public class UerlistController {
	
	private UserlistService userlist = UserlistService.getExamRecordService();
	
    @RequestMapping("userlist.do")
    public String user_list(HttpSession session, HttpServletRequest request) throws Exception {
    	//User u = (User)session.getAttribute("current_user");
    
    	List<User> user = userlist.getUser();
    	int usercount = userlist.getUsercount();
    	
    	request.setAttribute("user_list", user);
    	request.setAttribute("usercount", usercount);

		return "admin/userlist";
    	
    }

}
