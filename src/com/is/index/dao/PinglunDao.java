package com.is.index.dao;

import java.util.List;

import com.is.index.dto.PinglunDto;

public interface PinglunDao {
	public void pinglun(PinglunDto pinglunDto);
	public List<PinglunDto> SelectPinglunByPictureId(PinglunDto pinglunDto);
}
