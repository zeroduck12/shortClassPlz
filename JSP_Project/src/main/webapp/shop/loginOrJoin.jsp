<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SOGONDAK MARKET</title>
<!-- 제이쿼리 추가했다. -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

	<meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/shop/assets/웹사이트 img/나봉이1.jpg">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
</head>
<style>
   a:visited{
      color:#000000;
      text-decoration:none;
   }
   a:link {
      color:#000000;
      text-decoration:none;
</style>
<body>
    <!-- TopNav 와 header -->
	<%@ include file = "TopNav_Header.jsp" %>
	<!-- Close TopNav 와 header -->
	
    <!-- Modal -->
    <%@ include file = "modal.jsp" %>
	<!-- Close Modal -->

	<!-- Start Content Page -->
    <div class="container-fluid bg-light py-5">
        <div class="col-md-6 m-auto text-center">
            <h1 class="h1">로그인</h1>
            <p>
            <!-- start 로그인 부분 -->
				<form action="/UserLoginOk.us" method="post" name="loginForm" id="loginForm">
					<p>
						아이디 <input type="text" name="userid">
					</p>
					<p>
						패스워드 <input type="password" name="userpw">
					</p>
			<input type="submit" value="로그인">
			</form>
			<!-- End 로그인 부분 -->
			<br><br>
        	<!-- start 회원가입 부분 -->
				<a href="joinview.jsp">회원가입</a><br>
<!-- 				<a href="joinview.jsp">회원탈퇴</a> -->
			<!-- End 회원가입 부분 -->
		</div>
    </div>
    <!-- End Content Page -->
	   
	<!-- Start Footer -->
	<%@ include file = "footer.jsp" %>
	<!-- End Footer -->

</body>
</html>