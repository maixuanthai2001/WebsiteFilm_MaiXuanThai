package com.poly.service.Impl;

import java.sql.Timestamp;
import java.util.List;

import com.poly.dao.HistoryDAO;
import com.poly.dao.impl.HistoryDAOImpl;
import com.poly.entity.History;
import com.poly.entity.User;
import com.poly.entity.Video;
import com.poly.service.HistoryService;
import com.poly.service.VideoService;

public class HistoryServiceImpl implements HistoryService{

	private HistoryDAO dao;
	private VideoService videoService = new VideoServiceImpl();
	
	
	public HistoryServiceImpl() {
		dao = new HistoryDAOImpl();
	}
	
	@Override
	public List<History> findByUser(String username) {
		// TODO Auto-generated method stub
		return dao.findByUser(username);
	}

	@Override
	public List<History> findByUserAndIsLiked(String username) {
		// TODO Auto-generated method stub
		return dao.findByUserAndIsLiked(username);
	}

	@Override
	public History findByUserIdAndVideoId(Integer userId, Integer videoId) {
		// TODO Auto-generated method stub
		return dao.findByUserIdAndVideoId(userId, videoId);
	}

	@Override
	public History create(User user, Video video) {
		History exisHistory = findByUserIdAndVideoId(user.getId(), video.getId());
		if(exisHistory == null) {
			exisHistory = new History();
			exisHistory.setUser(user);
			exisHistory.setVideo(video);
			exisHistory.setViewedDate(new Timestamp(System.currentTimeMillis()));
			exisHistory.setIsLike(Boolean.FALSE);
			return dao.create(exisHistory);
		}		
		return exisHistory;
	}

	@Override
	public boolean updateLikeOrUnlike(User user, String videoHref) {
		Video video = videoService.findByHref(videoHref);
		History exisstHistory = findByUserIdAndVideoId(user.getId(), video.getId());
		
		if(exisstHistory.getIsLike() == Boolean.FALSE) {
			exisstHistory.setIsLike(Boolean.TRUE);
			exisstHistory.setLikeDate(new Timestamp(System.currentTimeMillis()));
		}else {
			exisstHistory.setIsLike(Boolean.FALSE);
			exisstHistory.setLikeDate(null);
		}
		History updateHistory = dao.update(exisstHistory);
		return updateHistory != null ? true : false;
	}

}
