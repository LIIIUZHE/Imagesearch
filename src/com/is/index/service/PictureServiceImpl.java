package com.is.index.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.is.index.dao.PictureDao;
import com.is.index.dto.PictureDto;
@Service("pictureService")
public class PictureServiceImpl implements PictureService {
	@Resource
	private PictureDao pictureDao;
	@Override
	public List<PictureDto> GetThreePictureByTime() {
		return pictureDao.GetThreePictureByTime();
	}
	@Override
	public List<PictureDto> GetAllPictureByUserName(PictureDto pictureDto) {
		return pictureDao.GetAllPictureByUserName(pictureDto);
	}
	@Override
	public void AddPicture(PictureDto pictureDto) {
		pictureDao.AddPicture(pictureDto);
	}
	@Override
	public List<PictureDto> SelectPictureLike(PictureDto pictureDto) {
		return pictureDao.SelectPictureLike(pictureDto);
	}
	@Override
	public List<PictureDto> SelectPictureByPictureId(PictureDto pictureDto) {
		return pictureDao.SelectPictureByPictureId(pictureDto);
	}

}
