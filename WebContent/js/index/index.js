jQuery(document).ready(function(){
	$.ajax({
		data:"",
		type:"POST",
		dataType:"json",
		url:"../../GetThreePictureByTime",
		success:GetThreePictureByTime
	});
	$.ajax({
		data:"",
		type:"POST",
		dataType:"json",
		url:"../../HotPicture",
		success:HotPicture
	});
	$("#search").change(function(res){
		var picture_describe=res.target.value;
		location.href="selectPicture.jsp?picture_describe="+encodeURI(encodeURI(picture_describe));
		
	});
});
function HotPicture(result){
	var str="";
	for(i=0,j=1;i<result.length;i++,j++){
		str+="<tr>";
		str+="<td><h3 class='mt-3 my-2 text-capitalize' style='font-size: 2rem'>"+j+"</h3></td>";
		str+="<td><h3 class='mt-3 my-2 text-capitalize' style='font-size: 2rem'>"+result[i].picture_name+"</h3></td>";
		str+="<td><h3 class='mt-3 my-2 text-capitalize' style='font-size: 2rem'>"+result[i].picture_author+"</h3></td>";
		str+="<tr>";
	}
	$("#hot").html(str);
	
}
function GetThreePictureByTime(result){
	var str="";
	var str2="";
	str2+="<ul class='rslides' id='slider3'>";
	for(i=0;i<result.length;i++){
		str+="<div class='col-md-4'><img src='../../images/"+result[i].picture_url+"' alt='' class='img-fluid' />";
		str+="<h3 class='mt-3 my-2 text-capitalize'>"+result[i].picture_name+"</h3>";
		str+="<p class='mb-2'>"+result[i].picture_describe+"</p>";
		//str+="<a href='article1.jsp' class='text-capitalize'>更多 </a>";
		str+="</div>";
	}
	for(i=0;i<result.length;i++){
		str2+="<li>";
		str2+="<div class='slider-img1' style='background-image: url(../../images/"+result[i].picture_url+"'>";
		str2+="<div class='dot'>";
		str2+="<div class='container'>";
		str2+="<div class='slider_banner_info_w3ls text-center'>";
		str2+="</div>";
		str2+="</div>";
		str2+="</div>";
		str2+="</div>";
		str2+="</li>";
	}
	str2+="</ul>";
	//$("#div_2").html(str2);
	$("#div_1").html(str);
	
}