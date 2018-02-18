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
		
	</style>
	
  </head>

<body>
	<jsp:include page="/com.sajo.foodtruck/front-end/template/Top.jsp"/>
    <div class="container">
    	
		<div class="page-header">
  			<h2>손님용 마이페이지</h2>
		</div>	
	</div>	
	<div class="mypage_table">
		<!-- table body -->
		<table style="width: 80%; margin-left: 10%;">
			<tr>
				<td style="background-color: yellow;  height: 400px;" colspan="2">back img</td>
			</tr>
			

			<tr >
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
	
	<img src="/com.sajo.foodtruck/front-end/images/user.png" alt="이미지를 찾을 수 없습니다..." class="img-circle">
	
	<jsp:include page="/com.sajo.foodtruck/front-end/template/Footer.jsp"/>
 

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="<c:url value='/bootstrap/js/bootstrap.min.js'/>"></script>
    </body>
</html>