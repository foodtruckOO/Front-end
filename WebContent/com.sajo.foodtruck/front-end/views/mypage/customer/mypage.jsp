<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Foodtruck:: ver1.0</title>

	<!-- Bootstrap core CSS -->
	<link href="<c:url value='/bootstrap/css/bootstrap.min.css'/>"
		rel="stylesheet">
	<!-- Bootstrap theme -->
	<link href="<c:url value='/bootstrap/css/bootstrap-theme.min.css'/>"
		rel="stylesheet">
	<!-- YangGeum template CSS -->
	<link rel="stylesheet"
		href="<c:url value='/bootstrap/css/template.css'/>" />
	<!-- naver map -->
	<script type="text/javascript" 
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=ygb_z5ZpazgrKimoE4A4"></script>
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

<body>
	<div id="TOP">
		<jsp:include page="/com.sajo.foodtruck/front-end/template/Top.jsp" />
	</div>
	<div id="RIGHT">
		<jsp:include page="/com.sajo.foodtruck/front-end/template/Right.jsp" />
	</div>
	
	<!-- 배경화면/프로필 이미지 등록 -->
	<div style="background-color: #DDDDDD; height: 400px;">
		<img src="../../../images/user.png" alt="이미지를 찾을 수 없습니다..." class="img-circle"
			style="margin-left: 39.7%; margin-top: 250px;">
	</div>
	
	
	<!-- background img -->
	<div>
		<table style=" margin-top: 15px; width: 100%">
			<tr>
				<td style="background-color: #AAAAAA; height: 50px;">
				Menu1
				</td>
				<td style="background-color: white; height: 50px;">
				Menu2
				</td>
				<td style="background-color: #9866C9; height: 50px;">
				Menu3
				</td>
				<td style="background-color: white; height: 50px; width: 20%">
				<!-- img -->
				</td>
				<td style="background-color: #AAAAAA; height: 50px;">
				Menu4
				</td>
				<td style="background-color: white; height: 50px;">
				Menu5
				</td>
				<td style="background-color: #AAAAAA; height: 50px;">
				Menu6
				</td>
			</tr>
		</table>
	</div>

	<div> 
		<table style="margin-top: 20px; margin-bottom: 20px; width: 100%">
			<tr>
				<td style="width: 40%; background-color: orange">
					<div id="map"></div>
				</td>
				<td style="width: 60%;">
					<div class="col-sm-4" style="margin-top: 20px;">
						<div class="panel panel-warning">
							<div class="panel-heading">
								<h3 class="panel-title">Panel title</h3>
							</div>
							<div class="panel-body">Panel content</div>
						</div>
					</div>
				</td>
			</tr>
		</table>
	</div>
<script>
var mapOptions = {
    center: new naver.maps.LatLng(37.4787385,126.8787324),
    zoom: 8, //지도의 초기 줌 레벨
    minZoom: 1, //지도의 최소 줌 레벨
    zoomControl: true, //줌 컨트롤의 표시 여부
    zoomControlOptions: { //줌 컨트롤의 옵션
        position: naver.maps.Position.TOP_RIGHT}
};

var map = new naver.maps.Map('map', mapOptions);
</script>

	<div id="FOOTER">
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