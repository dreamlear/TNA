package com.oracle.tna.domain;

public class User {
    private int uid;
    private int admintype; 	//1为管理员 0为用户
    private String username;
    private String password;
    private String name;
    private String idnumber;
    private String telno;
    

   

   

    public User() {
		super();
	}






	public User(int uid, int admintype, String username, String password,
			String name, String idnumber, String telno) {
		super();
		this.uid = uid;
		this.admintype = admintype;
		this.username = username;
		this.password = password;
		this.name = name;
		this.idnumber = idnumber;
		this.telno = telno;
	}
	
	public User(int admintype, String username, String password,
			String name, String idnumber, String telno) {
		super();
		this.admintype = admintype;
		this.username = username;
		this.password = password;
		this.name = name;
		this.idnumber = idnumber;
		this.telno = telno;
	}





	public int getUid() {
		return uid;
	}






	public void setUid(int uid) {
		this.uid = uid;
	}






	public int getAdmintype() {
		return admintype;
	}






	public void setAdmintype(int admintype) {
		this.admintype = admintype;
	}






	public String getUsername() {
		return username;
	}






	public void setUsername(String username) {
		this.username = username;
	}






	public String getPassword() {
		return password;
	}






	public void setPassword(String password) {
		this.password = password;
	}






	public String getName() {
		return name;
	}






	public void setName(String name) {
		this.name = name;
	}






	public String getIdnumber() {
		return idnumber;
	}






	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}






	public String getTelno() {
		return telno;
	}






	public void setTelno(String telno) {
		this.telno = telno;
	}






	@Override
	public String toString() {
		return "User [uid=" + uid + ", admintype=" + admintype + ", username="
				+ username + ", password=" + password + ", name=" + name
				+ ", idnumber=" + idnumber + ", telno=" + telno + "]";
	}






}
