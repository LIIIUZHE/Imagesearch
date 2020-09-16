package com.is.index.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.is.index.dao.InformationDao;
import com.is.index.dto.InformationDto;
@Service("informationService")
public class InformationServiceImpl implements InformationService {
	@Resource
	private InformationDao informationDao;
	@Override
	public InformationDto UserLogin(InformationDto informationDto) {
		return informationDao.UserLogin(informationDto);
	}
	@Override
	public void UserRegist(InformationDto informationDto) {
		informationDao.UserRegist(informationDto);
	}
	@Override
	public List<InformationDto> GetOneUser(InformationDto informationDto) {
		return informationDao.GetOneUser(informationDto)
				;
	}
	@Override
	public void UpdateUser(InformationDto informationDto) {
		
		informationDao.UpdateUser(informationDto);
	}


}
