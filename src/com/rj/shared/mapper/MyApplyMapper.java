package com.rj.shared.mapper;

import java.util.List;


import com.rj.shared.bean.Documen;


public interface MyApplyMapper {
	
	public List<Documen> findMyApply(Integer userid);
	

}
