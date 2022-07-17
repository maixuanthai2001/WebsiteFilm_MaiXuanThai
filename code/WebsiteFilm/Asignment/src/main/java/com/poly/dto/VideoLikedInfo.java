package com.poly.dto;

public class VideoLikedInfo {

	private Integer videoid;
	private String title;
	private String href;
	private Integer totalLike;
	public Integer getVideoid() {
		return videoid;
	}
	public void setVideoid(Integer videoid) {
		this.videoid = videoid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getHref() {
		return href;
	}
	public void setHref(String href) {
		this.href = href;
	}
	public Integer getTotalLike() {
		return totalLike;
	}
	public void setTotalLike(Integer totalLike) {
		this.totalLike = totalLike;
	}
	
	
}
