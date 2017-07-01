package com.oracle.tna.admin.controller;

import java.sql.Timestamp;

public class ScoreUser {
	private int sid;
	private String username;
	private String name;
	private Timestamp date;
    private int score;
    private int USER_UID;
	
    public ScoreUser(){
    	super();
    }
    
    public ScoreUser(int sid,String username,String name,Timestamp date,int score,int USER_UID){
    	super();
    	this.sid = sid;
    	this.username = username;
    	this.name = name;
    	this.date = date;
    	this.score = score;
    	this.USER_UID = USER_UID;
    }
    
    public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public int getUSER_UID() {
		return USER_UID;
	}
	public void setUSER_UID(int uSER_UID) {
		USER_UID = uSER_UID;
	}
}
