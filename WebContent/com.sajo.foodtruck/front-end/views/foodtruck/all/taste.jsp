<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<title>지역별 메뉴</title>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />

<link href="<c:url value='/bootstrap/css/bootstrap.min.css'/>"
	rel="stylesheet">
	
	
<link rel="stylesheet" type="text/css"
	href="https://d1yr0lpy7kakcx.cloudfront.net/assets/lib/bxslider/jquery.bxslider.css" />
<link rel="stylesheet" type="text/css"
	href="https://d1yr0lpy7kakcx.cloudfront.net/assets/css/service/common/common.css?v=20180223161210" />
<link rel="stylesheet" type="text/css"
	href="https://s3.ap-northeast-2.amazonaws.com/dqstatic/assets/css/service/layouts/renew/base.css?v=20180223161210" />
<link rel="stylesheet" type="text/css"
	href="https://s3.ap-northeast-2.amazonaws.com/dqstatic/assets/css/service/layouts/renew/renew.css?v=20180223161210" />
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript"
	src="https://d1yr0lpy7kakcx.cloudfront.net/assets/lib/bxslider/jquery.bxslider.min.js"></script>
<script type="text/javascript"
	src="https://s3.ap-northeast-2.amazonaws.com/dqstatic/assets/js/service/layouts/renew/common.js"></script>


</head>
<body>
	

	
	<div id="wrap" style="position: relative;">
		<div id="content" class="container-fluid clearfix"
			style="background: #fff; max-width: 100%">
			<link rel="stylesheet" type="text/css"
				href="https://d1yr0lpy7kakcx.cloudfront.net/assets/css/service/layouts/renew/taste.css?v=20180223161210" />
			<!-- 슬라이드바 -->
			<div class="con-head clearfix" style="overflow: visible">
				<div class="left dinner_slider"
					style="background: #ff4081; overflow: visible">
					<span id="slider-prev" class="left carousel-control hidden-xs"><i
						class="fa fa-angle-left" aria-hidden="true"></i></span> <span
						id="slider-next" class="right carousel-control hidden-xs"><i
						class="fa fa-angle-right" aria-hidden="true"></i></span>
					<ul class="bxslider" style="overflow: hidden; position: relative">
						<li style="position: absolute"><a href="taste.html"><img
								src="<c:url value='/com.sajo.foodtruck/front-end/images/logo2.jpg'/>"/></a></li>
						<li style="position: absolute"><a href="taste.html"><img
								src="<c:url value='/com.sajo.foodtruck/front-end/images/logo2.jpg'/>"/></a></li>
					</ul>
				</div>
			</div>
	<style>
		.dinner_slider {
		overflow: hidden;
		}
	
		.dinner_slider div {
		overflow: visible !important;
		}
	
		@media screen and (max-width: 768px) {
			.dinner_slider>div {
			overflow-x: hidden !important;
			overflow-y: visible;
			}
		}
	</style>
			<script>
				$(function() {
					$('.bxslider').bxSlider({
						auto : true,
						pause : 5000,
						//			slideWidth: 1280,
						nextSelector : '#slider-next',
						prevSelector : '#slider-prev',
						responsive : true
					});
				});
				//	$( '#slider-next' ).on( 'click', function () {
				//		mySlider.goToNextSlide();  //다음 슬라이드 배너로 이동
				//	} );
				//	$( '#slider-prev' ).on( 'click', function () {
				//		mySlider.goToPrevSlide();  //다음 슬라이드 배너로 이동
				//	} );
			</script>
			<div class="taste_bg visible-xs">
				<div class="res_deco2"></div>
			</div>
			<div class="post_wrap">

				<div class="jumbotron" style="background-color: white !important;">
					<img class="img-fluid"
						src="<c:url value= '/com.sajo.foodtruck/front-end/images/logo.jpg'/>">
					<h1 style="display: inline; line-height: 150%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						지역별 메뉴</h1>
				</div>


				<div class="row taste_dropdown_wrap">
					<div class="taste_dropdown">
						<button class="more_btn_span taste_dropbtn col-xs-12"
							onclick="myFunction()">
							<span class="more_btn_span">지역전체보기</span> <i
								class="fa fa-angle-down" aria-hidden="true"></i>
						</button>
						<div id="myDropdown" class="taste_dropdown-content">
							<i id="myDropdown-i" class="fa fa-angle-up dropdown-i visible-xs"
								onclick="myFunction()" aria-hidden="true"
								style="text-align: right"></i>
							<div>
								<span>전국</span>
								<ul>
									<li><a href="#">전체</a></li>
								</ul>
							</div>
							<div>
								<span>서울</span>
								<ul>
									<li><a href="#">전체</a></li>
									<li><a href="#">강동/천호</a></li>
									<li><a href="#">홍대/마포</a></li>
									<li><a href="#">종로/대학로</a></li>
									<li><a href="#">여의도/영등포</a></li>
									<li><a href="#">압구정/신사</a></li>
									<li><a href="#">신촌/이대</a></li>
									<li><a href="#">수유/동대문</a></li>
									<li><a href="#">송파/잠실</a></li>
									<li><a href="#">명동/이태원</a></li>
									<li><a href="#">노원/강북</a></li>
									<li><a href="#">교대/사당</a></li>
									<li><a href="#">관악/신림</a></li>
									<li><a href="#">건대/왕십리</a></li>
									<li><a href="#">강서/목동</a></li>
									<li><a href="#">강남/논현</a></li>
									<li><a href="#">삼성/선릉</a></li>
									<li><a href="#">기타</a></li>
								</ul>
							</div>
							<div>
								<span>경기</span>
								<ul>
									<li><a href="#">전체</a></li>
									<li><a href="#">용인/분당/수원</a></li>
									<li><a href="#">안양/안산/광명</a></li>
									<li><a href="#">남양주/구리/하남</a></li>
									<li><a href="#">인천/부천</a></li>
									<li><a href="#">일산/파주</a></li>
									<li><a href="#">기타</a></li>
								</ul>
							</div>
							<div>
								<span>대전</span>
								<ul>
									<li><a href="#">전체</a></li>
								</ul>
							</div>
							<div>
								<span>대구</span>
								<ul>
									<li><a href="#">전체</a></li>
								</ul>
							</div>
							<div>
								<span>부산</span>
								<ul>
									<li><a href="#">전체</a></li>
								</ul>
							</div>
							<div>
								<span>다른지역</span>
								<ul>
									<li><a href="#">전체</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="dq_select_box">
						<select class="dq_select form-control solo" name="_area1"
							onchange="viewFilter()">
							<option class="dq_select_op">전국</option>
							<option class="dq_select_op">서울</option>
							<option class="dq_select_op">경기</option>
							<option class="dq_select_op">대전</option>
							<option class="dq_select_op">대구</option>
							<option class="dq_select_op">부산</option>
							<option class="dq_select_op">다른지역</option>
						</select>
					</div>
					<div class="dq_select_box"></div>
					<div class="taste_sort_wrap">
						<button class="sort_btn active" data-order=""
							onclick="viewOrdered(this)">
							<span style="background-color: #ff4081"></span><span
								style="color: #ff4081">신규등록순</span>
						</button>
						<button class="sort_btn active" data-order="hot"
							onclick="viewOrdered(this)">
							<span style=""></span><span style="">인기순</span>
						</button>
					</div>
				</div>
				<div class="row taste_list">

					<div class="taste_card col-sm-3 col-xs-6 ">
						<div class="card_img_wrap" style="position: relative;">
							<div class="card_img_wrap_thumbnail a">
								<a href="#"><img
									src="<c:url value='/com.sajo.foodtruck/front-end/images/menu_list1.jpg'/>"
									width="100%" /> </a>
							</div>
						</div>
						<div class="card_content">
							<div class="title_main title clearfix">강남 푸드트럭</div>
							<div class="date">
								<span class="pin a"><i class="fa fa-map-marker"
									aria-hidden="true"></i>&nbsp;서울</span>
							</div>
						</div>
					</div>
					<div class="taste_card col-sm-3 col-xs-6 ">
						<div class="card_img_wrap" style="position: relative;">
							<div class="card_img_wrap_thumbnail a">
								<a href="#"><img
									src="<c:url value='/com.sajo.foodtruck/front-end/images/menu_list1.jpg'/>"
									width="100%" /> </a>
							</div>
						</div>
						<div class="card_content">
							<div class="title_main title clearfix">[강남] 에머이 강남대로점</div>
							<div class="date">
								<span class="pin a"><i class="fa fa-map-marker"
									aria-hidden="true"></i>&nbsp;서울</span>
							</div>
						</div>
					</div>
					<div class="taste_card col-sm-3 col-xs-6 ">
						<div class="card_img_wrap" style="position: relative;">
							<div class="card_img_wrap_thumbnail a">
								<a href="taste/10507.html"><img
									src="https://ssproxy.ucloudbiz.olleh.com/v1/AUTH_e59809eb-bdc9-44d7-9d8f-2e7f0e47ba91/post_card/33686_thumb_1514438582.jpg"
									width="100%" /> </a>
							</div>
						</div>
						<div class="card_content">
							<div class="title_main title clearfix">[이태원] 오리지널시카고피자 이태원점</div>
							<div class="date">
								<span class="pin a"><i class="fa fa-map-marker"
									aria-hidden="true"></i>&nbsp;서울</span>
							</div>
						</div>
					</div>
					<div class="taste_card col-sm-3 col-xs-6 ">
						<div class="card_img_wrap" style="position: relative;">
							<div class="card_img_wrap_thumbnail a">
								<a href="taste/10486.html"><img
									src="https://ssproxy.ucloudbiz.olleh.com/v1/AUTH_e59809eb-bdc9-44d7-9d8f-2e7f0e47ba91/post_card/32587_thumb_1510034712.jpg"
									width="100%" /> </a>
							</div>
						</div>
						<div class="card_content">
							<div class="title_main title clearfix">[교대] 미카도스시 교대점</div>
							<div class="date">
								<span class="pin a"><i class="fa fa-map-marker"
									aria-hidden="true"></i>&nbsp;서초구</span>
							</div>
						</div>
					</div>
					<div class="taste_card col-sm-3 col-xs-6 ">
						<div class="card_img_wrap" style="position: relative;">
							<div class="card_img_wrap_thumbnail a">
								<a href="taste/10479.html"><img
									src="https://ssproxy.ucloudbiz.olleh.com/v1/AUTH_e59809eb-bdc9-44d7-9d8f-2e7f0e47ba91/post_card/26154_thumb_1485996545.png"
									width="100%" /> </a>
							</div>
						</div>
						<div class="card_content">
							<div class="title_main title clearfix">[홍대] 대관령 자연 샤브샤브</div>
							<div class="date">
								<span class="pin a"><i class="fa fa-map-marker"
									aria-hidden="true"></i>&nbsp;서울</span>
							</div>
						</div>
					</div>
					<div class="taste_card col-sm-3 col-xs-6 ">
						<div class="card_img_wrap" style="position: relative;">
							<div class="card_img_wrap_thumbnail a">
								<a href="taste/10497.html"><img
									src="https://ssproxy.ucloudbiz.olleh.com/v1/AUTH_e59809eb-bdc9-44d7-9d8f-2e7f0e47ba91/post_card/29029_thumb_1497424102.jpg"
									width="100%" /> </a>
							</div>
						</div>
						<div class="card_content">
							<div class="title_main title clearfix">[명동] 레드홍</div>
							<div class="date">
								<span class="pin a"><i class="fa fa-map-marker"
									aria-hidden="true"></i>&nbsp;서울</span>
							</div>
						</div>
					</div>
					<div class="taste_card col-sm-3 col-xs-6 ">
						<div class="card_img_wrap" style="position: relative;">
							<div class="card_img_wrap_thumbnail a">
								<a href="taste/10502.html"><img
									src="https://ssproxy.ucloudbiz.olleh.com/v1/AUTH_e59809eb-bdc9-44d7-9d8f-2e7f0e47ba91/post_card/34191_thumb_1516855247.jpg"
									width="100%" /> </a>
							</div>
						</div>
						<div class="card_content">
							<div class="title_main title clearfix">[송파] 프레시맨 샐러드</div>
							<div class="date">
								<span class="pin a"><i class="fa fa-map-marker"
									aria-hidden="true"></i>&nbsp;서울</span>
							</div>
						</div>
					</div>
					<div class="taste_card col-sm-3 col-xs-6 ">
						<div class="card_img_wrap" style="position: relative;">
							<div class="card_img_wrap_thumbnail a">
								<a href="taste/10499.html"><img
									src="https://ssproxy.ucloudbiz.olleh.com/v1/AUTH_e59809eb-bdc9-44d7-9d8f-2e7f0e47ba91/post_card/34202_thumb_1516860938.jpg"
									width="100%" /> </a>
							</div>
						</div>
						<div class="card_content">
							<div class="title_main title clearfix">[양재] 에머이 양재역점</div>
							<div class="date">
								<span class="dday a"> 6일 남음. </span> <span class="pin a"><i
									class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;서울</span>
							</div>
						</div>
					</div>
					<div class="taste_card col-sm-3 col-xs-6 ">
						<div class="card_img_wrap" style="position: relative;">
							<div class="card_img_wrap_thumbnail a">
								<a href="taste/10487.html"><img
									src="https://ssproxy.ucloudbiz.olleh.com/v1/AUTH_e59809eb-bdc9-44d7-9d8f-2e7f0e47ba91/post_card/33494_thumb_1513657606.jpg"
									width="100%" /> </a>
							</div>
						</div>
						<div class="card_content">
							<div class="title_main title clearfix">[마포] 한림돈가 서교점</div>
							<div class="date">
								<span class="pin a"><i class="fa fa-map-marker"
									aria-hidden="true"></i>&nbsp;서울</span>
							</div>
						</div>
					</div>
					<div class="taste_card col-sm-3 col-xs-6 ">
						<div class="card_img_wrap" style="position: relative;">
							<div class="card_img_wrap_thumbnail a">
								<a href="taste/10401.html"><img
									src="https://ssproxy.ucloudbiz.olleh.com/v1/AUTH_e59809eb-bdc9-44d7-9d8f-2e7f0e47ba91/post_card/34673_thumb_1519274450.jpg"
									width="100%" /> </a>
							</div>
						</div>
						<div class="card_content">
							<div class="title_main title clearfix">[인천] 조선화로집 검단점</div>
							<div class="date">
								<span class="pin a"><i class="fa fa-map-marker"
									aria-hidden="true"></i>&nbsp;인천</span>
							</div>
						</div>
					</div>
					<div class="taste_card col-sm-3 col-xs-6 ">
						<div class="card_img_wrap" style="position: relative;">
							<div class="card_img_wrap_thumbnail a">
								<a href="taste/10505.html"><img
									src="https://ssproxy.ucloudbiz.olleh.com/v1/AUTH_e59809eb-bdc9-44d7-9d8f-2e7f0e47ba91/post_card/33697_thumb_1514449633.jpg"
									width="100%" /> </a>
							</div>
						</div>
						<div class="card_content">
							<div class="title_main title clearfix">[청라] 가야밀면</div>
							<div class="date">
								<span class="pin a"><i class="fa fa-map-marker"
									aria-hidden="true"></i>&nbsp;청라</span>
							</div>
						</div>
					</div>
					<div class="taste_card col-sm-3 col-xs-6 ">
						<div class="card_img_wrap" style="position: relative;">
							<div class="card_img_wrap_thumbnail a">
								<a href="taste/10518.html"><img
									src="https://ssproxy.ucloudbiz.olleh.com/v1/AUTH_e59809eb-bdc9-44d7-9d8f-2e7f0e47ba91/post_card/34801_thumb_1519359092.JPG"
									width="100%" /> </a>
							</div>
						</div>
						<div class="card_content">
							<div class="title_main title clearfix">[배송] 빚은 대구수성네거리점</div>
							<div class="date">
								<span class="pin a"><i class="fa fa-map-marker"
									aria-hidden="true"></i>&nbsp;대구</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		


	

	<link rel="stylesheet" type="text/css"
		href="https://d1yr0lpy7kakcx.cloudfront.net/assets/css/service/layouts/renew/socialStyle.css?v=20180223161210" />
	<script type="text/javascript"
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="https://s3.ap-northeast-2.amazonaws.com/dqstatic/assets/js/service/common/doShare.js"></script>
</body>
</html>
