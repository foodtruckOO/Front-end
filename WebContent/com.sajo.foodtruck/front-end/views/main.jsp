<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Agency - Start Bootstrap Theme</title>
<!-- Bootstrap core CSS -->
 <link href="<c:url value='/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="<c:url value='/bootstrap/css/bootstrap-theme.min.css'/>" rel="stylesheet">
    <!-- YangGeum template CSS -->    
    <link rel="stylesheet" href="<c:url value='/bootstrap/css/template.css'/>" type="text/css" />
    <!-- Custom styles for this template -->    
	<link href="<c:url value='/bootstrap/css/agency.css'/>" rel="stylesheet">
	<!-- Custom fonts for this template -->
    <link href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
	$(function() {
		var currentPosition = parseInt($("#sidebox").css("top"));
		$(window).scroll(function() {
			var position = $(window).scrollTop();
			$("#sidebox").stop().animate({
				"top" : position + currentPosition + "px"
			}, 1000);
		});

	});
</script>



</head>


<body id="page-top">

	<div id="TOP">
		<jsp:include page="/com.sajo.foodtruck/front-end/template/Top.jsp" />
	</div>
	<div id="RIGHT">
		<jsp:include page="/com.sajo.foodtruck/front-end/template/Right.jsp" />
	</div>

	<!-- Header -->

	<header>
		<div class="container">
			<div class="row">
				<!-- The carousel -->
				<div id="transition-timer-carousel"
					class="carousel slide transition-timer-carousel"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#transition-timer-carousel" data-slide-to="0"
							class="active"></li>
						<li data-target="#transition-timer-carousel" data-slide-to="1"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="<c:url value='/com.sajo.foodtruck/front-end/images/area_event_1600_500.jpg'/>" />
							<div class="carousel-caption">
								
							</div>
						</div>

						<div class="item">
							<img src="<c:url value='/com.sajo.foodtruck/front-end/images/home_event_1600_500.jpg'/>" />
							<div class="carousel-caption">
						
							</div>
						</div>

					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#transition-timer-carousel"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span>
					</a> <a class="right carousel-control"
						href="#transition-timer-carousel" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span>
					</a>

				</div>
			</div>
		</div>

	</header>

	<!-- Services -->
	<section id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">가즈아</h2>
					<h3 class="section-subheading text-muted">
						푸드 트럭의 새 시대를 열다.</h3>
				</div>
			</div>
			<div class="row text-center">
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fa fa-circle fa-stack-2x text-primary"></i> <i
						class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="service-heading">쉽고 빠른 구매</h4>
					<p class="text-muted">원하는 푸드트럭 음식을 쉽고 빠르게 구매합니다</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fa fa-circle fa-stack-2x text-primary"></i> <i
						class="fa fa-handshake fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="service-heading">신뢰</h4>
					<p class="text-muted">사업자와 구매자를 매칭시켜드립니다.</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fa fa-circle fa-stack-2x text-primary"></i> <i
						class="fa fa-map-marker-alt fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="service-heading">지도</h4>
					<p class="text-muted">푸드트럭의 위치를 실시간으로 제공합니다</p>
				</div>
			</div>
		</div>
	</section>

	<!-- Portfolio Grid -->
	<section class="bg-light" id="portfolio">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">메뉴</h2>
					<h3 class="section-subheading text-muted">누구보다도 빠르게 가즈아를 만나보세요</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" href="#">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="<c:url value='/com.sajo.foodtruck/front-end/images/main/logo.jpg'/>"
						alt="">
					</a>
					<div class="portfolio-caption">
						<h4>소개</h4>
						<p class="text-muted">사이트 소개</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" 
						href="<c:url value='/com.sajo.foodtruck/front-end/views/map/Findtruck.jsp'/>">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="<c:url value='/com.sajo.foodtruck/front-end/images/main/find.jpg'/>"
						alt="">
					</a>
					<div class="portfolio-caption">
						<h4>찾기</h4>
						<p class="text-muted">푸드트럭 찾기</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" 
						href="<c:url value='/com.sajo.foodtruck/front-end/views/foodtruck/all/foodtruck.jsp'/>">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="<c:url value='/com.sajo.foodtruck/front-end/images/main/menu.jpg'/>"
						alt="">
					</a>
					<div class="portfolio-caption">
						<h4>음식</h4>
						<p class="text-muted">푸드트럭 메뉴보기</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" 
						href="<c:url value='/com.sajo.foodtruck.event/event.event'/>">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="<c:url value='/com.sajo.foodtruck/front-end/images/main/event.jpg'/>"
						alt="">
					</a>
					<div class="portfolio-caption">
						<h4>이벤트</h4>
						<p class="text-muted">수많은 이벤트</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" 
						href="#">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="<c:url value='/com.sajo.foodtruck/front-end/images/main/list.jpg'/>"
						alt="">
					</a>
					<div class="portfolio-caption">
						<h4>게시판</h4>
						<p class="text-muted">게시판 보기</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"
						href="#">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="<c:url value='/com.sajo.foodtruck/front-end/images/main/question.jpg'/>"
						alt="">
					</a>
					<div class="portfolio-caption">
						<h4>창업문의</h4>
						<p class="text-muted">창업절차 문의하기</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer -->

	<div>
		<jsp:include page="/com.sajo.foodtruck/front-end/template/Footer.jsp" />
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="<c:url value='/bootstrap/js/bootstrap.min.js'/>"></script>


</body>

</html>
