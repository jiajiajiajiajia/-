package com.rj.shared.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rj.shared.bean.Documen;
import com.rj.shared.service.MyApplyService;
import com.rj.shared.mapper.MyApplyMapper;
@Transactional
@Service
public class MyApplyServiceImpl implements MyApplyService{

	@Autowired
	private MyApplyMapper dao;
	
	@Override
	public List<Documen> findMyApply(Integer userid) {
		return dao.findMyApply(userid);
	}


}
