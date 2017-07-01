package com.oracle.tna.user.controller;

public class answer_tool {
	private String c_answer;
	private String u_answer;
	private int mark;

	

	public int getMark() {
		return mark;
	}

	public void setMark(int mark) {
		this.mark = mark;
	}

	private int num;
	
	
	
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getC_answer() {
		return c_answer;
	}

	public void setC_answer(String c_answer) {
		this.c_answer = c_answer;
	}

	public String getU_answer() {
		return u_answer;
	}

	public void setU_answer(String u_answer) {
		this.u_answer = u_answer;
	}

	public answer_tool() {
		super();
	}

	public answer_tool(String c_answer, String u_answer, int num, int isTrue) {
		super();
		this.c_answer = c_answer;
		this.u_answer = u_answer;
		this.num = num;
		this.mark = isTrue;
	}

	
}
