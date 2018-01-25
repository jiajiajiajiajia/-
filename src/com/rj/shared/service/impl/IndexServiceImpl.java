package com.rj.shared.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rj.shared.bean.Documen;
import com.rj.shared.bean.PageBean;
import com.rj.shared.mapper.IndexMapper;
import com.rj.shared.service.IndexService;
@Transactional
@Service
public class IndexServiceImpl implements IndexService{
	@Autowired
	private IndexMapper indexMapper;

	@Override
	public List<Documen> findOffList(int i) {
		return indexMapper.findOffList(i);
	}

	
	@Override
	public int selectDocumenCount(Documen documen) {
		// TODO Auto-generated method stub
		return indexMapper.selectDocumenCount(documen);
	}

	@Override
	public PageBean selectPage(Integer pageIndex, Integer pageSize, Documen documen) {
		PageBean pb = new PageBean();
		pb.setPageIndex(pageIndex);
		pb.setPageSize(pageSize);
		//计算总页数
		Integer pageCount;
		//总条数
		Integer pageSum =indexMapper.selectDocumenCount(documen);
		if(pageSum%pageSize == 0){
			pageCount = pageSum/pageSize;
		}else{
			pageCount = pageSum/pageSize+1;
		}
		pb.setPageCount(pageCount);
		//查询数据信息
		Integer start = (pageIndex-1)*pageSize;
		List<Documen> docList = indexMapper.selectPage(start, pageSize, documen);
		pb.setDocList(docList);
		return pb;
		}

}
