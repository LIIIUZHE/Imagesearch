<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE html>
<html lang="en">
<head>
<title>Typography</title>
	
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
	<div class="top-nav">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light">
				<a class="navbar-brand text-uppercase" href="index.html">Cafe In</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse justify-content-center pr-md-4" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item">
							<a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="services.html">Services</a>
						</li>
						<li class="dropdown nav-item">
							<a href="#" class="dropdown-toggle nav-link active" data-toggle="dropdown">Pages
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu agile_short_dropdown">
								<li>
									<a href="error.html">Error Page</a>
								</li>
								<li>
									<a href="typography.html">Typography</a>
								</li>
							</ul>
						</li>

						<li class="nav-item">
							<a class="nav-link" href="gallery.html">Food Menu</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="contact.html">Contact</a>
						</li>
						
						<!-- search --->
						<div class="search-bar-agileits">
							<div class="cd-main-header">
								<ul class="cd-header-buttons">
									<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
								</ul>
								<!-- cd-header-buttons -->
							</div>
							<div id="cd-search" class="cd-search">
								<form action="#" method="post">
									<input name="Search" type="search" placeholder="Click enter after typing...">
								</form>
							</div>
						</div>
						<!-- search --->
						
					</ul>
				</div>
			</nav>
		</div>
	</div>
</header>
<!-- //Navigation -->

<!-- inner page banner -->
<section class="inner_banner">
	<div class="dot1">
	</div>
</section>
<!-- inner page banner -->

<!-- typography -->
<section class="typo py-5">
	<div class="container">
		<h1 class="heading text-center text-uppercase mb-5"> Typography </h1>
		<div class="typo-grids">
		
			<!-- grid system -->
			<div class="typo-grid1 mb-5">
				<div class="bd-example-row">
					<h2 class="text-capitalize mb-3">grid system</h2>
					<div class="row">
						<div class="col-sm">
						One of three columns
						</div>
						<div class="col-sm">
						One of three columns
						</div>
						<div class="col-sm">
						One of three columns
						</div>
					</div>
				</div>
			</div>
			<!-- //grid system -->
			
			<!-- grid options -->
			<div class="typo-grid1 table-scroll mb-5">
				<h4 class="text-capitalize mb-3">grid Options</h4>
				<table class="table table-bordered table-striped">
					  <thead>
						<tr>
						  <th></th>
						  <th class="text-center">
							Extra small<br>
							<small>&lt;576px</small>
						  </th>
						  <th class="text-center">
							Small<br>
							<small>≥576px</small>
						  </th>
						  <th class="text-center">
							Medium<br>
							<small>≥768px</small>
						  </th>
						  <th class="text-center">
							Large<br>
							<small>≥992px</small>
						  </th>
						  <th class="text-center">
							Extra large<br>
							<small>≥1200px</small>
						  </th>
						</tr>
					  </thead>
					  <tbody>
						<tr>
						  <th class="text-nowrap" scope="row">Max container width</th>
						  <td>None (auto)</td>
						  <td>540px</td>
						  <td>720px</td>
						  <td>960px</td>
						  <td>1140px</td>
						</tr>
						<tr>
						  <th class="text-nowrap" scope="row">Class prefix</th>
						  <td><code>.col-</code></td>
						  <td><code>.col-sm-</code></td>
						  <td><code>.col-md-</code></td>
						  <td><code>.col-lg-</code></td>
						  <td><code>.col-xl-</code></td>
						</tr>
						<tr>
						  <th class="text-nowrap" scope="row"># of columns</th>
						  <td colspan="5">12</td>
						</tr>
						<tr>
						  <th class="text-nowrap" scope="row">Gutter width</th>
						  <td colspan="5">30px (15px on each side of a column)</td>
						</tr>
						<tr>
						  <th class="text-nowrap" scope="row">Nestable</th>
						  <td colspan="5">Yes</td>
						</tr>
						<tr>
						  <th class="text-nowrap" scope="row">Column ordering</th>
						  <td colspan="5">Yes</td>
						</tr>
					  </tbody>
				</table>
			</div>
			<!-- grid options -->
			
			<!-- equal width -->
			<div class="typo-grid1 mb-5">
				<div class="bd-example-row">
					<h4 class="text-capitalize mb-3">Equal width</h4>
				  <div class="row">
					<div class="col">
					  1 of 2
					</div>
					<div class="col">
					  2 of 2
					</div>
				  </div>
				  <div class="row">
					<div class="col">
					  1 of 3
					</div>
					<div class="col">
					  2 of 3
					</div>
					<div class="col">
					  3 of 3
					</div>
				  </div>
				   <div class="row mt-3">
					<div class="col">Column</div>
					<div class="col">Column</div>
					<div class="w-100"></div>
					<div class="col">Column</div>
					<div class="col">Column</div>
				  </div>
				  <div class="row mt-3">
					<div class="col">
					  1 of 3
					</div>
					<div class="col-6">
					  2 of 3 (wider)
					</div>
					<div class="col">
					  3 of 3
					</div>
				  </div>
				  <div class="row">
					<div class="col">
					  1 of 3
					</div>
					<div class="col-5">
					  2 of 3 (wider)
					</div>
					<div class="col">
					  3 of 3
					</div>
				  </div>
				</div>
			</div>
			<!-- //equal width -->
			
			<!-- Variable width content-->
			<div class="typo-grid1 mb-5">
				<div class="bd-example-row">
					<h4 class="text-capitalize mb-3">Variable width content</h4>
					<div class="row justify-content-md-center">
						<div class="col col-lg-2">
						  1 of 3
						</div>
						<div class="col-md-auto">
						  Variable width content
						</div>
						<div class="col col-lg-2">
						  3 of 3
						</div>
					  </div>
					  <div class="row">
						<div class="col">
						  1 of 3
						</div>
						<div class="col-md-auto">
						  Variable width content
						</div>
						<div class="col col-lg-2">
						  3 of 3
						</div>
					  </div>
				</div>
			</div>
			<!-- //Variable width content-->
			
			<h3 class="text-center headingtop text-uppercase mb-4">Responsive classes</h3>
			
			<!-- All Break Points -->
			<div class="typo-grid1 mb-5">
				<div class="bd-example-row">
					<h4 class="text-capitalize mb-3">All Break Points</h4>
					<div class="row">
					  <div class="col">col</div>
					  <div class="col">col</div>
					  <div class="col">col</div>
					  <div class="col">col</div>
					</div>
					<div class="row">
					  <div class="col-8">col-8</div>
					  <div class="col-4">col-4</div>
					</div>
				</div>
			</div>
			<!-- //All Break Points -->
			
			<!-- Stacked to horizontal -->
			<div class="typo-grid1 mb-5">
				<div class="bd-example-row">
					<h4 class="text-capitalize mb-3">Stacked to horizontal</h4>
					<div class="row">
					  <div class="col-sm-8">col-sm-8</div>
					  <div class="col-sm-4">col-sm-4</div>
					</div>
					<div class="row">
					  <div class="col-sm">col-sm</div>
					  <div class="col-sm">col-sm</div>
					  <div class="col-sm">col-sm</div>
					</div>
				</div>
			</div>
			<!-- //Stacked to horizontal -->
			
			<!-- Mix and Match -->
			<div class="typo-grid1 mb-5">
				<div class="bd-example-row">
					<h4 class="text-capitalize mb-3">Mix and Match</h4>
					<!-- Stack the columns on mobile by making one full-width and the other half-width -->
					<div class="row">
					  <div class="col-12 col-md-8">.col-12 .col-md-8</div>
					  <div class="col-6 col-md-4">.col-6 .col-md-4</div>
					</div>

					<!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
					<div class="row">
					  <div class="col-6 col-md-4">.col-6 .col-md-4</div>
					  <div class="col-6 col-md-4">.col-6 .col-md-4</div>
					  <div class="col-6 col-md-4">.col-6 .col-md-4</div>
					</div>

					<!-- Columns are always 50% wide, on mobile and desktop -->
					<div class="row">
					  <div class="col-6">.col-6</div>
					  <div class="col-6">.col-6</div>
					</div>
				</div>
			</div>
			<!-- //Mix and Match -->
			
			<h3 class="text-center headingtop text-uppercase mb-4">Alignment</h3>
			
			<!-- Vertical Alignment -->
			<div class="typo-grid1 mb-5">
				<div class="bd-example-row bd-example-row-flex-cols">
				<div class="bd-example">
					<h4 class="text-capitalize mb-3"> Vertical Alignment </h4>
					<div class="container">
					  <div class="row align-items-start">
						<div class="col">
						  One of three columns
						</div>
						<div class="col">
						  One of three columns
						</div>
						<div class="col">
						  One of three columns
						</div>
					  </div>
					  <div class="row align-items-center">
						<div class="col">
						  One of three columns
						</div>
						<div class="col">
						  One of three columns
						</div>
						<div class="col">
						  One of three columns
						</div>
					  </div>
					  <div class="row align-items-end">
						<div class="col">
						  One of three columns
						</div>
						<div class="col">
						  One of three columns
						</div>
						<div class="col">
						  One of three columns
						</div>
					  </div>
					  
					  <div class="row">
						<div class="col align-self-start">
						  One of three columns
						</div>
						<div class="col align-self-center">
						  One of three columns
						</div>
						<div class="col align-self-end">
						  One of three columns
						</div>
					  </div>
					  
					</div>
				</div>
				</div>
				
			</div>
			<!-- //Vertical Alignment -->
			
			<!-- Horizontal Alignment -->
			<div class="typo-grid1 mb-5">
				<div class="bd-example-row">
				<div class="bd-example">
					<h4 class="text-capitalize mb-3"> Horizontal Alignment </h4>
					
					<div class="container">
					  <div class="row justify-content-start">
						<div class="col-4">
						  One of two columns
						</div>
						<div class="col-4">
						  One of two columns
						</div>
					  </div>
					  <div class="row justify-content-center">
						<div class="col-4">
						  One of two columns
						</div>
						<div class="col-4">
						  One of two columns
						</div>
					  </div>
					  <div class="row justify-content-end">
						<div class="col-4">
						  One of two columns
						</div>
						<div class="col-4">
						  One of two columns
						</div>
					  </div>
					  <div class="row justify-content-around">
						<div class="col-4">
						  One of two columns
						</div>
						<div class="col-4">
						  One of two columns
						</div>
					  </div>
					  <div class="row justify-content-between">
						<div class="col-4">
						  One of two columns
						</div>
						<div class="col-4">
						  One of two columns
						</div>
					  </div>
					</div>
					
				</div>
				</div>
			</div>
			<!-- //Vertical Alignment -->
			
		</div>
	</div>
</section>
<!-- //typography -->

<!-- Newsletter -->
<section class="newsletter text-center py-5">
	<div class="container">
		<h3 class="heading text-center text-uppercase mb-5"> Newsletter </h3>
		
		<div class="subscribe_inner">
			<p class="mb-4">Maecenas ac euismod eros. Aliquam a suscipit nibh. Aliquam iaculis erat porta mauris fermentum lacinia. </p>
			<form action="#" method="post">
				<input type="email" placeholder="Enter your email address" required="">
				<input type="submit" class="mt-3" value="Subscribe">
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
<!-- //Newsletter -->

<!-- footer -->	
<footer>
	<div class="container py-3">
		<div class="row">
			<div class="col-lg-5 col-md-12">
				<p class="py-4">Copyright &copy; 2018.Company name All rights reserved.</p>
			</div>
			<div class="col-lg-2 col-md-12 logo text-center">
				<a href="index.html">Cafe In</a>
			</div>
			<div class="col-lg-5 col-md-12">
				<ul class="py-4">
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
<!-- footer -->
		
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