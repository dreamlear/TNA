package com.oracle.tna.domain;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class Item {
    private int qid;
    private String question;
    private String option_a;
    private String option_b;
    private String option_c;
    private String option_d;
    private String answer;
    private int type;



	public Item() {
		super();
	}



	public Item(int qid, String question, String option_a, String option_b,
			String option_c, String option_d, String answer, int type) {
		super();
		this.qid = qid;
		this.question = question;
		this.option_a = option_a;
		this.option_b = option_b;
		this.option_c = option_c;
		this.option_d = option_d;
		this.answer = answer;
		this.setType(type);
	}
	
	public Item(String question, String option_a, String option_b,
			String option_c, String option_d, String answer, int type) {
		super();
		this.question = question;
		this.option_a = option_a;
		this.option_b = option_b;
		this.option_c = option_c;
		this.option_d = option_d;
		this.answer = answer;
		this.setType(type);
	}



	public int getQid() {
		return qid;
	}



	public void setQid(int qid) {
		this.qid = qid;
	}



	public String getQuestion() {
		return question;
	}



	public void setQuestion(String question) {
		this.question = question;
	}



	public String getOption_a() {
		return option_a;
	}



	public void setOption_a(String option_a) {
		this.option_a = option_a;
	}



	public String getOption_b() {
		return option_b;
	}



	public void setOption_b(String option_b) {
		this.option_b = option_b;
	}



	public String getOption_c() {
		return option_c;
	}



	public void setOption_c(String option_c) {
		this.option_c = option_c;
	}



	public String getOption_d() {
		return option_d;
	}



	public void setOption_d(String option_d) {
		this.option_d = option_d;
	}



	public String getAnswer() {
		return answer;
	}



	public void setAnswer(String answer) {
		this.answer = answer;
	}



	@Override
	public String toString() {
		return "Item [qid=" + qid + ", question=" + question + ", option_a="
				+ option_a + ", option_b=" + option_b + ", option_c="
				+ option_c + ", option_d=" + option_d + ", answer=" + answer
				+ "]";
	}



	public int getType() {
		return type;
	}



	public void setType(int type) {
		this.type = type;
	}



	

  
}
