<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소곤닥 - 소개</title>
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

    <!-- Start TopNav 와 header -->
	<%@ include file = "TopNav_Header.jsp" %>
	<!-- Close TopNav 와 header -->
	
	
	<!-- Modal -->
    <%@ include file = "modal.jsp" %>
	<!-- Close Modal -->


    	<!-- Start Banner -->
	<section class="bg-success py-5">
        <div class="container">
            <div class="row align-items-center py-5">
                <div class="col-md-8 text-white">
                    <h1>소곤닥</h1>
                    <h4>
                        ෆ소곤소곤 우리 이야기ෆ<br>
                        안녕하세요. 소곤닥입니다 :)<br>
                    </h4>
                    <p>
                    🚨 배송/결제/환불 안내<br>
                    1. 주문 안내<br>
                    - 주문 후 1시간 내 입금되지 않은 건은 취소될 수 있습니다.<br>
                    - 현금영수증 발급은 옵션을 통해서 요청해주세요. (메모로 신청 불가)<br>
                    <br>
                    2. 배송 안내<br>
                    - 상세주소까지 정확하게 주소를 입력해주세요.<br>
                    - 일반택배는 3월 22일부터 순차로 상시 발송됩니다.<br>
                    - 준등기는 23, 28일 발송됩니다.<br>
                    - 발송된 이후 주문 취소와 주소지 변경은 불가능 합니다.<br>
                    <br>
                    3. 교환/환불 안내<br>
                    - 받으신 물품이 주문 내역과 다르거나, 불량인 경우 교환/환불 가능합니다. <br>
                    - 물품 수령 후, 3일 이내 문의 연락 주세요. <br>
                    - 1~2 mm 칼선 밀림, 잉크 튐, 작은 반점이 있을 수 있습니다.<br>
                    - 재단 사이즈가 일정하지 않을 수 있습니다.<br>
                    - 위와 같은 사항 및 단순변심 인한 반품 및 교환은 불가합니다.<br>
                    <br>
                    4. 문의 연락<br>
                    - 인스타그램 DM (@sogondak)<br>
                    </p>
                </div>
            </div>
        </div>
    </section>
    <!-- Close Banner -->

    <!-- Start Section -->
    <section class="container py-5">
        <div class="row text-center pt-5 pb-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">마스코트</h1>
                <p>
                    귀여운 이빨과 흰 눈썹이 매력 포인트인<br>
                    바위너구리 나봉이랍니당 ෆ˙ᵕ˙ෆ
                </p>
            </div>
        </div>
        <div class="row">

            <div class="col-md-6 col-lg-3 pb-5">
                <div class="h-100 shadow">
                    <img src="assets/웹사이트 img/나봉이1.jpg" class="img-fluid border">
                </div>
            </div>

            <div class="col-md-6 col-lg-3 pb-5">
                <div class="h-100 shadow">
                    <img src="assets/웹사이트 img/나봉이2.jpg" class="img-fluid border">
                </div>
            </div>

            <div class="col-md-6 col-lg-3 pb-5">
                <div class="h-100 shadow">
                    <img src="assets/웹사이트 img/나봉이3.jpg" class="img-fluid border">
                </div>
            </div>

            <div class="col-md-6 col-lg-3 pb-5">
                <div class="h-100 shadow">
                    <img src="assets/웹사이트 img/나봉이4.jpg" class="img-fluid border">
                </div>
            </div>
        </div>
    </section>
    <!-- End Section -->

   
    
     <!-- Footer -->
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