package com.rj.shared.service;
import java.util.List;

import com.rj.shared.bean.Documen;

public interface MyRecService {
	public List<Documen> findMyRec(Integer userid);
}
