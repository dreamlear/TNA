package com.oracle.tna.domain;
import java.sql.Timestamp;

public class Score {
    private int sid;
    private Timestamp date;
    private int score;
    private String answer;	//正确答案
    private String s_answer;	//用户答案
    private int USER_UID;
    

 
    

    public Score() {
		super();
	}
    public Score(int sid, Timestamp date, int score, String answer,
			String s_answer, int uSER_UID) {
		super();
		this.sid = sid;
		this.date = date;
		this.score = score;
		this.answer = answer;
		this.s_answer = s_answer;
		USER_UID = uSER_UID;
	}
    
    public Score(Timestamp date, int score, String answer,
			String s_answer, int uSER_UID) {
		super();
		this.date = date;
		this.score = score;
		this.answer = answer;
		this.s_answer = s_answer;
		USER_UID = uSER_UID;
	}
	public String getAnswer() {
    	return answer;
    }
    public Timestamp getDate() {
    	return date;
    }public String getS_answer() {
    	return s_answer;
    }
    public int getScore() {
    	return score;
    }
    public int getSid() {
    	return sid;
    }
    public int getUSER_UID() {
    	return USER_UID;
    }
    public void setAnswer(String answer) {
    	this.answer = answer;
    }
    public void setDate(Timestamp date) {
    	this.date = date;
    }public void setS_answer(String s_answer) {
    	this.s_answer = s_answer;
    }public void setScore(int score) {
    	this.score = score;
    }public void setSid(int sid) {
    	this.sid = sid;
    } public void setUSER_UID(int uSER_UID) {
    	USER_UID = uSER_UID;
    }


	@Override
	public String toString() {
		return "Score [sid=" + sid + ", date=" + date + ", score=" + score
				+ ", answer=" + answer + ", s_answer=" + s_answer
				+ ", USER_UID=" + USER_UID + "]";
	}
    
    

}
