package com.rj.shared.controller;


import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rj.shared.bean.Apply;
import com.rj.shared.bean.Documen;
import com.rj.shared.service.ApplyService;


@Controller
public class ApplyController {
	
	@Autowired
	private ApplyService applyService;
	
	@RequestMapping("toApply")
	public String findBook(Model model,Integer documenid) {
		
		Documen documen = applyService.findBook(documenid);
		System.out.println(documenid);
		model.addAttribute("Documen",documen);

		return "apply";
	}
	//添加apply
	@RequestMapping("addApply")
	public String addApply(Apply apply){
		
		//获取当前登录时间转化为字符串类型
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String newDate = dateFormat.format(date);
		//获取当前时间存入apply表中
		apply.setApplytime(newDate);
		System.out.println(newDate);
				
		applyService.addApply(apply);
		return "redirect:findindex.do";
	}
	
	//添加Documen
	@RequestMapping("addDocumen")
	public String addApply(Documen documen){
		
		//获取当前登录时间转化为字符串类型
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String newDate = dateFormat.format(date);
		//获取当前时间存入user表中
		documen.setRectime(newDate);
		
		applyService.addDocumen(documen);
		return "redirect:findindex.do";
	}

}
