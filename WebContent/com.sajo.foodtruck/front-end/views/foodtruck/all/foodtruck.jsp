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
	<style>
		body {
		   	min-height: 2000px;
  			padding-top: 70px;
		}
		table,table th{
			text-align:center;
		}
		   #navi{
        padding:0;
        width:100%;
        margin:0;
      }
      #navi h2{
        margin: 0;
        padding: 0;
      }
      /*메인메뉴 스타일 지정*/
      #navi h2 a{
        display: block;
        font-weight: bold;
        text-decoration: none;
        margin: 0;
        padding: 10px;
        font-family:'돋움', sans-serif;
        font-size: 14px;
        color: #ccc;
        text-shadow: 0 1px 1px #000;
        background:#1d4ab3;
        background: -moz-linear-gradient(#1d4ab3 0%, #163887 100%);
        background: -webkit-linear-gradient(#1d4ab3 0%, #163887 100%);
        background: -o-linear-gradient(#1d4ab3 0%, #163887 100%);
        background: linear-gradient(#1d4ab3 0%, #163887 100%);
      }

      /*메인 메뉴에 대한 마우스 이벤트에 대한 효과 지정*/
      #navi :target h2 a,
      #navi h2 a:focus, 
      #navi h2 a:hover, 
      #navi h2 a:active{
        background:#1a1a1a;
        background:-moz-linear-gradient(#1a1a1a 0%, #000000 100%);
        background:-webkit-linear-gradient(#1a1a1a 0%, #000000 100%);
        background:-o-linear-gradient(#1a1a1a 0%, #000000 100%);
        background:linear-gradient(#1a1a1a 0%, #000000 100%);
        color:#eee;
        text-shadow: 0 1px 1px #000000;
      }
      /*부메뉴에 대한 기본 설정*/
      #navi p {
        padding: 0;
        margin: 0;
        height:0;
        overflow:hidden;
        -moz-transition:height 0.5s ease-in;
        -o-transition:all 0.5s ease-in;
        -webkit-transition:height 0.5s ease-in;
        transition:height 0.2s ease-in;
      }
      /*메인 메뉴를 클릭했을 대의 부메뉴를 정의*/
#navi :target p {
  height: 30px;
  border-bottom: 1px solid #c9c9c9;
  background:#efefef;
}

      /*부메뉴 링크에 대한 효과를 정의*/

#navi :target p a{
  display: block;
  text-decoration:none;
  padding: 4px 10px;
  line-height: 22px;
  font-size: 13px;
  color: #4e5800;
}
		
	</style>
	
  </head>

<body>
	<jsp:include page="/com.sajo.foodtruck/front-end/template/Top.jsp"/>
	
<div class="container">
	<div class="row">
	<div class="row row-offcanvas row-offcanvas-right">
	<!-- 내용 시작 -->
	 <div class="col-xs-12 col-sm-12">
			<div class="jumbotron">
            	<h1>푸드트럭 메뉴</h1>
            </div>
			 <div class="col-lg-3">
          <h2>푸드트럭 분류</h2>
          	<div id = "navi">
          <div class="list-group">
          	<div id="menu1">
            <h2><a href="#menu1" class="list-group-item">종류별</a></h2>
            <p><a href="#">한식</a></p>
            <p><a href="#">중식</a></p>
            <p><a href="#">일식</a></p>
            </div>
            <div id="menu2">
            <h2><a href="#menu2" class="list-group-item">지역별</a></h2>
            <p><a href="#">서울</a></p>
            <p><a href="#">부산</a></p>
            <p><a href="#">대구</a></p>
            </div>
            <h2><a href="#menu3" class="list-group-item">전체보기</a></h2>
            <h2><a href="#menu3" class="list-group-item">이달의푸드트럭</a></h2>
            <h2><a href="#menu3" class="list-group-item">샘플메뉴</a></h2>
          </div>
        </div>
        	</div>
            <div class="col-xs-6 col-lg-3">
              <a href ="#" >
              <img class = "img-responsive img-rounded" width ="300" height="200" src="<c:url value ='/front-end/images/menu_list1.jpg'/>">
              </a>
              <h3>강남 푸드트럭 돈가스1</h3>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-3">
             <a href ="#" >
              <img class = "img-responsive img-rounded" width ="300" height="200" src="<c:url value ='/front-end/images/menu_list1.jpg'/>">
              </a>
              <h3>텍스트</h3>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-3">
			  <a href ="#" >
              <img class = "img-responsive img-rounded" width ="300" height="200" src="<c:url value ='/front-end/images/menu_list1.jpg'/>">
              </a>
              <h3>aaaaaaaaaaaa2aaaa</h3>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class=" col-xs-6 col-lg-3">
			  <a href ="#">
              <img class = "img-responsive img-rounded" width ="300" height="200" src="<c:url value ='/front-end/images/menu_list1.jpg'/>">
              </a>
              <h3>333333333</h3>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-3">
				<a href ="#" >
              <img class = "img-responsive img-rounded" width ="300" height="200" src="<c:url value ='/front-end/images/menu_list1.jpg'/>">
              </a>
              <h3>44444444</h3>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-3">
				<a href ="#" >
              <img class = "img-responsive img-rounded" width ="300" height="200" src="<c:url value ='/front-end/images/menu_list1.jpg'/>">
              </a>
              <h3>신규 가입시 마일리지 증정</h3>
            </div><!--/.col-xs-6.col-lg-4-->
        
        
		
          
          
           
    </div>
    </div>	
</div>
</div>
	<!-- 내용 끝 -->
   
	<jsp:include page="/com.sajo.foodtruck/front-end/template/Footer.jsp"/>
 

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="<c:url value='/bootstrap/js/bootstrap.min.js'/>"></script>
    </body>
</html>