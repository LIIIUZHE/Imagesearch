jQuery(document).ready(function(){
	
	$.ajax({
		data:"",
		type:"POST",
		dataType:"json",
		url:"../../GetUserByUserName",
		success:GetUserByUserName
	});
	$("#bt_1").click(function(){
		var nickname=$("#nickname").val();
		var sex=$("#sex").val();
		var phonenumber=$("#phonenumber").val();
		var birthday=$("#birthday").val();
		var address=$("#address").val();
		var email=$("#email").val();
		var constellation=$("#constellation").val();
		
		var data={"nickname":nickname,
				  "sex":sex,
				  "email":email,
				  "phonenumber":phonenumber,
				  "birthday":birthday,
				  "address":address,
				  "constellation":constellation
				 };
		$.ajax({
			data:data,
			type:"POST",
			dataType:"json",
			url:"../../Update",
			success:Update
		});
		
			
	});

});
function Update(result){
	if(result=="1"){
		alert("修改成功");
	}
	else{
		alert("修改失败");
	}
}
function GetUserByUserName(result){
	var str="";
	for(i=0;i<result.length;i++){
		str+="<tr>";
		str+="<td>昵称</td>";
		str+="<td><input type='text' value='"+result[i].nickname+"' style='border: none;' id='nickname'></input></td>";
		str+="</tr>";
		str+="<tr>";
		str+="<td>性别</td>";
		str+="<td><input type='text' value='"+result[i].sex+"' style='border: none;' id='sex'></input></td>";
		str+="</tr>";
		str+="<tr>";
		str+="<td>电话号</td>";
		str+="<td><input type='text' value='"+result[i].phonenumber+"' style='border: none;' id='phonenumber'></input></td>";
		str+="</tr>";
		str+="<tr>";
		str+="<td>生日</td>";
		str+="<td><input type='text' value='"+result[i].birthday+"' style='border: none;' id='birthday'></input></td>";
		str+="</tr>";
		str+="<tr>";
		str+="<td>邮箱</td>";
		str+="<td><input type='text' value='"+result[i].email+"' style='border: none;' id='email'></input></td>";
		str+="</tr>";
		str+="<tr>";
		str+="<td>地址</td>";
		str+="<td><input type='text' value='"+result[i].address+"' style='border: none;' id='address'></input></td>";
		str+="</tr>";
		str+="<tr>";
		str+="<td>星座</td>";
		str+="<td><input type='text' value='"+result[i].constellation+"' style='border: none;' id='constellation'></input></td>";
		str+="</tr>";
	}
	$("#user_1").html(str);
}