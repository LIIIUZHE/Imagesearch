package com.is.index.service;

import java.util.List;

import com.is.index.dto.PinglunDto;

public interface PinglunService {
	public void pinglun(PinglunDto pinglunDto);
	public List<PinglunDto> SelectPinglunByPictureId(PinglunDto pinglunDto);
}
