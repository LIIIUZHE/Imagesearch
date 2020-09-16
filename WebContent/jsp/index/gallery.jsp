<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Gallery</title>	
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
	<script type="text/javascript" src="<%=basePath%>js/index/gallery.js"></script>
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

<section class="banner_bottom proj py-5">
		<div class="wrap_view">
		<h1 class="heading text-center text-uppercase mb-5"> 个人相册 </h1>
		<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="background-color: rgba(0, 0, 0, 0.5); font-size: 1.5rem;">
		上传图片
		</button>
			<div class="inner_sec">
				<ul class="portfolio-area" id="pic_1">
				<!-- $("#pic_1").html(str); -->
				</ul>
				<!--end portfolio-area -->
					<div class="clearfix"></div>
			</div>
		</div>
</section>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"></span>
				</button>
				<h4 class="modal-title" id="myModalLabel">上传图片</h4>
			</div>
			<div class="modal-body">
				
				<table class="table table-condensed">
					<tr>
						<td>图片名</td>
						<td><input type="text" id="picture_name" ></input></td>
					</tr>
					<tr>
						<td>图片类型</td>
						<td><input type="text" id="picture_type"></input></td>
					</tr>
					<tr>
						<td>图片描述</td>
						<td> <input type="text" id="picture_describe"></input></td>
					</tr>
					<tr>
						<td>选择图片</td>
						<td>
							<form name="fileUploadForm" id="fileUploadForm" enctype="multipart/form-data">
							<input type="file" name="myFile" id="myFile" style="display:none" onchange="document.fileUploadForm.filePath.value=this.value"></input>
							<input type="text" name="filePath" id="filePath" style="width:188px"></input>
							<img src="<%=basePath %>images/add.jpg" onclick="document.fileUploadForm.myFile.click()" style="width: 68px"/>
							</form>
						</td>
					</tr>
				</table>
			    
				
			</div>
			<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" id="shangchuan" value="上传">上传</button>
			</div>
		</div>
	</div>
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