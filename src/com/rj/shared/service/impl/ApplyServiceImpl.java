package com.rj.shared.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rj.shared.bean.Apply;
import com.rj.shared.bean.Documen;
import com.rj.shared.mapper.ApplyMapper;
import com.rj.shared.service.ApplyService;


@Transactional
@Service
public class ApplyServiceImpl implements ApplyService{
	
	@Autowired
	private ApplyMapper dao;

	@Override
	public Documen findBook(Integer  documenid) {
		return dao.findBook( documenid);
	}

	@Override
	public List<Documen> findBooks(Integer documenid) {
		return dao.findBooks( documenid);
	}

	@Override
	public void addApply(Apply apply) {
		
		dao.addApply(apply);
		
	}

	@Override
	public void addDocumen(Documen documen) {

		dao.addDocumen(documen);
		
	}

	

}
