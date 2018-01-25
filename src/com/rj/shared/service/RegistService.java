package com.rj.shared.service;

import com.rj.shared.bean.User;

public interface RegistService {

	User findUserByName(String username);

	void registUser(User user);

}
