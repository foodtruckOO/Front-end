<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   

<!-- Fixed navbar -->
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="<c:url value='/'/>">답변형 게시판 프로젝트</a>
    </div>
    <div id="navbar" class="navbar-collapse collapse">
      
      <ul class="nav navbar-nav navbar-right">
        <li id="home"  <c:if test="${empty active}"> class="active" </c:if>><a href="<c:url value='/'/>">HOME</a></li>
        <li>
        	<c:if test="${empty sessionScope.id}" var="isNotLogin">
        		<a href="<c:url value='/ReplyBBS/Login/Login.bbs'/>">로그인</a>
        	</c:if>
        	<c:if test="${not isNotLogin }">
        		<a href="<c:url value='/ReplyBBS/Login/Logout.bbs'/>">로그아웃</a>
        	</c:if>
        
        </li>
        <li id="dataroom" <c:if test="${not empty active}"> class="active" </c:if> ><a href="<c:url value='/ReplyBBS/BBS/List.bbs'/>">답변형 게시판</a></li>
      </ul>
    </div><!--/.nav-collapse -->
  </div>
</nav>
      