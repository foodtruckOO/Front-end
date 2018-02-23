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
	href="<c:url value='/bootstrap/css/template.css'/>" type="text/css" />
<!-- Custom styles for this template -->

<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">	
</script>
	
<script>	
		$(function(){
			var currentPosition = parseInt($("#sidebox").css("top"));
			$(window).scroll(function() {
				var position = $(window).scrollTop(); 
				$("#sidebox").stop().animate({"top":position+currentPosition+"px"},1000);
			});
			$('.nav-tabs-dropdown').each(function(i, elm) {
			    
			    $(elm).text($(elm).next('ul').find('li.active a').text());
			    
			});
			  
			$('.nav-tabs-dropdown').on('click', function(e) {

			    e.preventDefault();
			    
			    $(e.target).toggleClass('open').next('ul').slideToggle();
			    
			});

			$('#nav-tabs-wrapper a[data-toggle="tab"]').on('click', function(e) {

			    e.preventDefault();
			    
			    $(e.target).closest('ul').hide().prev('a').removeClass('open').text($(this).text());
			      
			});
			
		});
	</script>
</head>
<style>
.pagination>li>a, .pagination>li>span {
	border-radius: 50% !important;
	margin: 0 5px;
}
.nav-tabs-dropdown {
  display: none;
  border-bottom-left-radius: 0;
  border-bottom-right-radius: 0;
}

.nav-tabs-dropdown:before {
  content: "\e114";
  font-family: 'Glyphicons Halflings';
  position: absolute;
  right: 30px;
}

@media screen and (min-width: 769px) {
  #nav-tabs-wrapper {
     display: block!important; 
  }
}
@media screen and (max-width: 768px) {
    .nav-tabs-dropdown {
        display: block;
    }
    #nav-tabs-wrapper {
        display: none;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
         text-align: center; 
    }
   .nav-tabs-horizontal {
        min-height: 20px;
        padding: 19px;
        margin-bottom: 20px;
        background-color: #f5f5f5;
        border: 1px solid #e3e3e3;
        border-radius: 4px;
        -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.05);
        box-shadow: inset 0 1px 1px rgba(0,0,0,.05);
   }
    .nav-tabs-horizontal  > li {
        float: none;
    }
    .nav-tabs-horizontal  > li + li {
        margin-left: 2px;
    }
    .nav-tabs-horizontal > li,
    .nav-tabs-horizontal > li > a {
        background: transparent;
        width: 100%;
    } 
    .nav-tabs-horizontal  > li > a {
        border-radius: 4px;
    }
    .nav-tabs-horizontal  > li.active > a,
    .nav-tabs-horizontal  > li.active > a:hover,
    .nav-tabs-horizontal  > li.active > a:focus {
        color: #ffffff;
        background-color: #428bca;
    }
}
</style>
<body>
	<div id="TOP">
		<jsp:include page="/com.sajo.foodtruck/front-end/template/Top.jsp" />
	</div>
	<div id="RIGHT">
		<jsp:include page="/com.sajo.foodtruck/front-end/template/Right.jsp" />
	</div>
	<!-- 내용 시작 -->

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron" style="background-color: white !important;">
					<img class="img-fluid"
						src="<c:url value= '/com.sajo.foodtruck/front-end/images/logo.jpg'/>">
					<h1 style="display: inline; line-height: 150%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;메뉴</h1>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-3" style="margin-bottom: 50px">
				<a href="#" class="nav-tabs-dropdown btn btn-block btn-primary">전체메뉴</a>
				<ul id="nav-tabs-wrapper"
					class="nav nav-tabs nav-pills nav-stacked well">
					<li class="active"><a href="#vtab1" data-toggle="tab">종류별</a></li>
					<li><a href="#vtab2" data-toggle="tab">지역별</a></li>
					<li><a href="#vtab3" data-toggle="tab">Tab 3</a></li>
				</ul>
			</div>
			<div class="col-sm-9">
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane fade in active" id="vtab1">
						<div class="col-md-4 col-xs-6">
							<a
								href="<c:url value ='/com.sajo.foodtruck/front-end/views/foodtruck/all/foodtruck_detail1.jsp'/>">
								<img class="img-responsive img-rounded" width="300" height="200"
								src="<c:url value ='/com.sajo.foodtruck/front-end/images/menu_list1.jpg'/>">
							</a>
							<h3>첫번째</h3>
						</div>
						<div class="col-md-4 col-xs-6">
							<img class="img-responsive img-rounded" width="300" height="200"
								src="<c:url value ='/com.sajo.foodtruck/front-end/images/menu_list1.jpg'/>">
							<h3>두번째</h3>
						</div>
						<div class="col-md-4 col-xs-6">
							<img class="img-responsive img-rounded" width="300" height="200"
								src="<c:url value ='/com.sajo.foodtruck/front-end/images/menu_list1.jpg'/>">
							<h3>세번째</h3>
						</div>
						<div class="col-md-4 col-xs-6">
							<img class="img-responsive img-rounded" width="300" height="200"
								src="<c:url value ='/com.sajo.foodtruck/front-end/images/menu_list1.jpg'/>">
							<h3>네번째</h3>
						</div>
						<div class="col-md-4 col-xs-6">
							<img class="img-responsive img-rounded" width="300" height="200"
								src="<c:url value ='/com.sajo.foodtruck/front-end/images/menu_list1.jpg'/>">
							<h3>다번째</h3>
						</div>
						<div class="col-md-4 col-xs-6">
							<img class="img-responsive img-rounded" width="300" height="200"
								src="<c:url value ='/com.sajo.foodtruck/front-end/images/menu_list1.jpg'/>">
							<h3>여섯번째</h3>
						</div>
						<div class="row">
							<div class="col-md-12 col-xs-12" style="text-align: center;">
								<ul class="pagination">
									<li class="disabled"><a href="#">«</a></li>
									<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">»</a></li>
								</ul>
							</div>
						</div>

					</div>
					<div role="tabpanel" class="tab-pane fade" id="vtab2">
						<h3>지역별</h3>
						<p>아직 미구현</p>
						<div class="col-md-12 col-xs-12" style="text-align: center;">
							<ul class="pagination">
								<li class="disabled"><a href="#">«</a></li>
								<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">»</a></li>
							</ul>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane fade in" id="vtab3">
						<h3>뭐널지 안정함</h3>
						<p>이것도 미구현</p>
						<div class="col-md-12 col-xs-12" style="text-align: center;">
							<ul class="pagination">
								<li class="disabled"><a href="#">«</a></li>
								<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">»</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>



	<!-- 내용 끝 -->
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