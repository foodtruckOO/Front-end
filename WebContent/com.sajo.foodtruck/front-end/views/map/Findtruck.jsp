<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ include file="/com.sajo.foodtruck/front-end/Common/IsMember.jsp" %> --%>
<!DOCTYPE html>
<html lang="ko">
<!-- JQuery CDN 호출 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 소재지 js 호출 -->
<script src="<c:url value='/com.sajo.foodtruck/front-end/views/map/sojaeji.js'/>"></script>

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
	<section style="padding-top: 80px; margin-right: 80px; margin-left: 80px;">
	  <article> 
	  <h2>푸드트럭찾기</h2><hr align="left" style="border: solid 1px #FE9A2E; width: 20%">
	  </article>
	  
	  <!-- 주소검색 -->
	  <article>
		<fieldset>
		<legend>주소그룹</legend>
		<div style="margin-left: 30px;">
		<select class="form-control" name="sido" id="sido" style="width: 10%; float: left; margin-right: 5px"></select>
		<select class="form-control" name="gugun" id="gugun" style="width: 10%; float: left; margin-right: 5px"></select>
		<select class="form-control" name="dong" id="dong" style="width: 10%; float: left; margin-right: 5px"></select>
		<input id="address" class="form-control" type="text" placeholder="상호명" style="width: 20%; float:left; margin-right: 5px"/>
		<input id="submit" class="btn btn-primary" type="button" value="검색"/>
		</div>
		</fieldset>
	  </article><br><br>
		
	  <!-- 지도호출 -->
      <article style="margin-right:30px; margin-left: 30px">
        <div id="map" style="width:100%;height:500px;"></div>
        <!-- 지도 api 호출 -->
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0166b61c82cf34bd6dccfd50a04fae1f&libraries=services"></script>
      </article><br><br>
           
      <article>
      <h2>검색결과영역</h2><hr align="left" style="border: solid 1px #FE9A2E; width: 20%">
      </article><br>
      
    <article style="float: right; margin-right: 30px">		
		<select class="form-control">
			<option value="거리">거리순</option>
			<option value="추천">추천순</option>
			<option value="인기" selected="selected">인기순</option>
		</select>
	</article><br><br>
      	
	<article style="margin-right:30px; margin-left: 30px">
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
	</table>
	</article>
	
	<!-- footer -->
	<article>
		<jsp:include page="/com.sajo.foodtruck/front-end/template/Footer.jsp"/>
 	</article>
    </section>
	<!-- 내용 끝 -->
	
	
	<!-- 주소검색 -->
	<script type="text/javascript">
	new sojaeji('sido', 'gugun', 'dong');
	</script>
	
	<!-- 지도생성 / 설정-->
	<script>
	//var markers = [];
	var container = document.getElementById('map');
	var options = {
		center: new daum.maps.LatLng(37.47893444641687, 126.87900549310089),
		level: 3
	};
	var map = new daum.maps.Map(container, options);
	// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성
	var mapTypeControl = new daum.maps.MapTypeControl();
	// 지도에 컨트롤을 추가해야 지도위에 표시
	// daum.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
	map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);
	// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성
	var zoomControl = new daum.maps.ZoomControl();
	map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

	var marker = new daum.maps.Marker({ 
	    // 지도 중심좌표에 마커를 생성합니다 
	    position: map.getCenter() 
	}); 
	// 지도에 마커를 표시합니다
	marker.setMap(map);
	var iwContent = '<div style="padding:5px;">한국소프트웨어<br>인재개발원</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwPosition = new daum.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다
	// 인포윈도우를 생성합니다
	var infowindow = new daum.maps.InfoWindow({
    position : iwPosition, 
    content : iwContent 
	});
	// 마커에 마우스오버 이벤트를 등록합니다
	daum.maps.event.addListener(marker, 'mouseover', function() {
	  // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
	    infowindow.open(map, marker);
	});

	// 마커에 마우스아웃 이벤트를 등록합니다
	daum.maps.event.addListener(marker, 'mouseout', function() {
	    // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
	    infowindow.close();
	});


	// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
	//infowindow.open(map, marker)
	// 장소 검색 객체를 생성합니다
	var ps = new daum.maps.services.Places();
	// 키워드를 생성한다
	var keyword="";
	<!-- 검색한 주소값 keyword에 저장 -->
	$(function(){
		$('#submit').click(function(){
			var a=$('#sido').val();			
			var b=$('#gugun').val();
			var c=$('#dong').val();
			var d=$('#address').val()==null?" ":$('#address').val();
			keyword = a+" "+b+" "+c+" "+d;
			// 키워드로 장소를 검색합니다
			ps.keywordSearch(keyword, placesSearchCB); 
			console.log(keyword);
		});
	});
	// 키워드로 장소를 검색합니다
	//ps.keywordSearch("경기도 이천시 장호원읍", placesSearchCB); 
		
	// 키워드 검색 완료 시 호출되는 콜백함수 입니다
	function placesSearchCB (data, status, pagination) {
	    if (status === daum.maps.services.Status.OK) {
	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	        // LatLngBounds 객체에 좌표를 추가합니다
	        var bounds = new daum.maps.LatLngBounds();
	        for (var i=0; i<data.length; i++) {
	        	//일단 마커표시안함!!!
	        	//일단 마커표시안함!!!
	        	//일단 마커표시안함!!!
	            //displayMarker(data[i]);    
	            bounds.extend(new daum.maps.LatLng(data[i].y, data[i].x));
	        }       
	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	        map.setBounds(bounds);
	    } 
	}
	
	/* //일단 마커표시안함!!!
	//일단 마커표시안함!!!
	//일단 마커표시안함!!!
	// 지도에 마커를 표시하는 함수입니다
	function displayMarker(place) {
		// 지도에 표시되고 있는 마커를 제거합니다
	    removeMarker();
	    // 마커를 생성하고 지도에 표시합니다
	    var marker = new daum.maps.Marker({
	        map: map,
	        position: map.getCenter()
	    });
	    markers.push(marker);
	    // 마커에 마우스이벤트를 등록합니다
	    daum.maps.event.addListener(marker, 'mouseover', function() {
	        // 마커를 오버시 장소명이 인포윈도우에 표출됩니다
	        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
	        infowindow.open(map, marker);
	    });
	    daum.maps.event.addListener(marker, 'mouseout', function() {
	        //마우스 아웃시 인포인도우 없어짐
	    	infowindow.close();
	    });
	}

	// 지도 위에 표시되고 있는 마커를 모두 제거합니다
	function removeMarker() {
	    for ( var i = 0; i < markers.length; i++ ) {
	        markers[i].setMap(null);
	    }   
	    markers = [];
	} */
	</script>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="<c:url value='/bootstrap/js/bootstrap.min.js'/>"></script>
    </body>
</html>