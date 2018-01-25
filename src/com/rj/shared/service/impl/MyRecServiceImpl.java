package com.rj.shared.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rj.shared.bean.Documen;
import com.rj.shared.service.MyRecService;
import com.rj.shared.mapper.MyRecMapper;

@Transactional
@Service
public class MyRecServiceImpl implements MyRecService{

	
	@Autowired
	private MyRecMapper dao;
	
	@Override
	public List<Documen> findMyRec(Integer userid) {
		return dao.findMyRec(userid);
	}

	
}
