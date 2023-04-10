<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
    <title>SOGONDAK MARKET</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/shop/assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/shop/assets/웹사이트 img/나봉이1.jpg">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/shop/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/shop/assets/css/templatemo.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/shop/assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/shop/assets/css/fontawesome.min.css">
    <style>
    /* bootstrap.min.css 를 변경하면 안되는데 인덱스 페이지에의 이부분만 수정하면 되서 이곳에다가 스타일 사용함 */
    .row{
        justify-content: center;
    }
    </style>
</head>
<body>
    <!-- TopNav 와 header -->
	<%@ include file = "TopNav_Header.jsp" %>
	<!-- Close TopNav 와 header -->
	
    <!-- Modal -->
    <%@ include file = "modal.jsp" %>
	<!-- Close Modal -->

    <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/shop//assets/웹사이트 img/3월 마켓 이벤트.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left align-self-center">
                                <h1 class="h1"><b>3월 마켓 이벤트</b></h1>
                                <h3 class="h2">구매자 전원 스티커 2종 증정!</h3>
                                <p>
                                    ෆ소곤소곤 우리 이야기ෆ<br>
                                    1. 구매자 전원<br>
                                        덤스티커 2종 증정 (한정 수량)<br>

                                    2. 1만원 이상 구매자<br>
                                        랜덤 덤 증정<br>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/shop//assets/웹사이트 img/3월신상 올인원팩.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1"><b>3월 신상 올인원팩</b></h1>
                                <h3 class="h2">(3월 신상) 씰스티커 4종 + 모조지 8매</h3>
                                <p>
                                    [할인가]<br>
                                    11,200원 -> 9,000원
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/shop//assets/웹사이트 img/모조지 세트 (총 10매).jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1"><b>모조지 세트 (총 10매)</b></h1>
                                <h3 class="h2">총 10매(5종x2매)로 구성된 set 상품입니다.</h3>
                                <p>
                                    모조지<br>
                                    약 80x80 mm<br>
                                    약 95x55 mm<br>
                                    <br>
                                    ⚠️하트 거울 모조지 1mm 칼선 밀림있습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->


	<!-- Start Categories of The Month -->
    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">카테고리</h1>
                <p>
                    소곤닥의 귀여운 바위너구리 나봉이로 만든 스티커와 메모지
                </p>
            </div>
        </div>
        <!-- 동그란 이미지 -->
        <div class="row">
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="${pageContext.request.contextPath}/ItemList.it"><img src="./assets/웹사이트 img/뜨개질 씰스티커.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">스티커</h2>
                <p class="text-center"><a class="btn btn-success" href="${pageContext.request.contextPath}/ItemList.it">보러 가기</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="${pageContext.request.contextPath}/ItemList.it"><img src="./assets/웹사이트 img/모조지 세트 (총 10매).jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">메모지</h2>
                <p class="text-center"><a class="btn btn-success" href="${pageContext.request.contextPath}/ItemList.it">보러 가기</a></p>
            </div>
        </div>
    </section>
    <!-- End Categories of The Month -->


    <!-- Start Footer -->
	<%@ include file = "footer.jsp" %>
	<!-- End Footer -->

   
</body>
</html>