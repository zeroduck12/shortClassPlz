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

    <!-- Slick -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shop/assets/css/slick.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/shop/assets/css/slick-theme.css">

</head>

<body>
        <!-- TopNav 와 header -->
	<%@ include file = "TopNav_Header.jsp" %>
	<!-- Close TopNav 와 header -->
	
    <!-- Modal -->
    <%@ include file = "modal.jsp" %>
	<!-- Close Modal -->

	<!--  아이템 선언 -->
	<c:set var="item" value="${requestScope.item}" />

    <!-- Open Content -->
     <section class="bg-light">
        <div class="container pb-5">
            <div class="row">
                <div class="col-lg-5 mt-5">
                    <div class="card mb-3">
                        <img class="card-img img-fluid" src="${pageContext.request.contextPath}/shop/assets/웹사이트 img/${item.itemname}.jpg" alt="Card image cap" id="product-detail">
                    </div>
                    
                </div>
                <!-- col end -->
                <div class="col-lg-7 mt-5">
                    <div class="card">
                        <div class="card-body">
                            <h1 class="h2">${item.itemname}</h1>
                            <p class="h3 py-2">판매가 : ${item.price}</p>
                        
                            <p>
								${item.explain}
							</p>
                           

                            <h4>규격</h4>
                            <ul class="list-unstyled pb-3">
                                <li>
                                ${item.spec}
                                <br>
                                ${item.size1}<br>
                                ${item.size2}<br>
                                ${item.size3}
                                  </li>
                            </ul>

                            <form action="/BasketAdd.bs" method="GET">
                                <input type="hidden" name="itemname" value="${item.itemname}">
                                <input type="hidden" name="userIDNumber" value="${userIsLogin.userIDNumber}">
                                <input type="hidden" name="price" value="${item.price}">
                                <div class="row">
                                    
                                    <div class="col-auto">
                                        <ul class="list-inline pb-3">
<!--                                             <li class="list-inline-item text-right"> -->
<!--                                                 수량 -->
<!--                                                 <input type="hidden" name="product-quanity" id="product-quanity" value="1"> -->
<!--                                             </li> -->
<!--                                             <li class="list-inline-item"><span class="btn btn-success" id="btn-minus">-</span></li> -->
<!--                                             <li class="list-inline-item"><span class="badge bg-secondary" id="var-value">1</span></li> -->
<!--                                             <li class="list-inline-item"><span class="btn btn-success" id="btn-plus">+</span></li> -->
                                        </ul>
                                    </div>
                                </div>
                                <div class="row pb-3">
                                
	                                
	                          		<c:if test="${empty userIsLogin}">
										 <div class="col d-grid">
	                                        <a href="javascript:loginPlz()" class="btn btn-success btn-lg">구매하기</a>
	                                    </div>
	                                    <div class="col d-grid">
	                                        <a href="javascript:loginPlz()" class="btn btn-success btn-lg">장바구니</a>
	                                    </div>
									</c:if>
									<c:if test="${not empty userIsLogin}">
										 <div class="col d-grid">
	                                        <button type="submit" class="btn btn-success btn-lg">구매하기</button>
	                                    </div>
	                                    <div class="col d-grid">
	                                        <button type="submit" class="btn btn-success btn-lg">장바구니</button>
	                                    </div>
									</c:if> 
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Close Content -->


    <!-- Start Footer -->
	<%@ include file = "footer.jsp" %>
	<!-- End Footer -->

</body>
    <!-- Start Slider Script -->
    <script src="assets/js/slick.min.js"></script>
    <script>
        $('#carousel-related-product').slick({
            infinite: true,
            arrows: false,
            slidesToShow: 4,
            slidesToScroll: 3,
            dots: true,
            responsive: [{
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 3
                    }
                }
            ]
        });
    </script>
    <!-- End Slider Script -->
</html>