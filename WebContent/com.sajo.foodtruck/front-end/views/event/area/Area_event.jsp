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
    <title>Area_event</title>

    <!-- Bootstrap core CSS -->    
    <link href="<c:url value='/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="<c:url value='/bootstrap/css/bootstrap-theme.min.css'/>" rel="stylesheet">
    <!-- YangGeum template CSS -->    
    <link rel="stylesheet" href="<c:url value='/bootstrap/css/template.css'/>" type="text/css" />
    <!-- Custom styles for this template -->    
	<style>
		body {
		   	min-height: 2000px;
  			padding-top: 70px;
		}
		table,table th{
			text-align:center;
		}
		
		.pagination>li>a, .pagination>li>span { border-radius: 50% !important;margin: 0 5px;}
	</style>
	
  </head>

<body>
	<jsp:include page="/com.sajo.foodtruck/front-end/template/Top.jsp"/>
	
	  <div id="RIGHT">
		<jsp:include page="/com.sajo.foodtruck/front-end/template/Right.jsp"/>
    </div>
    
	<!-- 내용 시작 -->
	 <div class="container-fluid">

      <div class="row row-offcanvas row-offcanvas-right">

        <div class="col-xs-12 col-sm-12">
          <div class="jumbotron">
            <h1>푸드트럭별 이벤트</h1>
          </div>
          <div class="row">
            <div class="col-xs-6 col-lg-4">
              <a href ="#" >
              <img class = "img-responsive img-rounded" width ="400" height="200" src="<c:url value ='/com.sajo.foodtruck/front-end/images/area_event1.jpg'/>">
              </a>
              <h3>제품 구매시 너구리 무료 증정</h3>
              <p>기간 : 2018-01-01 ~ 2018-01-02</p>
              <p><a class="btn btn-default" href="#" role="button">더보기 &raquo;</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
             <a href ="#" >
              <img class = "img-responsive img-rounded" width ="400" height="200" src="<c:url value ='/com.sajo.foodtruck/front-end/images/area_event1.jpg'/>">
              </a>
              <h3>제품 구매시 너구리 무료 증정</h3>
              <p>기간 : 2018-01-01 ~ 2018-01-02</p>
              <p><a class="btn btn-default" href="#" role="button">더보기 &raquo;</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
			  <a href ="#" >
              <img class = "img-responsive img-rounded" width ="400" height="200" src="<c:url value ='/com.sajo.foodtruck/front-end/images/area_event1.jpg'/>">
              </a>
              <h3>제품 구매시 너구리 무료 증정</h3>
              <p>기간 : 2018-01-01 ~ 2018-01-02</p>
              <p><a class="btn btn-default" href="#" role="button">더보기 &raquo;</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
			  <a href ="#" >
              <img class = "img-responsive img-rounded" width ="400" height="200" src="<c:url value ='/com.sajo.foodtruck/front-end/images/area_event1.jpg'/>">
              </a>
              <h3>제품 구매시 너구리 무료 증정</h3>
              <p>기간 : 2018-01-01 ~ 2018-01-02</p>
              <p><a class="btn btn-default" href="#" role="button">더보기 &raquo;</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
				<a href ="#" >
              <img class = "img-responsive img-rounded" width ="400" height="200" src="<c:url value ='/com.sajo.foodtruck/front-end/images/area_event1.jpg'/>">
              </a>
              <h3>제품 구매시 너구리 무료 증정</h3>
              <p>기간 : 2018-01-01 ~ 2018-01-02</p>
              <p><a class="btn btn-default" href="#" role="button">더보기 &raquo;</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
				<a href ="#" >
              <img class = "img-responsive img-rounded" width ="400" height="200" src="<c:url value ='/com.sajo.foodtruck/front-end/images/area_event1.jpg'/>">
              </a>
              <h3>제품 구매시 너구리 무료 증정</h3>
              <p>기간 : 2018-01-01 ~ 2018-01-02</p>
              <p><a class="btn btn-default" href="#" role="button">더보기 &raquo;</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
          </div><!--/row-->
        </div><!--/.col-xs-12.col-sm-9-->
          </div>
          
             <div align="center">
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
          
          
    </div><!--/.container-->
	<!-- 내용 끝 -->
	<jsp:include page="/com.sajo.foodtruck/front-end/template/Footer.jsp"/>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="<c:url value='/bootstrap/js/bootstrap.min.js'/>"></script>
    </body>
</html>