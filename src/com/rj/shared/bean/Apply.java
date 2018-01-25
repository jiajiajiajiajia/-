package com.rj.shared.bean;

public class Apply {
	private Integer applyid;		//记录ID
	private Integer documenid;			//文档ID
	private Integer userid;			//文档ID
	private String applyname;		//申请人姓名
	private String applytime;		//申请时间
	private Documen Documen;
	private User user;
	
	
	@Override
	public String toString() {
		return "Apply [applyid=" + applyid + ", applyname=" + applyname + ", applytime=" + applytime + ", Documen="
				+ Documen + "]";
	}


	public Integer getApplyid() {
		return applyid;
	}


	public void setApplyid(Integer applyid) {
		this.applyid = applyid;
	}


	public String getApplyname() {
		return applyname;
	}


	public void setApplyname(String applyname) {
		this.applyname = applyname;
	}


	public String getApplytime() {
		return applytime;
	}


	public void setApplytime(String applytime) {
		this.applytime = applytime;
	}


	public Documen getDocumen() {
		return Documen;
	}


	public void setDocumen(Documen documen) {
		Documen = documen;
	}


	public Integer getDocumenid() {
		return documenid;
	}


	public void setDocumenid(Integer documenid) {
		this.documenid = documenid;
	}


	public Integer getUserid() {
		return userid;
	}


	public void setUserid(Integer userid) {
		this.userid = userid;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}
	
	
}
