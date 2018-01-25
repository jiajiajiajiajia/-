package com.rj.shared.mapper;

import java.util.List;

import com.rj.shared.bean.User;

public interface RegistMapper {

	List<User> findUserByName(String username);

	void registUser(User user);
	
}
