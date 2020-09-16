package com.is.index.controller;

import java.util.Comparator;

import com.is.index.dto.HotPictureDto;

public class SortClass2 implements Comparator{

	@Override
	public int compare(Object arg0, Object arg1) {
		HotPictureDto hot1=(HotPictureDto)arg0;
		HotPictureDto hot2=(HotPictureDto)arg1;
		
		int flag=hot1.getPicture_time().toString().compareTo(hot2.getPicture_time().toString());
		return -flag;
	}

}
