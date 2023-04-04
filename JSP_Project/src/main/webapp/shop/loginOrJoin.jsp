<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소곤닥 - 회원가입 or 로그인</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
</head>
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
				<form action="/UserLoginOk.us" method="post">
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
				<a href="joinview.jsp">회원가입</a>
			<!-- End 회원가입 부분 -->
		</div>
    </div>
    <!-- End Content Page -->


	   
	<!-- Start Footer -->
	<%@ include file = "footer.jsp" %>
	<!-- End Footer -->

    <!-- Start Script -->
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
    <!-- End Script -->
	
</body>
</html>