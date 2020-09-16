package com.is.index.dao;

import java.util.List;

import com.is.index.dto.PictureDto;

public interface PictureDao {
	public List<PictureDto> GetThreePictureByTime();
	public List<PictureDto> GetAllPictureByUserName(PictureDto pictureDto);
	public void AddPicture(PictureDto pictureDto);
	public List<PictureDto> SelectPictureLike(PictureDto pictureDto);
	public List<PictureDto> SelectPictureByPictureId(PictureDto pictureDto);
}
