package com.is.index.dto;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class PictureDto implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String picture_id;
	private String picture_name;
	private String picture_type;
	private String picture_describe;
	private String picture_author;
	private String picture_url;
	private String picture_time;
	public String getPicture_time() {
		return picture_time;
	}
	public void setPicture_time(String picture_time) {
		this.picture_time = picture_time;
	}
	public String getPicture_id() {
		return picture_id;
	}
	public void setPicture_id(String picture_id) {
		this.picture_id = picture_id;
	}
	public String getPicture_name() {
		return picture_name;
	}
	public void setPicture_name(String picture_name) {
		this.picture_name = picture_name;
	}
	public String getPicture_type() {
		return picture_type;
	}
	public void setPicture_type(String picture_type) {
		this.picture_type = picture_type;
	}
	public String getPicture_describe() {
		return picture_describe;
	}
	public void setPicture_describe(String picture_describe) {
		this.picture_describe = picture_describe;
	}
	public String getPicture_author() {
		return picture_author;
	}
	public void setPicture_author(String picture_author) {
		this.picture_author = picture_author;
	}
	public String getPicture_url() {
		return picture_url;
	}
	public void setPicture_url(String picture_url) {
		this.picture_url = picture_url;
	}
}
