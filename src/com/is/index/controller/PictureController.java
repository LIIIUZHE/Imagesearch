package com.is.index.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.is.index.dto.HotPictureDto;
import com.is.index.dto.InformationDto;
import com.is.index.dto.PictureDto;
import com.is.index.dto.PinglunDto;
import com.is.index.service.InformationService;
import com.is.index.service.PictureService;
import com.is.index.service.PinglunService;

import net.sf.json.JSONArray;

@Controller
public class PictureController {
	@Autowired
	private InformationDto informationDto;
	@Resource
	private InformationService informationService;
	@Autowired
	private PictureDto pictureDto;
	@Resource
	private PictureService pictureService;
	@Autowired
	private PinglunDto pinglunDto;
	@Resource
	private PinglunService pinglunService;
	
	@RequestMapping(value={"/GetThreePictureByTime"},produces="text/html;charset=UTF-8")
	public @ResponseBody String GetThreePictureByTime(HttpServletResponse response,HttpServletRequest request){
		String result="";
		HttpSession session=request.getSession();
		List<PictureDto> list=new ArrayList<PictureDto>();
		list=pictureService.GetThreePictureByTime();
		List<PictureDto> list2=new ArrayList<PictureDto>();
		SortClass sort = new SortClass();
		Collections.sort(list, sort);
		for (int i = 0; i < 3; i++) {
			list2.add(list.get(i));
		}
		result=JSONArray.fromObject(list2).toString();
		return result;
	}
	@RequestMapping(value={"/GetAllPictureByUserName"},produces="text/html;charset=UTF-8")
	public @ResponseBody String GetAllPictureByUserName(HttpServletResponse response,HttpServletRequest request){
		HttpSession session=request.getSession();
		informationDto.setUsername(session.getAttribute("username").toString());
		List<InformationDto> list1=new ArrayList<InformationDto>();
		list1=informationService.GetOneUser(informationDto);
		List<PictureDto> list=new ArrayList<PictureDto>();
		pictureDto.setPicture_author(list1.get(0).getUserid());
		list=pictureService.GetAllPictureByUserName(pictureDto);
		String result="";
		result=JSONArray.fromObject(list).toString();
		return result;
	}
	@RequestMapping(value={"/AddPicture"},produces="text/html;charset=UTF-8")
	public @ResponseBody String AddPicture(HttpServletResponse response,HttpServletRequest request){
		HttpSession session=request.getSession();
		informationDto.setUsername(session.getAttribute("username").toString());
		List<InformationDto> list=new ArrayList<InformationDto>();
		list=informationService.GetOneUser(informationDto);
		pictureDto.setPicture_author(list.get(0).getUserid());
		pictureDto.setPicture_describe(request.getParameter("picture_describe"));
		pictureDto.setPicture_name(request.getParameter("picture_name"));
		pictureDto.setPicture_time(request.getParameter("picture_time"));
		pictureDto.setPicture_type(request.getParameter("picture_type"));
		pictureDto.setPicture_url(request.getParameter("picture_url"));
		
		pictureService.AddPicture(pictureDto);
		
		return "1";
	}
	@RequestMapping(value={"/SelectPictureLike"},produces="text/html;charset=UTF-8")
	public @ResponseBody String SelectPictureLike(HttpServletResponse response,HttpServletRequest request){
		pictureDto.setPicture_describe("%"+request.getParameter("picture_describe")+"%");
		List<PictureDto> list=new ArrayList<PictureDto>();
		list=pictureService.SelectPictureLike(pictureDto);
		return JSONArray.fromObject(list).toString();
	}
	@RequestMapping(value={"/HotPicture"},produces="text/html;charset=UTF-8")
	public @ResponseBody String HotPicture(HttpServletResponse response,HttpServletRequest request){
		List<PictureDto> list=new ArrayList<PictureDto>();
		list=pictureService.GetThreePictureByTime();
		List<HotPictureDto> hotList=new ArrayList<HotPictureDto>();
		for(int i=0;i<list.size();i++){
			List<PinglunDto> pinglunList=new ArrayList<PinglunDto>();
			pinglunDto.setPinglun_pictureid(list.get(i).getPicture_id());
			pinglunList=pinglunService.SelectPinglunByPictureId(pinglunDto);
			HotPictureDto hDto=new HotPictureDto();
			if(pinglunList.get(0)!=null){
				hDto.setPicture_id(pinglunList.get(0).getPinglun_pictureid());
				hDto.setPicture_time(Integer.toString(pinglunList.size()));
				hotList.add(hDto);
			}
		}
		List<HotPictureDto> hotList2=new ArrayList<HotPictureDto>();
		SortClass2 sort=new SortClass2();
		Collections.sort(hotList, sort);
		for (int i = 0; i < 5; i++) {
			hotList2.add(hotList.get(i));
		}
		List<PictureDto> fList=new ArrayList<>();
		for(int i=0;i<hotList2.size();i++){
			PictureDto pictureDto2=new PictureDto();
			pictureDto2.setPicture_id(hotList2.get(i).getPicture_id());
			List<PictureDto> slist=new ArrayList<PictureDto>();
			slist=pictureService.SelectPictureByPictureId(pictureDto2);
			PictureDto pictureDto3=new PictureDto();
			pictureDto3.setPicture_name(slist.get(0).getPicture_name());
			pictureDto3.setPicture_author(slist.get(0).getPicture_author());
			fList.add(pictureDto3);
		}
		return JSONArray.fromObject(fList).toString();
	}
	
}
