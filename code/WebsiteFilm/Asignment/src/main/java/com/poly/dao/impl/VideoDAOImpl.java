package com.poly.dao.impl;

import java.util.List;

import com.poly.dao.AbstractDAO;
import com.poly.dao.VideoDAO;
import com.poly.entity.Video;

public class VideoDAOImpl extends AbstractDAO<Video> implements VideoDAO{

	@Override
	public Video findById(Integer id) {
		// TODO Auto-generated method stub
		return super.finbyId(Video.class, id);
	}

	@Override
	public Video findByHref(String href) {
		String sql = "SELECT o FROM Video o WHERE o.href = ?0";
		return super.findOne(Video.class, sql, href);
	}

	@Override
	public List<Video> findAll() {
		return super.findAll(Video.class, true);
	}

	@Override
	public List<Video> findAll(int PageNumber, int PageSize) {
		// TODO Auto-generated method stub
		return super.findAll(Video.class, true, PageNumber, PageSize);
	}

}
