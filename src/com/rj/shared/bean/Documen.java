package com.rj.shared.bean;

import com.rj.shared.bean.PageBean;

public class Documen extends PageBean{
	private Integer documenid;			//文档ID
	private String chiTitle;			//中文标题
	private String author;				//作者
	private String Authors;				//作者简介
	private String content;				//内容简介
	private String enclosure;			//源文附件
	private Integer channelid;			//栏目ID
	private Integer recid;				//推荐人ID
	private String recname;				//推荐人姓名
	private String rectime;				//推荐时间
	private String recstate;			//推荐状态(1通过)
	
	
	public Documen(){
		
	}

	public Integer getDocumenid() {
		return documenid;
	}

	public void setDocumenid(Integer documenid) {
		this.documenid = documenid;
	}

	public String getChiTitle() {
		return chiTitle;
	}

	public void setChiTitle(String chiTitle) {
		this.chiTitle = chiTitle;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getAuthors() {
		return Authors;
	}

	public void setAuthors(String authors) {
		Authors = authors;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getEnclosure() {
		return enclosure;
	}

	public void setEnclosure(String enclosure) {
		this.enclosure = enclosure;
	}

	public Integer getChannelid() {
		return channelid;
	}

	public void setChannelid(Integer channelid) {
		this.channelid = channelid;
	}

	public Integer getRecid() {
		return recid;
	}

	public void setRecid(Integer recid) {
		this.recid = recid;
	}

	public String getRecname() {
		return recname;
	}

	public void setRecname(String recname) {
		this.recname = recname;
	}

	public String getRectime() {
		return rectime;
	}

	public void setRectime(String rectime) {
		this.rectime = rectime;
	}

	public String getRecstate() {
		return recstate;
	}

	public void setRecstate(String recstate) {
		this.recstate = recstate;
	}


	@Override
	public String toString() {
		return "Documen [documenid=" + documenid + ", chiTitle=" + chiTitle + ", author=" + author + ", Authors="
				+ Authors + ", content=" + content + ", enclosure=" + enclosure + ", channelid=" + channelid
				+ ", recid=" + recid + ", recname=" + recname + ", rectime=" + rectime + ", recstate=" + recstate
				+ "]";
	}
	
	
}
