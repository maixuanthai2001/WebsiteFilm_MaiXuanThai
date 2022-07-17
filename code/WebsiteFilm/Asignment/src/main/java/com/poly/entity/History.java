package com.poly.entity;

import java.io.Serializable;
import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import java.sql.Timestamp;


/**
 * The persistent class for the history database table.
 * 
 */
@Entity
@Table(name="history")
@NamedQuery(name="History.findAll", query="SELECT h FROM History h")
public class History implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private boolean isLike;

	private Timestamp likeDate;

	private Timestamp viewedDate;

	//bi-directional many-to-one association to User
	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name="userid", referencedColumnName = "id")
	@JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
	private User user;

	//bi-directional many-to-one association to Video
	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name="videoid", referencedColumnName = "id")
	@JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
	private Video video;

	public History() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public boolean getIsLike() {
		return this.isLike;
	}

	public void setIsLike(boolean isLike) {
		this.isLike = isLike;
	}

	public Timestamp getLikeDate() {
		return this.likeDate;
	}

	public void setLikeDate(Timestamp likeDate) {
		this.likeDate = likeDate;
	}

	public Timestamp getViewedDate() {
		return this.viewedDate;
	}

	public void setViewedDate(Timestamp viewedDate) {
		this.viewedDate = viewedDate;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Video getVideo() {
		return this.video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

}