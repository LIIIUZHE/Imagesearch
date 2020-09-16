package com.is.index.service;

import java.util.List;

import com.is.index.dto.PictureDto;

public interface PictureService {
	public List<PictureDto> GetThreePictureByTime();
	public List<PictureDto> GetAllPictureByUserName(PictureDto pictureDto);
	public void AddPicture(PictureDto pictureDto);
	public List<PictureDto> SelectPictureLike(PictureDto pictureDto);
	public List<PictureDto> SelectPictureByPictureId(PictureDto pictureDto);
}
