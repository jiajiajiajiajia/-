package com.rj.shared.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rj.shared.bean.Documen;
import com.rj.shared.service.MyRecService;

@Controller
public class MyRecController {
	
	@Autowired
	private MyRecService service;
	
	@RequestMapping("/findMyRec")
	public String findMyRec(Model model,Integer userid) {
		List<Documen> list = service.findMyRec (userid);
		model.addAttribute("list",list);
		return "MyRec";
	}

}
