package com.oracle.tna.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.tna.domain.Item;
import com.oracle.tna.service.ExamService;

@Controller
public class ExamController {
	
private ExamService exam = ExamService.getExamService();
	
//从数据库得到数据
    @RequestMapping("exam.do")
    public String exam(HttpSession session, HttpServletRequest request) throws Exception {
    	
    	
    	List<Item> items = exam.getItems();
    	String correct_answer = "";
    	for(Item temp : items){
    		correct_answer += temp.getAnswer();
    		correct_answer += ",";
    	}//for 循环List取出正确答案
    	session.setAttribute("correct_answer", correct_answer);
    	session.setAttribute("number", items.size());
    	request.setAttribute("items", items);
    	
    	System.out.println("正确答案是: " + correct_answer);
		return "user/exam";
    	
    	
    }
}
