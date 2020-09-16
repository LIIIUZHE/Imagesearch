<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>test</title>
	
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
	<link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
	<link rel="stylesheet" href="css/fontawesome-all.css"> <!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	
	<!-- web-fonts -->
	<link href="http://fonts.googleapis.com/css?family=Alegreya+Sans:100,100i,300,300i,400,400i,500,500i,700,700i,800,800i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
	<!-- //web-fonts -->
	
</head>

<body>

<!-- Navigation -->
<header>

</header>
<!-- //Navigation -->

<!-- inner page banner -->
<section class="inner_banner">
	<div class="dot1">
	</div>
</section>
<!-- inner page banner -->

<!--Error page-->
<section class="error py-5">
	<div class="container">
		<h2 class="heading text-center text-uppercase mb-5"> error content</h2>
		<div class="row error_content p-sm-5 p-2">
			<div class="col-lg-6 content_left p-sm-5 p-4">
				<h1 class="font-weight-bold">404</h1>
				<h4 class="my-2">Uh-Ah</h4>
				<h5 class="text-capitalize">looks like that page doesn't exist</h5>
				<p class="mt-3">Quisque sit amet odio sit amet nulla finibus commodo. Sed dictum accumsan vestibulum. Mauris ac sem quis augue blandit venenatis non eu est. </p>
				<div class="back_to_index mt-4">
					<a href="index.html" class="text-capitalize">Back to home</a>
				</div>
			</div>
			<div class="col-lg-6 content_right pt-5 text-center">
				<span class="fas fa-search"></span>
				<h3 class="text-capitalize my-3">search here</h3>
				<p class="text-capitalize my-3">Please check the URL and try again</p>
				<div class="b-search">
					<form action="#" method="post">
						<input type="text" name="search" Placeholder="Enter your keywords here..." required="">
						<input type="submit" value="">
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<!--//Error page-->



<!-- js-scripts -->		

	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap -->
	<!-- //js -->	
	
	<!-- search-bar -->
	<script src="js/main.js"></script>
	<!-- //search-bar -->
	
	<!-- start-smoth-scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
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
</html>