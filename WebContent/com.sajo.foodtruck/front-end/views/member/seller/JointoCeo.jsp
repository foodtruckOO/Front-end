<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style type="text/css">
body, html {
    height: 100%;
    background-repeat: no-repeat;
    background-image: linear-gradient(rgb(239, 151, 19), rgb(255, 255, 255));
}

.card-container.card {
    max-width: 350px;
    padding: 40px 40px;
}
  
.btn {
    font-weight: 700;
    height: 36px;
    -moz-user-select: none;
    -webkit-user-select: none;
    user-select: none;
    cursor: default;
}

/*
 * Card component
 */
.card {
    background-color: #F7F7F7;
    /* just in case there no content*/
    padding: 20px 25px 30px;
    margin: 0 auto 25px;
    margin-top: 50px;
    /* shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.profile-img-card {
    width: 96px;
    height: 96px;
    margin: 0 auto 10px;
    display: block;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
}

/*
 * Form styles
 */
.profile-name-card {
    font-size: 16px;
    font-weight: bold;
    text-align: center;
    margin: 10px 0 0;
    min-height: 1em;
}

.reauth-email {
    display: block;
    color: #404040;
    line-height: 2;
    margin-bottom: 10px;
    font-size: 14px;
    text-align: center;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

.form-signin #inputid,
.form-signin #inputPassword,
.form-signin #inputsaupno,
.form-signin #inputtruckno {
    direction: ltr;
    height: 44px;
    font-size: 16px;
}

.form-signin input[type=text],
.form-signin input[type=password],
.form-signin input[type=text],
.form-signin button {
    width: 100%;
    display: block;
    margin-bottom: 10px;
    z-index: 1;
    position: relative;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

.form-signin .form-control:focus {
    border-color: rgb(104, 145, 162);
    outline: 0;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
}

.btn.btn-signin {
    /*background-color: #4d90fe; */
    background-color: rgb(104, 145, 162);
    /* background-color: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));*/
    padding: 0px;
    font-weight: 700;
    font-size: 14px;
    height: 36px;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
    border: none;
    -o-transition: all 0.218s;
    -moz-transition: all 0.218s;
    -webkit-transition: all 0.218s;
    transition: all 0.218s;
}

.btn.btn-signin:hover,
.btn.btn-signin:active,
.btn.btn-signin:focus {
    background-color: rgb(12, 97, 33);
}

</style>
</head>
<body onLoad="parent.resizeTo(450,950)">
	<div class="container">
        <div class="card card-container">
        <h2>Seller</h2><hr style="border: solid 1px #FE9A2E;">
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin">
                <span id="reauth-email" class="reauth-email"></span>
                <label>아이디</label>
                <input type="text" id="inputid" class="form-control" placeholder="아이디를 입력해주세요" required autofocus>
                <label>비밀번호</label>
                <input type="password" id="inputPassword" class="form-control" placeholder="비밀번호를 입력해주세요" required>
                <label>비밀번호 확인</label>
                <input type="password" id="inputPassword" class="form-control" placeholder="비밀번호를 입력해주세요" required>
                <label>사업자번호</label>
                <input type="text" id="inputsaupno" class="form-control" placeholder="ex)123-45-67890" required>
                <label>차량번호</label>
                <input type="text" id="inputtruckno" class="form-control" placeholder="ex)12가3456" required>
                <label>업종선택</label>
                <p style="font-size: 0.8em; color: red;">*다중선택 가능</p>
                <div class="checkbox" style="text-align: center">
                	<label>
				    <input type="checkbox" value="">한식
				    </label>&emsp;
				    <label>
				    <input type="checkbox" value="">일식
				    </label>&emsp;
				    <label>
				    <input type="checkbox" value="">중식
				    </label>&emsp;<br><br>
				    <label>
				    <input type="checkbox" value="">양식
				    </label>&emsp;
				    <label>
				    <input type="checkbox" value="">퓨전
				    </label>&emsp;
				    <label>
				    <input type="checkbox" value="">기타
				    </label>&emsp;
				</div><br>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">완료</button>
                
            </form><!-- /form -->     
        </div><!-- /card-container -->
    </div><!-- /container -->
   
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="<c:url value='/bootstrap/js/bootstrap.min.js'/>"></script>
</body>
</html>