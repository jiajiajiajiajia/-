package com.rj.shared.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.rj.shared.bean.Documen;
import com.rj.shared.service.MyApplyService;

@Controller
public class MyApplyController {
	
	@Autowired
	private MyApplyService service;
	
	@RequestMapping("/findMyApply")
	public String findMyApply(Model model,Integer userid) {
		List<Documen> list = service.findMyApply (userid);
		model.addAttribute("list",list);
		return "MyApply";
	}
}
