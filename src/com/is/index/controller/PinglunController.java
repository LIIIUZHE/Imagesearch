package com.is.index.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.is.index.dto.PinglunDto;
import com.is.index.service.PinglunService;

@Controller
public class PinglunController {
	@Autowired
	private PinglunDto pinglunDto;
	@Resource
	private PinglunService pinglunService;
	
	@RequestMapping(value={"/PinglunPicture"},produces="text/html;charset=UTF-8")
	public @ResponseBody String PinglunPicture(HttpServletResponse response,HttpServletRequest request){
		pinglunDto.setPinglun_pictureid(request.getParameter("picture_id"));
		pinglunDto.setPinglun_content(request.getParameter("picture_content"));
		pinglunService.pinglun(pinglunDto);
		return "1";
	}
}
