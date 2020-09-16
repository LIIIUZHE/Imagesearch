package com.is.index.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.is.index.dao.PinglunDao;
import com.is.index.dto.PinglunDto;
@Service("pinglunService")
public class PinglunServiceImpl implements PinglunService{
	@Resource
	private PinglunDao pinglunDao;
	@Override
	public void pinglun(PinglunDto pinglunDto) {
		pinglunDao.pinglun(pinglunDto);
	}
	@Override
	public List<PinglunDto> SelectPinglunByPictureId(PinglunDto pinglunDto) {
		return pinglunDao.SelectPinglunByPictureId(pinglunDto);
	}

}
