package com.rj.shared.service;

import com.rj.shared.bean.User;

public interface LoginService {

	User loginUser(User user);

	void updateUser(User user);

	boolean isAliveUser(User user);



}
