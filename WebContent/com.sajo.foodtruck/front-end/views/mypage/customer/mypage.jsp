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
	<div style="width: 80%; margin-left: 10%; background-color: #DDDDDD; height: 400px;">
		<img src="../../../images/user.png" alt="이미지를 찾을 수 없습니다..." class="img-circle"
			style="margin-left: 39.7%; margin-top: 250px;">
	</div>
	
	
	<div class="mypage_table">
		<!-- table body -->
		<table style="width: 80%; margin-left: 10%; margin-top: 10px;">
			<!-- background img -->
			<tr>
				<td style="background-color: #AAAAAA; height: 50px;">
				menu1
				</td>
				<td style="background-color: white; height: 50px;">
				menu2
				</td>
				<td style="background-color: #AAAAAA; height: 50px;">
				menu2
				</td>
				<td style="background-color: white; height: 50px; width: 20%">
				<!-- img -->
				</td>
				<td style="background-color: #AAAAAA; height: 50px;">
				menu2
				</td>
				<td style="background-color: white; height: 50px;">
				menu2
				</td>
				<td style="background-color: #AAAAAA; height: 50px;">
				menu2
				</td>
			</tr>
		</table>
		
		<table style="width: 80%; margin-left: 10%; margin-top: 10px;">
			<tr>
				<td style="width: 40%;">
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