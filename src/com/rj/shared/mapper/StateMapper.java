package com.rj.shared.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.rj.shared.bean.Documen;
import com.rj.shared.bean.User;


public interface StateMapper {
	
//	待审核
	public List<Documen> findsss();
	
	public void deletesss(Integer documenid);

	public void addsss(Documen documen);
	
	public void updatesss(Documen documen);
	
	public void updatesss2(Documen documen);
	
//	已完成
	public List<Documen> findywc();
	
	public void deleteywc(Integer documenid);
	
	public void updateywc(Documen documen);
//	用户管理
	public List<User> findyh();
	
	public void  deleteyh(Integer userid);

	public void addyh(User documen);
	
	public void updateyhty(User documen);
	
	public void updateyhqy(User documen);

	public List<Documen> findConditionPageBean(@Param(value = "start") Integer start,
			@Param(value = "pageSize") Integer pageSize, @Param(value = "documen")Documen documen);

	public Integer findSumCondition(Documen documen);

}
