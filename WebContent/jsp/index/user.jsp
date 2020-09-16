<%@page import="java.util.ArrayList"%>
<%@page import="com.is.index.dto.PictureDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>user</title>
	
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="" />
	
	
	
	<script type="text/javascript" src="<%=basePath%>js/json2.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.11.1.js"></script>
	<script src="<%=basePath%>js/index/user.js"></script>
	
	<script>
		function ww()
		{
			var a='<%= session.getAttribute("username") %>';
			if(a=="null")
			{
			   location.href="index.jsp"
			}
		}
	</script>
	
	
	
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--// Meta tag Keywords -->
	
	<!-- css files -->
	<link rel="stylesheet" href="../../css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="../../css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.min.css" />
	<link rel="stylesheet" href="../../css/fontawesome-all.css"> <!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	
	<!-- web-fonts -->
	<link href="http://fonts.googleapis.com/css?family=Alegreya+Sans:100,100i,300,300i,400,400i,500,500i,700,700i,800,800i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
	<!-- //web-fonts -->
	
</head>
<body onload="ww()">

<header>	
</header>

<!--用户信息-->
<section class="error py-5">
	<div class="container">
		<h2 class="heading text-center text-uppercase mb-5"> <%=(String)session.getAttribute("username") %></h2>
		<div class="row error_content p-sm-5 p-2">
			<div class="col-lg-6 content_left p-sm-5 p-4">
					
					<table class="table table-condensed">
						<tbody id="user_1">
						
						
						</tbody>
						<tr>
							<td><input type="button" value="编辑" class="btn btn-info" id="bt_1"></input></td>
						</tr>
					</table>
					
					
					
			</div>
			<div class="col-lg-6 content_right pt-5 text-center" id="user_2" >
					<span class="fas fa-search" style="background-image: url(../../images/fengmian.png);height: 220px;width: 480px"></span><br>
					<a href="gallery.jsp" ><h3 class="mb-3" style="color: white;">个人相册</h3></a>
					
			</div>
		</div>
	</div>
</section>	
<!-- js-scripts -->		

	<!-- js -->
	<script type="text/javascript" src="../../js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="../../js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap -->
	<!-- //js -->	
	
	<!-- search-bar -->
	<script src="../../js/main.js"></script>
	<!-- //search-bar -->
	
	<!-- start-smoth-scrolling -->
	<script src="../../js/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="../../js/move-top.js"></script>
	<script type="text/javascript" src="../../js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
	</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- start-smoth-scrolling -->
	
<!-- //js-scripts -->

</body>
