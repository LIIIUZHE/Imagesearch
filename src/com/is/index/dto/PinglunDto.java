package com.is.index.dto;

import org.springframework.stereotype.Component;

@Component
public class PinglunDto {
	private String pinglun_id;
	private String pinglun_pictureid;
	private String pinglun_content;
	public String getPinglun_id() {
		return pinglun_id;
	}
	public void setPinglun_id(String pinglun_id) {
		this.pinglun_id = pinglun_id;
	}
	public String getPinglun_pictureid() {
		return pinglun_pictureid;
	}
	public void setPinglun_pictureid(String pinglun_pictureid) {
		this.pinglun_pictureid = pinglun_pictureid;
	}
	public String getPinglun_content() {
		return pinglun_content;
	}
	public void setPinglun_content(String pinglun_content) {
		this.pinglun_content = pinglun_content;
	}
}
