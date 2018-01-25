package com.rj.shared.controller;
/**
 * 注册模块
 */
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rj.shared.bean.User;
import com.rj.shared.service.RegistService;

@Controller
public class RegistController {
	@Autowired 
	private RegistService registService;
	//用户注册

	@RequestMapping("chkUserName")
	@ResponseBody
	public String chkUserName(String username) {
		User user = registService.findUserByName(username);
		if (user == null) {
			return "0"; // 返回0，说明数据库没有该条数据，前段应该提示，验证通过
		}
		return "1";
	}
	@RequestMapping("/registUser.do")
	public String registUser(User user, HttpSession session) throws NoSuchAlgorithmException {
		//密码加密
		String password = user.getPassword();
		MessageDigest md = MessageDigest.getInstance("MD5");
		byte[] digest = md.digest(password.getBytes());
		String newPassword = new BigInteger(digest).toString();
		user.setPassword(newPassword);
		// 注册用户
		registService.registUser(user);
		return "login";
	}
}
