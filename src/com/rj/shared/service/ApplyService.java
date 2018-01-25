package com.rj.shared.service;


import java.util.List;

import com.rj.shared.bean.Apply;
import com.rj.shared.bean.Documen;

public interface ApplyService {
	
	public Documen findBook(Integer documenid);
	
	public List<Documen>findBooks(Integer documenid);
	
	public void addApply(Apply apply);
	
	public void addDocumen(Documen documen);

}
