package com.oracle.tna.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.tna.domain.Score;
import com.oracle.tna.domain.User;
import com.oracle.tna.service.ExamRecordService;
@Controller
public class AdminExamRecordController {
private ExamRecordService record = ExamRecordService.getExamRecordService();
	
    @RequestMapping("examRecord.do")
    public String examRecord(HttpSession session, HttpServletRequest request) throws Exception {
    
    	List<ScoreUser> scoreList = record.getAllScore();
    	int recordnum = record.getRecordNum();
    	float avgscore = record.getAvgScore();
    	
    	request.setAttribute("recordnum",recordnum);
    	request.setAttribute("avgscore", avgscore);
    	request.setAttribute("scoreRecord", scoreList);
    	

		return "admin/examRecord";
    	
    	
    }
}
