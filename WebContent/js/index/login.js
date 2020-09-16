jQuery(document).ready(function(){
	$.ajax({
		data:"",
		type:"POST",
		dataType:"json",
		url:"../../userjiazai",
		success:function (result){
		
			if(result=="1")
			{
				document.getElementById("zaq").style.display="none";
				document.getElementById("yss").style.display="block";
			}
			else{
				document.getElementById("zaq").style.display="block";
				document.getElementById("yss").style.display="none";
			}
		}
	});
	
	$("#login").click(function(){
		var username=$("#username").val();
		var password=$("#password").val();	
		var data={"username":username,
				  "password":password
				 };
		$.ajax({
			data:data,
			type:"POST",
			dataType:"json",
			url:"../../UserLogin",
			success:userlogin
		});
	});

	$("#zhuxiao").click(function(){
		$.ajax({
			data:"",
			type:"POST",
			dataType:"json",
			url:"../../zhuxiao",
			success: function (result){
				window.location.reload();
			}
		});
		window.location.reload();
	});
	$("#regist").click(function(){
		var str="";
		str+="<tr>";
		str+="<td>";
		str+=" 确认密码：";
		str+="</td>";
		str+="<td>";
		str+="<input type='text' id='password2'></input>";
		str+=" </td>";
		str+="</tr>";
		str+="<tr>";
		str+="<td>";  
		str+="昵称：";
		str+="</td>";
		str+=" <td>";
		str+="<input type='text' id='nickname'></input> ";
		str+=" </td>";
		str+="</tr>";
		str+="<tr>";
		str+="<td> ";
		str+="性别： ";  
		str+="</td>";
		str+="<td>";
		str+=" <input type='radio' value='男' name='sex'>男</input> <input type='radio' name='sex' value='女'>女</input>";
		str+=" </td>";
		str+="</tr>";
		str+="<tr>";
		str+="<td> ";
		str+="电话号：";
		str+="</td>";
		str+="<td>";
		str+="<input type='text' id='phonenumber'></input>";
		str+="</td>";
		str+="</tr> ";
		str+="<tr>";
		str+="<td> ";
		str+="生日：";
		str+="</td>";
		str+="<td>";
		str+="<input type='datetime' id='birthday'></input>";
		str+="</td>";
		str+="</tr> ";
		str+="<tr>";
		str+="<td> ";
		str+=" 邮箱：";
		str+=" </td>";
		str+="<td>";
		str+="<input type='text' id='email'></input>";
		str+="</td>";
		str+="</tr> ";
		str+="<tr>";
		str+="<td>";
		str+="地址：";
		str+="</td>";
		str+="<td>";
		str+="<input type='text' id='address'></input> ";
		str+="</td>";
		str+="</tr> ";
		str+="<tr>";
		str+=" <td>";
		str+="星座：";
		str+="</td>";
		str+="<td>";
		str+="<input type='text' id='constellation'></input>";
		str+="</td>";
		str+="</tr>";
		//alert(str);
		$("#tbody_1").html(str);
		document.getElementById("login").style.display="none";
		document.getElementById("regist").style.display="none";
		document.getElementById("regist1").style.display="block";
//		var username=$("#username").val();
//		var password=$("#password").val();
//		var data={"username":username,
//				  "password":password
//			};
//		$.ajax({
//			data:data,
//			type:"POST",
//			dataType:"json",
//			url:"../../regist",
//			success: regist
//		});
	});
	
	$("#regist1").click(function(){
		var username=$("#username").val();
		var password=$("#password").val();
		var password2=$("#password2").val();
		var nickname=$("#nickname").val();	
		var sex1=document.getElementsByName("sex");
		for(i=0; i<sex1.length;i++){
			if(sex1[i].checked){
				var sex=sex1[i].value;
			}
		}
		var phonenumber=$("#phonenumber").val();	
		var birthday=$("#birthday").val();	
		var email=$("#email").val();	
		var address=$("#address").val();	
		var constellation=$("#constellation").val();
		var re1 = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
		var re2 = /^1\d{10}$/;
		if(username=='')
		{
			alert("用户名不能为空");
			$("#username").focus();
			return;
		}
		if(password=='')
		{
			alert("请填写密码！");
			$("#password").focus();
			return;
		}
		if(password!=password2){
			alert("两次密码输入不一致！");
			$("#password2").focus();
			return;
		}
		if(email=='')
		{
			alert("请填写邮箱！");
			$("#emal").focus();
			return;
		}
		if(re1.test(email)==false)
		{
			alert("邮箱不合法");
			$("#email").focus();
			return;
		}
		if(re2.test(phonenumber)==false)
		{
			alert("电话号不合法！");
			$("#phonenumber").focus();
			return;
		}
		var data={"username":username,
				  "password":password,
				  "nickname":nickname,
				  "sex":sex,
				  "phonenumber":phonenumber,
				  "birthday":birthday,
				  "email":email,
				  "address":address,
				  "constellation":constellation
				 };
		$.ajax({
			data:data,
			type:"POST",
			dataType:"json",
			url:"../../regist",
			success:regist
		});
	});
	
});

function userlogin(result){
	if(result=="1"){
		//alert("登陆成功");
		window.location.reload();
	}
	else{
		alert("登录失败");
	}
}
function regist(result){
	if(result=="1"){
		alert("注册成功");
		window.location.reload();
	}
	if(result=="2"){
		alert("用户名已经存在");
	}
	if(result=="0"){
		alert("注册失败");
	}
}
