package com.rj.shared.bean;

import java.util.List;

public class PageBean {
	
	private Integer pageIndex; //当前页
	private Integer pageSize;   //每页条数
	private Integer pageCount;   //总页数
	private List<Documen> docList; //每页数据
	public Integer getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(Integer pageIndex) {
		this.pageIndex = pageIndex;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getPageCount() {
		return pageCount;
	}
	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}
	public List<Documen> getDocList() {
		return docList;
	}
	public void setDocList(List<Documen> stuList) {
		this.docList = stuList;
	}

	
}
