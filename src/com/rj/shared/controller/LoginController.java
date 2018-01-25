package com.rj.shared.controller;
/**
 * 登录模块
 */
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rj.shared.bean.User;
import com.rj.shared.service.LoginService;

@Controller
public class LoginController {
	@Autowired 
	private LoginService loginService;
	//登录逻辑
	@RequestMapping("userLogin")
	public String userLogin(HttpServletRequest request ,User user, HttpSession session, Model model) throws NoSuchAlgorithmException {
		//获取当前登录时间转化为字符串类型
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String newDate = dateFormat.format(date); 
		//获取前台密码进行加密
		String password = user.getPassword();
		MessageDigest md = MessageDigest.getInstance("MD5");
		byte[] digest = md.digest(password.getBytes());
		String newPassword = new BigInteger(digest).toString();
		//获取当前用户IP存入user表中
		user.setUserip(request.getRemoteAddr());
		//获取当前时间存入user表中
		user.setUsertime(newDate);
		//加密密码存入user表中
		user.setPassword(newPassword);
		//判断用户是否有效
		boolean bAlive = loginService.isAliveUser(user);
		//false  不允许登录
		if(!bAlive){
			model.addAttribute("logTip", "<font color='red' size=4>该用户已停用！</font>");
			return "login";
		}
		// 先将密码加密，重新设置查询的用户的密码，然后进行查询
		User resultUser = loginService.loginUser(user);
		// 登录成功
		if (resultUser != null) {
			loginService.updateUser(user);
			session.setAttribute("user", resultUser);
			return "redirect:findindex.do";
		} else{
			// 登录失败
			model.addAttribute("logTip", "<font color='red' size=4>用户名或密码错误</font>");
			return "login";
		}
	}
	//用户退出登录清空当前页面session
	@RequestMapping("outLogin")
	public String outLogin(HttpSession session){
		session.invalidate();
		return "redirect:findindex.do";
	}
}
