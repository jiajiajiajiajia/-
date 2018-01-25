package com.rj.shared.controller;
/**
 * 首页模块
 */
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rj.shared.bean.Documen;
import com.rj.shared.bean.PageBean;
import com.rj.shared.service.IndexService;

@Controller
public class IndexController {
	@Autowired
	private IndexService indexService;
	
	
//	//跳转首页查询全部资料
//	@RequestMapping("toIndex")
//	public String findAll(Model model) {
//		
//		//循环查询第四个模块未完成
//		//返回一个结果list,装到model中，返给 前段
//		for(int i =1;i<=4;i++){
//			List<Documen> listOff = indexService.findOffList(i);
//			model.addAttribute("listOff"+i, listOff);
//		}
//
//		return "index";
//
//	}
	
	//分页查询
	@RequestMapping("findindex")
	public String  selectPage(Documen documen, @RequestParam(defaultValue = "1") Integer pageIndex,
				@RequestParam(defaultValue = "6") Integer pageSize, Model model) {
		
		for(int i =1;i<=4;i++){
			List<Documen> listOff = indexService.findOffList(i);
			model.addAttribute("listOff"+i, listOff);
		}
		
		PageBean pb = indexService. selectPage(pageIndex, pageSize, documen);
		model.addAttribute("pb", pb);
		return "index";
	}
	
	
	//首页跳转至登录页面
	@RequestMapping("toLogin")
	public String toLogin() {
		return "login";
	}
//	@RequestMapping("toApply")
//	public String toApply() {
//		return "apply";
//	}
}
