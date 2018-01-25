package com.rj.shared.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.rj.shared.bean.Documen;

public interface IndexMapper {
	
	List<Documen> findOffList(int i);	
	
	//查询表中有几条数据
	public 	 Integer selectDocumenCount(Documen documen);
	//分页
	public List<Documen> selectPage(@Param(value = "start") Integer start,
			@Param(value = "pageSize") Integer pageSize, @Param(value = "documen")Documen documen);
		

}
