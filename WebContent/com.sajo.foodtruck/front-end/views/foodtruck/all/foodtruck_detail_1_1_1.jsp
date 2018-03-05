<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko"> 
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Foodtruck:: ver1.0</title>

    <!-- Bootstrap core CSS -->    
    <link href="<c:url value='/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="<c:url value='/bootstrap/css/bootstrap-theme.min.css'/>" rel="stylesheet">
    <!-- YangGeum template CSS -->    
    <link rel="stylesheet" href="<c:url value='/bootstrap/css/template.css'/>" type="text/css" />
    <!-- Custom styles for this template -->    
	
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script>	
		$(function(){
			var currentPosition = parseInt($("#sidebox").css("top"));
			$(window).scroll(function() {
				var position = $(window).scrollTop(); 
				$("#sidebox").stop().animate({"top":position+currentPosition+"px"},1000);
			});
		});
	</script>
  </head>
		<style>
			body {
			min-height: 2000px;
			padding-top: 70px;
				}
		</style>
		<style>
		
		</style>
<body>
	<div id="TOP">
		<jsp:include page="/com.sajo.foodtruck/front-end/template/Top.jsp"/>
    </div>
    <div id="RIGHT">
		<jsp:include page="/com.sajo.foodtruck/front-end/template/Right.jsp"/>
    </div>
	<!-- 내용 시작 -->
	
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="jumbotron" style="background-color: white !important;">
					<img class="img-fluid"
						src="<c:url value= '/com.sajo.foodtruck/front-end/images/logo.jpg'/>" />
					<h1 style="display: inline; line-height: 150%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상세 메뉴</h1>
				</div>
				
			<div class="row">
				<div class="col-md-6">
					<img class="img-rounded" src="<c:url value='/com.sajo.foodtruck/front-end/images/menu_list1.jpg'/>">
				</div>
				<div class="col-md-6">
					<h2 align="center">
					국산 소고기로 만든 안심 스테이크
					</h2>
					<h3 align="center">
					L 8,000원 M 6,000원
					</h3>
					
					<div class="row">
						<div class="col-md-6">
							<div class="btn-group" align="center">
								 
								<button class="btn btn-default">
									사이즈
								</button> 
								<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li>
										<a href="#">Large</a>
									</li>
									<li class="divider">
									</li>
									<li class="disabled">
										<a href="#">Small</a>
									</li>
									
									
								</ul>
							</div>
						</div>
						<div class="col-md-6">
							<div class="btn-group">
								 
								<button class="btn btn-default">
									수량
								</button> 
								<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li>
										<a href="#">1</a>
									</li>
									<li class="disabled">
										<a href="#">2</a>
										</li>
								</ul>
							</div>
						</div>
					</div>
					
					<h3>
						총금액 : 30000원
					</h3>
					 
					<button class="btn btn-danger btn-lg btn-block" type="button">
						장바구니 담기
					</button>
				</div>
			</div>
		</div>
	</div>
</div>
	
	
	
	
	
	<!-- 내용 끝 -->
    <div>
		<jsp:include page="/com.sajo.foodtruck/front-end/template/Footer.jsp"/>
 	</div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="<c:url value='/bootstrap/js/bootstrap.min.js'/>"></script>
    </body>
</html>