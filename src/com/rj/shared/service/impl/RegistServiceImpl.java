package com.rj.shared.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rj.shared.bean.User;
import com.rj.shared.mapper.RegistMapper;
import com.rj.shared.service.RegistService;

@Transactional
@Service
public class RegistServiceImpl implements RegistService{
	@Autowired
	private RegistMapper registMapper;
	@Override
	public User findUserByName(String username) {
		List<User> userList = registMapper.findUserByName(username);
		if(userList != null && userList.size()>0){
			return userList.get(0);
		}
		return null;
	}

	@Override
	public void registUser(User user) {
		registMapper.registUser(user);
	}

}
