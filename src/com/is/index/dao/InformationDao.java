package com.is.index.dao;

import java.util.List;

import com.is.index.dto.InformationDto;

public interface InformationDao {
	public InformationDto UserLogin(InformationDto informationDto);
	public void UserRegist(InformationDto informationDto);
	public List<InformationDto> GetOneUser(InformationDto informationDto);
	public void UpdateUser(InformationDto informationDto);
}
