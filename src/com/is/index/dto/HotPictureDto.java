package com.is.index.dto;

import org.springframework.stereotype.Component;

@Component
public class HotPictureDto {
	private String picture_id;
	private String picture_time;
	public String getPicture_id() {
		return picture_id;
	}
	public void setPicture_id(String picture_id) {
		this.picture_id = picture_id;
	}
	public String getPicture_time() {
		return picture_time;
	}
	public void setPicture_time(String picture_time) {
		this.picture_time = picture_time;
	}
}
