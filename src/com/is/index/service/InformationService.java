package com.is.index.service;

import java.util.List;

import com.is.index.dto.InformationDto;

public interface InformationService {
	public InformationDto UserLogin(InformationDto informationDto);
	public void UserRegist(InformationDto informationDto);
	public List<InformationDto> GetOneUser(InformationDto informationDto);
	public void UpdateUser(InformationDto informationDto);
}
