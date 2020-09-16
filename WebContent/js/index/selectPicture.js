jQuery(document).ready(function(){
	var picture_describe=$("#wa").val();
	var data={"picture_describe":picture_describe
			
	};
	$.ajax({
		data:data,
		type:"POST",
		dataType:"json",
		url:"../../SelectPictureLike",
		success:SelectPictureLike
	}); 

});
function SelectPictureLike(result){
	var str="";
	for(i=0;i<result.length;i++){
		str+="<li class='portfolio-item2 mb-2' data-id='id-0' data-type='cat-item-4'>";
		str+="<div>";
		str+="<span class='image-block img-hover'>";
		str+="<image src='../../images/"+result[i].picture_url+"' class='img-responsive' alt='Cafe In image' onclick='pinglun("+result[i].picture_id+")'>";
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
function pinglun(picture_id){
	location.href="pinglun.jsp?picture_id="+picture_id;
}

function getParam(paramName) {
	paramValue = "";
	isFound = false;
	if (this.location.search.indexOf("?") == 0
			&& this.location.search.indexOf("=") > 1) {
		arrSource = unescape(this.location.search).substring(1,
				this.location.search.length).split("&");
		i = 0;
		while (i < arrSource.length && !isFound) {
			if (arrSource[i].indexOf("=") > 0) {
				if (arrSource[i].split("=")[0].toLowerCase() == paramName
						.toLowerCase()) {
					paramValue = arrSource[i].split("=")[1];
					isFound = true;
				}
			}
			i++;
		}
	}
	return paramValue;
}