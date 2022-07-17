package com.poly.service.Impl;

import java.util.List;

import com.poly.dao.StatsDAO;
import com.poly.dao.impl.StatsDaoImpl;
import com.poly.dto.VideoLikedInfo;
import com.poly.service.StatsService;

public class StatsServiceImpl implements StatsService{
	private StatsDAO statsDao;
	
	public StatsServiceImpl() {
		statsDao = new StatsDaoImpl();
	}
	
	@Override
	public List<VideoLikedInfo> findCideoLikedInfo() {
		return statsDao.findVideoLikedInfo();
	}
	
}
