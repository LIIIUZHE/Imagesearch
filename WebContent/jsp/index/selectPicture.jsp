<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html lang="en">
<head>
<title>selectPicture</title>
	
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="" />
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
	<link rel="stylesheet" href="../../css/fontawesome-all.css"> <!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->

	<link href="../../css/prettyPhoto.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=basePath%>js/json2.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/index/selectPicture.js"></script>
	
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
	<!-- web-fonts -->
	<link href="http://fonts.googleapis.com/css?family=Alegreya+Sans:100,100i,300,300i,400,400i,500,500i,700,700i,800,800i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
	<!-- //web-fonts -->
	
</head>

<body onload="ww()">

<%
	String str1="";
if(request.getParameter("picture_describe")!=null){
	str1=URLDecoder.decode(request.getParameter("picture_describe"),"utf-8");
}
%>
<section class="banner_bottom proj py-5">
		<div class="wrap_view">
		<input type="text" value="<%=str1%>" style="display: none" id="wa"></input>
		<h1 class="heading text-center text-uppercase mb-5"> 搜索结果 </h1>
			<div class="inner_sec">
				<ul class="portfolio-area" id="pic_1">
				<!-- $("#pic_1").html(str); -->
				</ul>
				<!--end portfolio-area -->
					<div class="clearfix"></div>
			</div>
		</div>
</section>
	
	
	
	
</div>
	
	
	

	<!-- js -->
	<script type="text/javascript" src="<%=basePath%>js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap -->
	<!-- //js -->	
	
	<!-- search-bar -->
	<script src="<%=basePath%>js/main.js"></script>
	<!-- //search-bar -->
	
	<!-- start-smoth-scrolling -->
	<script src="<%=basePath%>js/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/move-top.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/easing.js"></script>
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

	<!-- jQuery-Photo-filter-lightbox-Gallery-plugin -->
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.js"></script>
	<script src="<%=basePath%>js/jquery.quicksand.js" type="text/javascript"></script>
	<script src="<%=basePath%>js/script.js" type="text/javascript"></script>
	<script src="<%=basePath%>js/jquery.prettyPhoto.js" type="text/javascript"></script>
	<!-- //jQuery-Photo-filter-lightbox-Gallery-plugin -->
	
<!-- //js-scripts -->

</body>
</html>