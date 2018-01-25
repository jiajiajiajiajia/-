package com.rj.shared.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rj.shared.bean.Documen;
import com.rj.shared.bean.PageBean;
import com.rj.shared.bean.User;
import com.rj.shared.mapper.StateMapper;
import com.rj.shared.service.StateService;

@Transactional
@Service
public class StateServiceImpl implements StateService{
	
	
	@Autowired
	private StateMapper dao;

	
	@Override
	public PageBean findConditionPageBean(Integer pageIndex, Integer pageSize, Documen documen) {
		PageBean pb = new PageBean();
		pb.setPageIndex(pageIndex);
		pb.setPageSize(pageSize);
		//计算总页数
		Integer pageCount;
		//总条数
		Integer pageSum = dao.findSumCondition(documen);
		if(pageSum%pageSize == 0){
			pageCount = pageSum/pageSize;
		}else{
			pageCount = pageSum/pageSize+1;
		}
		pb.setPageCount(pageCount);
		//查询数据信息
		Integer start = (pageIndex-1)*pageSize;
		List<Documen> stuList = dao.findConditionPageBean( start,  pageSize, documen);
		pb.setDocList(stuList);
		return pb;
	}
	
	
//	待审核中的国际关系
	@Override
	public List<Documen> findsss() {
		
		return dao.findsss();
	}

	@Override
	public void deletesss(Integer documenid) {
		dao.deletesss(documenid);
		
	}

	@Override
	public void addsss(Documen documen) {
		dao.addsss(documen);
		
	}

	@Override
	public void updatesss(Documen documen) {
		dao.updatesss(documen);
		
	}

	@Override
	public void updatesss2(Documen documen) {
		dao.updatesss2(documen);
	}


	@Override
	public List<Documen> findywc() {
		return dao.findywc();
	}


	@Override
	public void updateywc(Documen documen) {
		dao.updateywc(documen);
		
	}
	
	@Override
	public void deleteywc(Integer documenid) {
		dao.deleteywc(documenid);
		
	}

	@Override
	public List<User> findyh() {
		
		return dao.findyh();
	}

	@Override
	public void  deleteyh(Integer userid) {
		dao.deleteyh(userid);
		
	}

	@Override
	public void addyh(User documen) {
		dao.addyh(documen);
		
	}

	@Override
	public void updateyhty(User documen) {
		dao.updateyhty(documen);
		
	}
	@Override
	public void updateyhqy(User documen) {
		dao.updateyhqy(documen);
		
	}
	
	
	

}
