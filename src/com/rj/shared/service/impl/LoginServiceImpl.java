package com.rj.shared.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rj.shared.bean.User;
import com.rj.shared.mapper.LoginMapper;
import com.rj.shared.service.LoginService;
@Transactional
@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginMapper loginMapper;
	
	@Override
	public User loginUser(User user) {
		//先判断用户是否有效如果无效返回提示
		//查询用户无效 !=0
		//如果有效走一下登陆逻辑
		List<User> userList = loginMapper.loginUser(user);
		if(userList != null && userList.size()>0){
			return userList.get(0);
		}
		return null;
	}

	@Override
	public void updateUser(User user) {
		loginMapper.updateUser(user);
	}

	@Override
	public boolean isAliveUser(User user) {
		List<User> userList = loginMapper.isAliveUser(user);
		if(userList != null && userList.size()>0){
			return true;
		}
		return false;
	}

}
