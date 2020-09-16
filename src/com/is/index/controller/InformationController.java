package com.is.index.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.is.index.dto.InformationDto;
import com.is.index.service.InformationService;

import net.sf.json.JSONArray;


@Controller
public class InformationController {
	@Autowired
	private InformationDto informationDto;
	@Resource
	private InformationService informationService;
	
	@RequestMapping(value={"/UserLogin"})
	public @ResponseBody String UserLogin(HttpServletResponse response,HttpServletRequest request){
		HttpSession session=request.getSession();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		String result="";
		
		informationDto.setUsername(username);
		informationDto.setPassword(password);
		

		
		if(informationService.UserLogin(informationDto)!=null){
			session.setAttribute("username", username);
			result="1";
		}
		else{
			result="0";
		}
		return result;
	}
	
	@RequestMapping(value={"/userjiazai"})
	public @ResponseBody String userjiazai(HttpServletResponse response,HttpServletRequest request){
		HttpSession session=request.getSession();
		String result="";
		if(session.getAttribute("username")==null){
			result="0";
		}
		else{
			result="1";
		}
		return result;
	}
	
	@RequestMapping(value={"/zhuxiao"})
	public @ResponseBody String zhuxiao(HttpServletResponse response,HttpServletRequest request){
		HttpSession session=request.getSession();
		session.removeAttribute("username");
		return null;
	}
	
	@RequestMapping(value={"/regist"})
	public @ResponseBody String UserRegist(HttpServletResponse response,HttpServletRequest request){
		String result="";
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String nickname=request.getParameter("nickname");
		String sex=request.getParameter("sex");
		String phonenumber=request.getParameter("phonenumber");
		String birthday=request.getParameter("birthday");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String constellation=request.getParameter("constellation");
		informationDto.setUsername(username);
		informationDto.setPassword(password);
		informationDto.setNickname(nickname);
		informationDto.setSex(sex);
		informationDto.setPhonenumber(phonenumber);
		informationDto.setBirthday(birthday);
		informationDto.setEmail(email);
		informationDto.setAddress(address);
		informationDto.setConstellation(constellation);
		//System.out.println(username+password+nickname+sex+phonenumber+birthday+email+address+constellation);
		
		List<InformationDto> list=new ArrayList<InformationDto>();
		list=informationService.GetOneUser(informationDto);
		if(list.size()!=0){
			result="2";
		}else if(list.size()==0){
			informationService.UserRegist(informationDto);
			result="1";
		}else {
			result="0";
		}
		return result;
	}
	@RequestMapping(value={"/GetUserByUserName"},produces="text/html;charset=UTF-8")
	public @ResponseBody String GetUserByUserName(HttpServletResponse response,HttpServletRequest request){
		HttpSession session=request.getSession();
		informationDto.setUsername(session.getAttribute("username").toString());
		String result="";
		List<InformationDto> list=new ArrayList<InformationDto>();
		list=informationService.GetOneUser(informationDto);
		result=JSONArray.fromObject(list).toString();
		
		return result;
	}
	@RequestMapping(value={"/Update"},produces="text/html;charset=UTF-8")
	public @ResponseBody String Update(HttpServletResponse response,HttpServletRequest request){
		HttpSession session=request.getSession();
		informationDto.setUsername(session.getAttribute("username").toString());
		informationDto.setNickname(request.getParameter("nickname"));
		informationDto.setSex(request.getParameter("sex"));
		informationDto.setEmail(request.getParameter("email"));
		informationDto.setPhonenumber(request.getParameter("phonenumber"));
		informationDto.setBirthday(request.getParameter("birthday"));
		informationDto.setAddress(request.getParameter("address"));
		informationDto.setConstellation(request.getParameter("constellation"));
		informationService.UpdateUser(informationDto);
		
		return "1";
	}
	
}
