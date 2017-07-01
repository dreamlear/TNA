package com.oracle.tna.user.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.tna.domain.Item;
import com.oracle.tna.domain.Score;
import com.oracle.tna.domain.User;
import com.oracle.tna.service.ExamResultService;
import com.oracle.tna.service.ExamService;
import com.oracle.tna.user.controller.answer_tool;

@Controller
public class ExamResultController {
	
	private ExamResultService result = ExamResultService.getExamResultService();
	private ExamService exam = ExamService.getExamService();
	
	@RequestMapping("examResult.do")
    public String examResult(HttpSession session, HttpServletRequest request) throws Exception {
    	
		
		//将此次考试记录录入数据库
		
		//获取正确答案
		String correct_answer = (String) session.getAttribute("correct_answer");
		int number = (Integer) session.getAttribute("number");
		//获取用户答案
		String user_answer = "";
		
		for(int i = 1; i <= number; ++i){
			
			String [] temp = request.getParameterValues("item" + i);
			String answer = "";
			
			if(temp != null){
				for(String t : temp){
					answer += t;
				}
			}else{
				answer = "N";
			}
			
			
			user_answer += answer;
			user_answer += ",";
		}//for
		
//		System.out.println("用户答案" + correct_answer);
		System.out.println("用户答案" + user_answer);
		
		
		//对比标准答案与用户答案  得到得分
		List<answer_tool> answer = new ArrayList<answer_tool>();
		String c_answer[]=correct_answer.split(",");
		
		String u_answer[] = user_answer.split(",");
		int wrong_count = 0;
		
		for(int i = 0; i < u_answer.length; ++i){
			answer_tool temp = new answer_tool();
			temp.setC_answer(String.valueOf(c_answer[i]));

			temp.setU_answer(String.valueOf(u_answer[i]));

			temp.setNum(i + 1);
			temp.setMark(1);

			if(!c_answer[i].equals(u_answer[i]) ){
				temp.setMark(2);
				++wrong_count;
			}//if
			answer.add(temp);
		}//for 

		
		
		int total_score = u_answer.length * 10;
		int user_score = total_score - wrong_count * 10;
		
		//将此次考试记录进数据库
		User current_user = (User) session.getAttribute("current_user");
		
		System.out.println(current_user);
		
		int Uid = current_user.getUid();
		Timestamp date =new Timestamp(new Date().getTime());
		Score score_record = new Score( date, user_score, correct_answer,
				user_answer, Uid);
		System.out.println(score_record);
		
		result.InsertScore(score_record);
		
		//传输数据给考试成绩展示页面
		
		request.setAttribute("total_score", total_score);
		request.setAttribute("user_score", user_score);
		request.setAttribute("answer", answer);
		
		
		return "user/examResult";
    	
    	
    }
}
