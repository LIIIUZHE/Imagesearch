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
<title>Home</title>

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
<link rel="stylesheet" href="../../css/bootstrap.css">
<!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="../../css/style.css" type="text/css"
	media="all" />
<!-- Style-CSS -->
<link rel="stylesheet" href="../../css/fontawesome-all.css">
<!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->

<link href="../../css/prettyPhoto.css" rel="stylesheet" type="text/css" />

<!-- web-fonts -->
<link
	href="http://fonts.googleapis.com/css?family=Alegreya+Sans:100,100i,300,300i,400,400i,500,500i,700,700i,800,800i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	rel="stylesheet">
<!-- //web-fonts -->
<script type="text/javascript" src="<%=basePath%>js/json2.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="<%=basePath%>js/index/login.js"></script>
<script type="text/javascript" src="<%=basePath%>js/index/index.js"></script>
</head>
<body>

<!-- Navigation --><!-- 顶部横栏 -->
<header>
<div class="top-nav">
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light">
			<a class="navbar-brand text-uppercase" href="index.jsp">imagesearch</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
			</button>
	<div class="collapse navbar-collapse justify-content-center pr-md-4" id="navbarSupportedContent">
		<ul class="navbar-nav ml-auto">
			
			<li class="nav-item"><a class="nav-link" href="index.jsp">主页</a>
			</li>	
	<!-- 搜索 -->			
	<div class="search-bar-agileits">
		<div class="cd-main-header">
		<ul class="cd-header-buttons">
			<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a>
			</li>
		</ul>
		</div>
		<div id="cd-search" class="cd-search">
			
				<input name="Search" id="search" type="search" placeholder="输入并按下回车...">

		</div>
	</div>
		</ul>
	</div>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<div style="display: block" id="zaq">
		<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="background-color: rgba(0, 0, 0, 0.5); font-size: 1.5rem;">
		登录/注册
		</button>
	</div>
	<div style="display: none; font-size: 25px; color: white" id="yss">
		<!-- <button type="button" style="background:none;border:none;color: white;" id="buttonu"></button> -->
		<a href="user.jsp" style="color: white;"><%=(String)session.getAttribute("username") %></a>
		<input type="button" value="注销" id="zhuxiao" class="btn btn-primary btn-lg" style="background:none;border:none;"></input>
	</div>
		</nav>
	</div>
</div>
</header>
<!-- //Navigation -->

<!-- 登录注册弹出框 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"></span>
				</button>
				<h4 class="modal-title" id="myModalLabel">登录/注册</h4>
			</div>
			<div class="modal-body">
				<table>
					<tr>
						<td>用户名：</td>
						<td><input type="text" id="username"></input></td>
					</tr>
					<tr>
						<td>密码：</td>
						<td><input type="text" id="password"></input></td>
					</tr>
					<!-- 使弹出框加长JS -->
					<tbody id="tbody_1">
					</tbody>
				</table>
				<input type="button" value="登录" id="login" class="btn btn-primary"></input> 
				<input type="button" value="沒有账户？" id="regist" class="btn btn-primary"></input>
				<input type="button" value="注册" id="regist1" style="display: none" class="btn btn-primary"></input>
			</div>
			<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<!-- <button type="button" class="btn btn-primary" >确定</button>-->
			</div>
		</div>
	</div>
</div>

<!--主页滚动页-->
<div class="slider">
	<div class="callbacks_container">
		<ul class="rslides" id="slider3">
			<li>
				<div class="slider-img1" >
					<div class="dot">
						<div class="container">
							<div class="slider_banner_info_w3ls text-center">
									<!-- <h1 class="text-uppercase">Cafe & Bar</h1> 滚动页大字体 -->
							</div>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="slider-img2" >
					<div class="dot">
						<div class="container">
							<div class="slider_banner_info_w3ls text-center">
									<!--<h2 class="text-uppercase">Restaurant</h2>-->
							</div>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="slider-img3">
					<div class="dot">
						<div class="container">
							<div class="slider_banner_info_w3ls text-center">
									<!--<h4 class="text-uppercase">5 Star Hotel</h4>-->
							</div>
						</div>
					</div>
				</div>
			</li>
		</ul>
	</div>
	<div class="clearfix">
	</div>
</div>

<!-- 作者心德 -->
<section class="about py-5">
	<div class="container">
		<h3 class="heading text-center text-uppercase mb-5">日常推荐</h3>
		<p class="aboutpara text-center">Photos,Words</p>
		<div class="row about_grids mt-5" id="div_1">
			
		</div>
	</div>
</section>

<!-- 热门图片 -->
<section class="aboutbottom-grids pt-5 container-fluid">
	<div class="row">
		<div class="col-lg-6 aboutleft">
			<img src="../../images/2.jpg" alt="" class="img-fluid" />
		</div>
		<div class="col-lg-6 p-sm-5 p-3 aboutright">
			<h3 class="mb-3">热门图片</h3>
			<!-- <iframe src="" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen>
			</iframe> -->
			<div style="background-color: yellow;height: 250px;width:450px;">
			<table style="height: 250px;width:450px;">
				 <tbody id="hot">
				 
				 </tbody>
							
			</table>
			</div>
		</div>
	</div>
</section>

<!-- 数据回显img src="../../images/1.png" -->
<section class="stats_test pb-5 container-fluid">
	<div class="row inner_stat_wthree_agileits">
		<div class="col-sm-3 col-6 py-5 stats_left counter_grid">
			<i class="fas fa-users" ></i>
			<p class="counter">145</p>
			<h4>图片</h4>
		</div>
		<div class="col-sm-3 col-6 py-5 stats_left counter_grid1">
			<i class="fas fa-users" ></i>
			<p class="counter">165</p>
			<h4>用户</h4>
		</div>
		<div class="col-sm-3 col-6 py-5 stats_left counter_grid2">
			<i class="far fa-edit" ></i>
			<p class="counter">563</p>
			<h4>文章</h4>
		</div>
		<div class="col-sm-3 col-6 py-5 stats_left counter_grid3">
			<i class="far fa-smile" style="background-image: url(../../images/xiao4.png); height: 50px;width:50px;"></i>
			<p class="counter">1045</p>
			<h4>评论</h4>
		</div>
	</div>
</section>

<!-- How we Work 
<section class="work py-5">
	<div class="container">
		<h3 class="heading text-center text-uppercase mb-5">How We Work
		</h3>
		<div class="row">
			<div class="col-lg-3 col-sm-6 grid1">
				<img src="../../images/1.png" alt="" class="img-fluid mb-3">
				<h3 class="my-2">Spicy & Delicious</h3>
				<p class="">Maecenas ac euismod eros porta. Aliquam a suscipitnibh. Aliquam iaculis erat porta mauris.</p>
				<p></p>
			</div>
			<div class="col-lg-3 col-sm-6 grid1">
					<img src="../../images/2.png" alt="" class="img-fluid mb-3">
					<h3 class="my-2">Healthy Food</h3>
					<p class="">Maecenas ac euismod eros porta. Aliquam a suscipitnibh. Aliquam iaculis erat porta mauris.</p>
					<p></p>
			</div>
			<div class="col-lg-3 col-sm-6 mt-lg-0 mt-sm-5 grid1">
					<img src="../../images/3.png" alt="" class="img-fluid mb-3">
					<h3 class="my-2">Home Delivery</h3>
					<p class="">Maecenas ac euismod eros porta. Aliquam a suscipitnibh. Aliquam iaculis erat porta mauris.</p>
					<p></p>
			</div>
			<div class="col-lg-3 col-sm-6 mt-lg-0 mt-sm-5 grid2">
					<img src="../../images/aa.jpg" alt="" class="img-fluid">
			</div>
		</div>
	</div>
</section> -->

<!-- 图片展示 -->
<section class="banner_bottom proj py-5">
	<div class="wrap_view">
		<h3 class="heading text-center text-uppercase mb-5">图片展示</h3>
		<div class="inner_sec">
			<ul class="portfolio-categ filter">
				<li class="port-filter all active"><a href="#">全部</a></li>
				<li class="cat-item-1"><a href="#" title="Category 1">壁纸</a></li>
				<li class="cat-item-2"><a href="#" title="Category 2">人物</a></li>
				<li class="cat-item-3"><a href="#" title="Category 3">风景</a></li>
				<li class="cat-item-4"><a href="#" title="Category 4">动漫</a></li>
			</ul>
			<ul class="portfolio-area">
				<li class="portfolio-item2 mb-2" data-id="id-0" data-type="cat-item-4">
					<div><!-- -->
						<span class="image-block img-hover"><a class="image-zoom"href="../../images/g1.jpg" rel="prettyPhoto[gallery]">  
						<img src="../../images/g1.jpg" class="img-responsive" alt="Cafe In image">
						<div class="port-info">
							<h5>tom</h5>
							<p>我是评论123</p>
						</div>
						</a>
						</span>
					</div>
				</li>
				<li class="portfolio-item2 mb-2" data-id="id-1"data-type="cat-item-2">
					<div>
						<span class="image-block"> <a class="image-zoom"href="../../images/g2.jpg" rel="prettyPhoto[gallery]">
						<img src="../../images/g2.jpg" class="img-responsive"alt="Cafe In image">
						<div class="port-info">
							<h5>Healthy Food</h5>
							<p>Delicious Food For All</p>
						</div>
						</a>
						</span>
					</div>
				</li>
				<li class="portfolio-item2 mb-2" data-id="id-2"data-type="cat-item-1">
					<div>
						<span class="image-block"> <a class="image-zoom"href="../../images/g3.jpg" rel="prettyPhoto[gallery]"> 
						<img src="../../images/g3.jpg" class="img-responsive"alt="Cafe In image">
						<div class="port-info">
							<h5>Healthy Food</h5>
							<p>Delicious Food For All</p>
						</div>
						</a>
						</span>
					</div>
				</li>
				<li class="portfolio-item2 mb-2" data-id="id-3"data-type="cat-item-4">
					<div>
						<span class="image-block"> <a class="image-zoom"href="../../images/g4.jpg" rel="prettyPhoto[gallery]"> 
						<img src="../../images/g4.jpg" class="img-responsive"alt="Cafe In image">
						<div class="port-info">
							<h5>Healthy Food</h5>
							<p>Delicious Food For All</p>
						</div>
						</a>
						</span>
					</div>
				</li>
				<li class="portfolio-item2 mb-2" data-id="id-4"data-type="cat-item-3">
					<div>
						<span class="image-block"> <a class="image-zoom"href="../../images/g5.jpg" rel="prettyPhoto[gallery]">
						<img src="../../images/g5.jpg" class="img-responsive"alt="Cafe In image">
						<div class="port-info">
							<h5>Healthy Food</h5>
							<p>Delicious Food For All</p>
						</div>
						</a>
						</span>
					</div>
				</li>
				<li class="portfolio-item2 mb-2" data-id="id-5"data-type="cat-item-2">
					<div>
						<span class="image-block"> <a class="image-zoom"href="../../images/g6.jpg" rel="prettyPhoto[gallery]"> 
						<img src="../../images/g6.jpg" class="img-responsive"alt="Cafe In image">
						<div class="port-info">
							<h5>Healthy Food</h5>
							<p>Delicious Food For All</p>
						</div>
						</a>
						</span>
					</div>
				</li>
				<li class="portfolio-item2 mb-2" data-id="id-6"data-type="cat-item-1">
					<div>
						<span class="image-block"> <a class="image-zoom"href="../../images/g7.jpg" rel="prettyPhoto[gallery]">
						<img src="../../images/g7.jpg" class="img-responsive"alt="Cafe In image">
							<div class="port-info">
								<h5>Healthy Food</h5>
								<p>Delicious Food For All</p>
							</div>
						</a>
						</span>
					</div>
				</li>
				<li class="portfolio-item2 mb-2" data-id="id-7"data-type="cat-item-1">
					<div>
						<span class="image-block"> <a class="image-zoom"href="../../images/g8.jpg" rel="prettyPhoto[gallery]">
						<img src="../../images/g8.jpg" class="img-responsive"alt="Cafe In image">
						<div class="port-info">
							<h5>Healthy Food</h5>
							<p>Delicious Food For All</p>
						</div>
						</a>
						</span>
					</div>
				</li>
				<li class="portfolio-item2 mb-2" data-id="id-7"data-type="cat-item-3">
					<div>
						<span class="image-block"> <a class="image-zoom"href="../../images/g9.jpg" rel="prettyPhoto[gallery]">
						<img src="../../images/g9.jpg" class="img-responsive"alt="Cafe In image">
						<div class="port-info">
							<h5>Healthy Food</h5>
							<p>Delicious Food For All</p>
						</div>
						</a>
						</span>
					</div>
				</li>
				<li class="portfolio-item2 mb-2" data-id="id-7"data-type="cat-item-2">
					<div>
						<span class="image-block"> <a class="image-zoom"href="../../images/g10.jpg" rel="prettyPhoto[gallery]">
						<img src="../../images/g10.jpg" class="img-responsive"alt="Cafe In image">
						<div class="port-info">
							<h5>Healthy Food</h5>
							<p>Delicious Food For All</p>
						</div>
						</a>
						</span>
						</div>
				</li>
			</ul>
			<!--end portfolio-area -->
			<div class="clearfix"></div><!--留白 -->
		</div>
	</div>
</section>

<!--人气用户-->
<section class="Team py-5">
	<div class="container">
		<h3 class="heading text-center text-uppercase mb-5">热门用户
		</h3>
		<div class="row inner-sec-w3layouts-agileinfo">
			<div class="col-md-3 col-sm-6 team-grids">
				<img src="../../images/p1.jpg" class="img-responsive" alt="">
				<div class="team-info">
					<div class="caption">
						<h4>John Doe</h4>
						<h6>Shutterbug</h6>
					</div>
					<div class="social-icons-section">
						<a class="fac" href="#">
						<i class="fab fa-facebook "></i>
						</a> 
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 team-grids">
				<img src="../../images/p2.jpg" class="img-responsive" alt="">
					<div class="team-info">
						<div class="caption">
							<h4>Alina Smith</h4>
							<h6>Shutterbug</h6>
						</div>
						<div class="social-icons-section">
							<a class="fac" href="#">
							<i class="fab fa-facebook"></i>
							</a> 
						</div>
					</div>
			</div>
			<div class="col-md-3 col-sm-6 team-grids">
				<img src="../../images/p3.jpg" class="img-responsive" alt="">
					<div class="team-info">
						<div class="caption">
							<h4>Adam Lobster</h4>
							<h6>Shutterbug</h6>
						</div>
						<div class="social-icons-section">
							<a class="fac" href="#"> <i class="fab fa-facebook"></i>
							</a> 
						</div>
					</div>
			</div>
				<div class="col-md-3 col-sm-6 team-grids">
					<img src="../../images/p4.jpg" class="img-responsive" alt="">
					<div class="team-info">
						<div class="caption">
							<h4>Christina</h4>
							<h6>Shutterbug</h6>
						</div>
						<div class="social-icons-section">
							<a class="fac" href="#"> <i class="fab fa-facebook"></i>
							</a>
						</div>
					</div>
				</div>
		</div>
	</div>
</section>

<!-- 订阅 -->
<!--
<section class="newsletter text-center py-5">
	<div class="container">
		<h3 class="heading text-center text-uppercase mb-5"> Newsletter </h3>
		
		<div class="subscribe_inner">
			<p class="mb-4">Maecenas ac euismod eros. Aliquam a suscipit nibh. Aliquam iaculis erat porta mauris fermentum lacinia. </p>
			<form action="#" method="post">
				<input type="email" placeholder="Enter your email address" required="">
				<input type="submit" class="mt-3" value="订阅">
			</form>
			<div class="social mt-5">
				<h4>Follow us</h4>
				
				<ul class="d-flex mt-3 justify-content-center">
					<li class="mx-2"><a href="#"><span class="fab fa-facebook"></span></a></li>
					<li class="mx-2"><a href="#"><span class="fab fa-twitter-square"></span></a></li>
					<li class="mx-2"><a href="#"><span class="fas fa-rss-square"></span></a></li>
					<li class="mx-2"><a href="#"><span class="fab fa-linkedin"></span></a></li>
					<li class="mx-2"><a href="#"><span class="fab fa-google-plus-square"></span></a></li>
				</ul>
				
			</div>
		</div>
		
	</div>
</section>
-->
	<!-- //Newsletter -->


	<!-- footer -->
	<!--
<footer>
	<div class="container py-3 py-md-4">
		<div class="row">
			<div class="col-lg-5 col-md-12">
				<p class="py-lg-4">Copyright &copy; 2018.Company name All rights reserved.</p>
			</div>
			<div class="col-lg-2 col-md-12 logo text-center">
				<a href="index.html">Cafe In</a>
			</div>
			<div class="col-lg-5 col-md-12">
				<ul class="py-lg-4">
					<li class="mx-2"><a href="index.html">Home</a></li>
					<li class="mx-2"><a href="services.html">Services</a></li>
					<li class="mx-2"><a href="gallery.html">Food menu</a></li>
					<li class="mx-2"><a href="error.html">Error page</a></li>
					<li class="mx-2"><a href="contact.html">Contact</a></li>
				</ul>
			</div>
		</div>
	</div>
</footer>
-->

<!-- Vertically centered Modal 
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-uppercase" id="exampleModalLongTitle">Cafe
						In</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<img src="../../images/4.jpg" class="img-fluid mb-3"
						alt="cafe Image" /> Vivamus eget est in odio tempor interdum.
					Mauris maximus fermentum arcu, ac finibus ante. Sed mattis risus at
					ipsum elementum, ut auctor turpis cursus. Sed sed odio pharetra,
					aliquet velit cursus, vehicula enim. Mauris porta aliquet magna,
					eget laoreet ligula.
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
 -->

<!-- js-scripts -->
	<!-- js -->
	<script type="text/javascript" src="../../js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="../../js/bootstrap.js"></script>
	
	<!-- Necessary-JavaScript-File-For-Bootstrap -->
	<!-- //js -->
	
	<!-- Banner Responsive slider -->
	<script src="../../js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			
			
			// Slideshow 3
			$("#slider3").responsiveSlides({
				auto: true,
				pager: false,
				nav: true,
				speed: 500,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	
	<!-- // Banner Responsive slider -->
	<!-- stats -->
	<script src="../../js/jquery.waypoints.min.js"></script>
	<script src="../../js/jquery.countup.js"></script>
	<script>
		$('.counter').countUp();
	</script>
	
	<!-- //stats -->
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
	<!-- jQuery-Photo-filter-lightbox-Gallery-plugin -->
	<script type="text/javascript" src="../../js/jquery-1.7.2.js"></script>
	<script src="../../js/jquery.quicksand.js" type="text/javascript"></script>
	<script src="../../js/script.js" type="text/javascript"></script>
	<script src="../../js/jquery.prettyPhoto.js" type="text/javascript"></script>
	<!-- //jQuery-Photo-filter-lightbox-Gallery-plugin -->
	<!-- //js-scripts -->
</body>
</html>