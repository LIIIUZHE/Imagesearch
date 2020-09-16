package com.is.index.controller;

import java.util.Comparator;

import com.is.index.dto.PictureDto;

public class SortClass implements Comparator{

	@Override
	public int compare(Object o1, Object o2) {
		PictureDto pictureDto1=(PictureDto) o1;
		PictureDto pictureDto2=(PictureDto) o2;
		
		int flag=pictureDto1.getPicture_time().toString().compareTo(pictureDto2.getPicture_time().toString());
		return -flag;
	}

}
