<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 제이쿼리 추가했다. -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<meta charset="utf-8">
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
            <h1 class="h1">회원가입</h1>
           <form action="/UserJoin.us" method="post" name="joinForm" id="joinForm">
		<p>
			아이디 <input type="text" name="userid" id="userid">
			<input type="button" value="중복확인" onclick="checkId(joinForm.userid.value)">
			<p id="idCheckText">중복확인 버튼을 클릭하세요</p>
		</p>
		<p>
			비밀번호 <input type="password" name="userpw" id="userpw">
		</p>
		<p>
			비밀번호 확인 <input type="password" name="userpw_re" id="userpw_re">
		</p>
		<p>
			이름 <input type="text" name="username" id="username" >
		</p>
		<p>
			핸드폰 번호 <input type="text" name="userphone" id="userphone">
		</p>
		<p>
			<input type="text" id="sample6_postcode" name="zipcode" placeholder="우편번호">
			<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
		</p>
		<p>
			<input type="text" id="sample6_address" name="addr" placeholder="주소"><br>
		</p>
		<p>
			<input type="text" id="sample6_detailAddress" name="addrdetail" placeholder="상세주소">
		</p>
		<p>
			<input type="text" id="sample6_extraAddress" name="addretc" placeholder="참고항목">	
		</p>
		<p>
			<input type="button" value="가입완료" onclick="sendit()">
		</p>
	</form>
        </div>
    </div>
    <!-- End Content Page -->
    

	
    <!-- Start Footer -->
	<%@ include file = "footer.jsp" %>
	<!-- End Footer -->

    
    <!-- start additional Script -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="user.js"></script>
	<!-- end Script -->
</body>
</html>