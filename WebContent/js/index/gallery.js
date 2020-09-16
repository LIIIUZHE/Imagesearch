jQuery(document).ready(function(){
	$.ajax({
		data:"",
		type:"POST",
		dataType:"json",
		url:"../../GetAllPictureByUserName",
		success:GetAllPictureByUserName
	});
	$("#shangchuan").click(function(){
		var formData=new FormData($("#fileUploadForm")[0]);
		
		var picture_name=$("#picture_name").val();
		var picture_type=$("#picture_type").val();
		var picture_describe=$("#picture_describe").val();
		var filePath=$("#filePath").val();
		var filePath1=filePath.split("\\");
		var picture_url=filePath1[filePath1.length-1];
		
		var myDate = new Date();
		var year=myDate.getFullYear();
		var month=myDate.getMonth()+1;
		var day=myDate.getDate();
		
		if(month<10){
			month="0"+month;
		}
		if(day<10){
			day="0"+day;
		}
		var time=year+"-"+month+"-"+day;
		
		var data={"picture_name":picture_name,
				  "picture_type":picture_type,
				  "picture_describe":picture_describe,
				  "picture_time":time,
				  "picture_url":picture_url
		 };
		$.ajax({
			data:formData,
			type:"POST",
			contentType:false,
			cache:false,
			processData:false,
			url:"../../fileUpload",
			success:function (result){
				
			}
		});
		
		$.ajax({
			data:data,
			type:"POST",
			dataType:"json",
			url:"../../AddPicture",
			success:AddPicture
		});
		
		
	});
});
function GetAllPictureByUserName(result){
	var str="";
	for(i=0;i<10;i++){
		str+="<li class='portfolio-item2 mb-2' data-id='id-0' data-type='cat-item-4'>";
		str+="<div>";
		str+="<span class='image-block img-hover'>";
		str+="<a class='image-zoom' href='../../images/"+result[i].picture_url+"' rel='prettyPhoto[gallery]'>";
		str+="<img src='../../images/"+result[i].picture_url+"' class='img-responsive' alt='Cafe In image'>";
		str+="<div class='port-info'>";
		str+="<h5>"+result[i].picture_name+"</h5>";
		str+="<p>"+result[i].picture_describe+"</p>";
		str+="</div>";
		str+="</a>";
		str+="</span>";
		str+="</div>";
		str+="</li>";
	}
	$("#pic_1").html(str);
}
function AddPicture(result){
	if(result=="1"){
		alert("上传成功");
	}else{
		alert("上传失败");
	}
}