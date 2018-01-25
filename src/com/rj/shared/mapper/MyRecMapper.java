package com.rj.shared.mapper;

import java.util.List;

import com.rj.shared.bean.Documen;

public interface MyRecMapper {

	public List<Documen> findMyRec(Integer userid);
	
}
