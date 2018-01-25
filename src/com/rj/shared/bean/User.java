package com.rj.shared.bean;


public class User {
	private int userid;				//用户ID
	private String username;		//用户姓名即登录账号
	private String userunit;		//用户学号
	private String password;		//用户密码
	private String userip;			//用户最后一次登录ip
	private String usertime;		//用户最后一次登录时间
	private int isadmin;			//是否为管理员
	private int userstate;			//该账户是否被停用
	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username + ", userunit=" + userunit + ", password=" + password
				+ ", userip=" + userip + ", usertime=" + usertime + ", isadmin=" + isadmin + ", userstate=" + userstate
				+ "]";
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserunit() {
		return userunit;
	}
	public void setUserunit(String userunit) {
		this.userunit = userunit;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserip() {
		return userip;
	}
	public void setUserip(String userip) {
		this.userip = userip;
	}
	public String getUsertime() {
		return usertime;
	}
	public void setUsertime(String usertime) {
		this.usertime = usertime;
	}
	public int getIsadmin() {
		return isadmin;
	}
	public void setIsadmin(int isadmin) {
		this.isadmin = isadmin;
	}
	public int getUserstate() {
		return userstate;
	}
	public void setUserstate(int userstate) {
		this.userstate = userstate;
	}
	
	


}
