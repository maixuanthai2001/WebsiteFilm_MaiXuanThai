package com.poly.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.poly.dao.AbstractDAO;
import com.poly.dao.StatsDAO;
import com.poly.dto.VideoLikedInfo;

public class StatsDaoImpl extends AbstractDAO<Object[]> implements StatsDAO{

	@Override
	public List<VideoLikedInfo> findVideoLikedInfo() {
		String sql = "select v.id, v.title, v.href, SUM(CAST(h.isLike as int)) as totallike"
				+ " from video v left join history h on v.id = h.videoid"
				+ " where v.isActive = 1"
				+ " group by v.id, v.title, v.href"
				+ " order by SUM(CAST(h.isLike as int)) desc";
			List<Object[]> objects= super.findManyByNativeQuery(sql);
			List<VideoLikedInfo> result = new ArrayList<>();
			objects.forEach(object -> {
				VideoLikedInfo videoLikedInfo = setDataVideoLikedInfo(object);
				result.add(videoLikedInfo);
			});
			return result;
	}

	private VideoLikedInfo setDataVideoLikedInfo(Object[] object) {
		VideoLikedInfo videoLikedInfo = new VideoLikedInfo();
		videoLikedInfo.setVideoid((Integer)object[0]);
		videoLikedInfo.setTitle((String) object[1]);
		videoLikedInfo.setHref((String) object[2]);
		videoLikedInfo.setTotalLike(object[3] == null ? 0 : (Integer) object[3]);	
		return videoLikedInfo;
	}

}
