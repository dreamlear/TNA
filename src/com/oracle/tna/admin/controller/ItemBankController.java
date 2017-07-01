package com.oracle.tna.admin.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.tna.domain.Item;
import com.oracle.tna.service.ExamService;


@Controller
public class ItemBankController {
	
private ExamService exam = ExamService.getExamService();
	
    @RequestMapping("item_bank.do")
    public String exam(HttpSession session, HttpServletRequest request) throws Exception {
    	
    	
    	List<Item> items = exam.getItems();
    	session.setAttribute("number", items.size());
    	request.setAttribute("items", items);
    	System.out.println("一共这么多项目 初始页面" + items.size());
    	
		return "admin/item_bank";
    	
    	
    }
    
    @RequestMapping("item_bank_submit.do")
    public String change(HttpSession session, HttpServletRequest request) throws Exception{
    	
    	int number = (Integer) session.getAttribute("number");
    	
		
//    	List<String> question = new ArrayList<String>();
//    	List<String> answerA = new ArrayList<String>();
//    	List<String> answerB = new ArrayList<String>();
//    	List<String> answerC = new ArrayList<String>();
//    	List<String> answerD = new ArrayList<String>();
//    	List<String> answer = new ArrayList<String>();
    	List<Integer> new_items = new ArrayList<Integer>();
    	System.out.println("一共" + number);
		for(int i = 1; i <= number; ++i){
			Item item = new Item();
			item.setQid(i);
			new_items.add(i);
			String question = request.getParameter(i + "question");
			String OptionA = request.getParameter(i + "answerA");
			String OptionB = request.getParameter(i + "answerB");
			String OptionC = request.getParameter(i + "answerC");
			String OptionD = request.getParameter(i + "answerD");
			String answer =  request.getParameter(i + "answer");
			String delete_status = request.getParameter(i + "delete");
			System.out.println("出错检测" + i);
			if(delete_status.equals("已标记")){
				exam.deletebyId(i);
				System.out.println("出错检测:已删除" + i);
				new_items.set(i - 1, 0);
			}else{
				if(!question.equals("#")){
					item.setQuestion(question);
					exam.updataQuestionbyId(item);
				}
				if(!OptionA.equals("#")){
					item.setOption_a(OptionA);
					exam.updataOptionAbyId(item);
				}
				if(!OptionB.equals("#")){
					item.setOption_b(OptionB);
					exam.updataOptionBbyId(item);
				}
				if(!OptionC.equals("#")){
					item.setOption_c(OptionC);
					exam.updataOptionCbyId(item);
				}
				if(!OptionD.equals("#")){
					item.setOption_d(OptionD);
					exam.updataOptionDbyId(item);
				}
				if(!answer.equals("#")){
					int type = 1;
		    		if(answer.length() > 1){
		    			type = 2;
		    		}
					item.setAnswer(answer);
					item.setType(type);
					exam.updataAnswerbyId(item);
				}
				
			}
			
		}//for
		
		
		
		//整理删除后的qid
		int delete_count = 0;
		for(int i = 0; i < new_items.size(); ++i){
//			System.out.println("出错检测4");
			if(new_items.get(i) == 0){
				++delete_count;
			}else{
//				new_items.set(i, i + 1 - delete_count);
				int cur = i + 1 - delete_count;
				int old = i + 1;
				if(cur != old){
					System.out.println("修改编号从   " + old+ "   到" +  cur);
					exam.changeId(old, cur);
					System.out.println("修改完毕");
				}
				
			}
		}
		
		
		List<Item> items = exam.getItems();
    	
    	session.setAttribute("number", items.size());
    	request.setAttribute("items", items);
    	
    	
		return "admin/item_bank";
    }
    
    
    @RequestMapping("add_item.do")
    public String add_item(HttpSession session, HttpServletRequest request, 
    		String question, String optionA, String optionB, 
    		String optionC, String optionD, String answer) throws Exception{
    	
    	int number = (Integer) session.getAttribute("number");
    	
    	if(question.isEmpty()){
    		request.setAttribute("error1", "问题不能为空");
    		return "admin/add_item";
    	}else if(optionA.isEmpty()){
    		request.setAttribute("error2", "选项不能为空");
    		return "admin/add_item";
    	}else if(optionB.isEmpty()){
    		request.setAttribute("error3", "选项不能为空");
    		return "admin/add_item";
    	}else if(optionC.isEmpty()){
    		request.setAttribute("error4", "选项不能为空");
    		return "admin/add_item";
    	}else if(optionD.isEmpty()){
    		request.setAttribute("error5", "选项不能为空");
    		return "admin/add_item";
    	}else if(answer.isEmpty()){
    		request.setAttribute("error6", "答案不能为空");
    		return "admin/add_item";
    	}else{
    		int type = 1;
    		if(answer.length() > 1){
    			type = 2;
    		}
    		Item item = new Item(number + 1,question, optionA, optionB, optionC, optionD, answer, type);
        	exam.addItem(item);
        	List<Item> items = exam.getItems();
        	
        	session.setAttribute("number", items.size());
        	request.setAttribute("items", items);
    		return "admin/item_bank";
    	}
    }
    
    @RequestMapping("search.do")
    public String search(HttpSession session, HttpServletRequest request, String search) throws Exception {
    	
    	
    	List<Item> items = exam.getItemsBysearch(search.trim());
    	if(items.isEmpty()){
    		items = exam.getItems();
        	request.setAttribute("items", items);
    		request.setAttribute("error", "没有找到该题目");
    		return "admin/item_bank";
    	}else{
    		request.setAttribute("items", items);
    		return "admin/item_bank_search";
    	}
    	
    	
    	
    }

}
