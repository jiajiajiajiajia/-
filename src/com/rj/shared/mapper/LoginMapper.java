package com.rj.shared.mapper;

import java.util.List;

import com.rj.shared.bean.User;

public interface LoginMapper {

	List<User> loginUser(User user);

	void updateUser(User user);

	List<User> isAliveUser(User user);


}
