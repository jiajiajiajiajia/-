package com.rj.shared.service;

import java.util.List;

import com.rj.shared.bean.Documen;
import com.rj.shared.bean.PageBean;

public interface IndexService {

	List<Documen> findOffList(int i);
	
	//查询user表中有几条数据
	public 	int selectDocumenCount(Documen documen);
	//分页
	public PageBean selectPage(Integer pageIndex, Integer pageSize,Documen documen);
	


}
