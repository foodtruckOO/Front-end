<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/com.sajo.foodtruck/front-end/Common/IsMember.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<!-- 지도 api -->
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=QRl5RDgAPERBZdgCmTuR&submodules=geocoder"></script>
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

<body>
	<div id="TOP">
		<jsp:include page="/com.sajo.foodtruck/front-end/template/Top.jsp"/>
    </div>
    <div id="RIGHT">
		<jsp:include page="/com.sajo.foodtruck/front-end/template/Right.jsp"/>
    </div>
	<!-- 내용 시작 -->
	<section>   
      <article>
      <div style="float: left; width: 10%;">
       <label>시/군/구</label>
       <select class="form-control" style="width: 90%;"> 
       <option>서울시</option> 
       <option>경기도</option> 
       <option>강원도</option> 
       <option>충청도</option> 
       <option>경상도</option> 
       <option>전라도</option>
       </select>
       </div>
       <div style="float: left; width: 10%;">
       <label>동/읍/면</label>
       <select class="form-control" style="width: 90%;"> 
       <option>강동구</option> 
       <option>강서구</option> 
       <option>강남구</option> 
       <option>강북구</option> 
       <option>관악구</option> 
       </select>
       </div>
       <div style="float: left; width: 33%; height: 55%; margin-top: 25px">
       <input class="form-control" type="text" placeholder="상호명을 입력해주세요" style="width: 50%; float:left;"/>&nbsp;
       <input class="btn btn-primary" type="button" value="검색"/>
       </div>
      </article><br><br><br><br>
       
      <article>
       <label class="btn btn-primary">
       <input type="checkbox" autocomplete="off" >한식
       </label>
       <label class="btn btn-primary">
       <input type="checkbox" autocomplete="off">일식
       </label>
       <label class="btn btn-primary">
       <input type="checkbox" autocomplete="off" >중식
       </label>            
       <label class="btn btn-primary">
       <input type="checkbox" autocomplete="off" >양식
       </label>
       <label class="btn btn-primary">
       <input type="checkbox" autocomplete="off" >퓨전
       </label>
       <label class="btn btn-primary">
       <input type="checkbox" autocomplete="off" >기타
        </label>
      </article><br>
       
      <article>
       <h2>지도영역</h2>
        <div id="map" style="width:100%;height:500px;"></div>
      </article><br><br>
           
      <article>
      <h2>검색결과영역</h2>
      </article><br>
      	
	<article>
	<table class="table table-bordered table-hover">
		<tr style="text-align: center">
			<th style="width:10%;">번호</th>
			<th style="width:20%">업소명</th>
			<th style="width:25%">주소</th>
			<th style="width:20%">대표메뉴</th>
			<th style="width:15%">연락처</th>
		</tr>
		<c:if test="${empty requestScope.list }" var="flag">
			<tr>
				<td colspan="6">등록된 자료가 없습니다</td>
			</tr>
		</c:if>
		<c:if test="${not flag }">
			<c:forEach var="item" items="${list}" varStatus="loop">
				<tr>
					<td>${totalRecordCount - (((nowPage - 1) * pageSize) + loop.index)}</td>
					<td><a href="<c:url value='/DATAROOM/View.do?key=${item.no}'/>">${item.title}</a></td>
					<td>${item.name}</td>
					<td>${item.postdate}</td>
					<td><span id="download${loop.count}">${item.downcount}</span></td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	</article>
	
	<!-- footer -->
	<article>
		<jsp:include page="/com.sajo.foodtruck/front-end/template/Footer.jsp"/>
 	</article>
    </section>
	<!-- 내용 끝 -->
	
	<!-- 지도 -->
      <script>
      var mapOptions = {
          center: new naver.maps.LatLng(37.3595704, 127.105399),
          zoom: 10
      };
      var map = new naver.maps.Map('map', mapOptions);
      </script>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="<c:url value='/bootstrap/js/bootstrap.min.js'/>"></script>
    </body>
</html>