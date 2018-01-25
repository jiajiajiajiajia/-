package com.rj.shared.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rj.shared.bean.User;
import com.rj.shared.bean.Documen;
import com.rj.shared.bean.PageBean;
import com.rj.shared.service.StateService;

@Controller
public class StateController {
	
	@Autowired
	private StateService stateService;
	
	@RequestMapping("findsss")
	public String findsss( Documen documen, @RequestParam(defaultValue = "1") Integer pageIndex,
			@RequestParam(defaultValue = "8") Integer pageSize, Model model) {
		PageBean pb = stateService.findConditionPageBean(pageIndex, pageSize, documen);
		List<Documen> docu = stateService.findsss();
		model.addAttribute("pb", pb);
		model.addAttribute("list",docu);
		return "state";	
		
	}
//审核
	@RequestMapping("updatesss")
	public String updatesss(Documen documen){		
		stateService.updatesss(documen);
		return "redirect:findsss.do";		
	}
	@RequestMapping("updatesss2")
	public String updatesss2(Documen documen){		
		stateService.updatesss2(documen);
		return "redirect:findsss.do";		
	}
	
	@RequestMapping("findywc")
	public String findywc(Model model) {
		
		List<Documen> documen = stateService.findywc();
		model.addAttribute("list",documen);
		return "state2";	
		
	}
	//删除
	@RequestMapping("deleteywc")
	public String deleteywc (Integer documenid){
	
		stateService.deleteywc(documenid);
		System.out.println(documenid);
		return"redirect:findywc.do";
	}
	//删除
	@RequestMapping("deleteyh")
	public String deleteyh (Integer userid){
	
		stateService.deleteyh(userid);
		System.out.println(userid);
		return"redirect:findyh.do";
	}
	
	@RequestMapping("findyh")
	public String findyh(Model model) {
		
		List<User> user = stateService.findyh();
		model.addAttribute("list",user);
		return "state3";	
		
	}

	@RequestMapping("addyh")
	public String addyh(User user){
		stateService.addyh(user);
		return "redirect:findyh.do";
	}
	
	
	@RequestMapping("updateyhqy")
	public String updateyhqy(User documen){		
		stateService.updateyhqy(documen);
		return "redirect:findyh.do";		
	}
	@RequestMapping("updateyhty")
	public String updateyhty(User documen){		
		stateService.updateyhty(documen);
		return "redirect:findyh.do";		
	}
	
}
