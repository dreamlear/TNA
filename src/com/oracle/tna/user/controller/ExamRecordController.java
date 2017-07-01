package com.oracle.tna.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.tna.domain.Score;
import com.oracle.tna.domain.User;
import com.oracle.tna.service.ExamRecordService;

@Controller

public class ExamRecordController {
	
	private ExamRecordService record = ExamRecordService.getExamRecordService();
	
    @RequestMapping("exam-record.do")
    public String exam_record(HttpSession session, HttpServletRequest request) throws Exception {
    	User u = (User)session.getAttribute("current_user");
    
    	List<Score> score = record.getScore(u.getUid());

    	
    	request.setAttribute("score_record", score);

		return "user/record";
    	
    	
    }

}
