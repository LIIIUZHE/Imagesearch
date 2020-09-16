package com.is.index.controller;



import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

@Controller
//@RequestMapping(value={"upload"})
public class FileUpload {
	@RequestMapping(value={"/fileUpload"})
	public @ResponseBody String upload(MultipartFile myFile,HttpServletRequest request){
		String path=request.getRealPath("images");
		String fileName=myFile.getOriginalFilename();
		try {
			myFile.transferTo(new File(path+"\\"+fileName));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
