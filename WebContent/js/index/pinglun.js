jQuery(document).ready(function(){
	$("#bt_1").click(function(){
		var picture_id=getParam("picture_id");
		var picture_content=$("#picture_content").val();
		var data={"picture_id":picture_id,
				  "picture_content":picture_content
				 };
			$.ajax({
				data:data,
				type:"POST",
				dataType:"json",
				url:"../../PinglunPicture",
				success:PinglunPicture
			}); 
	});
	
});
function PinglunPicture(result){
	if(result=="1"){
		alert("评论成功");
		window.history.go(-1);
	}
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