<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>SOGONDAK MARKET</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/shop/assets/웹사이트 img/나봉이1.jpg">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">

    <!-- Slick -->
    <link rel="stylesheet" type="text/css" href="assets/css/slick.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">

</head>

<body>
    <!-- Start TopNav 와 header -->
	<%@ include file = "TopNav_Header.jsp" %>
	<!-- Close TopNav 와 header -->
	
	
	<!-- Modal -->
    <%@ include file = "modal.jsp" %>
	<!-- Close Modal -->



    <!-- Open Content and Form -->

    <section class="bg-light">
        <div class="container pb-5">
            <div class="row">
                <div class="col-lg-5 mt-5">
                    <div class="card mb-3">
                        <img class="card-img img-fluid" src="assets/웹사이트 img/3월신상 올인원팩.jpg" alt="Card image cap" id="product-detail">
                    </div>
                    
                </div>
                <!-- col end -->
                

                <div class="col-lg-7 mt-5">
                    <div class="card">
                        <div class="card-body">
                        
                        	<!--Start 상품등록  -->
                        	<form action="/ItemJoin.it" method="get">
                            <h1 class="h2">
                            	<input type="text" placeholder="상품명 : itemname" name="itemname">
                            </h1>
                            <p class="h3 py-2">
                        		<input type="text" placeholder="가격 : price" name="price">
                            </p>

                            <p>
                        		<input type="text" placeholder="설명 : explain" name="explain">
                           		<br>
                            </p>
                           

                            <h6>규격</h6>
                            <ul class="list-unstyled pb-3">
                                <li>
									<input type="text" placeholder="스펙 : spec" name="spec"><br>
									<input type="text" placeholder="사이즈1 : size1" name="size1"><br>
									<input type="text" placeholder="사이즈2 : spec2" name="size2"><br>
									<input type="text" placeholder="사이즈3 : spec3" name="size3"><br>
                                </li>
                            </ul>

							<input type="submit" value="상품 등록">
							
							
							<!--End 상품등록  -->
							</form>
							<hr><br><br>
                                <input type="hidden" name="product-title" value="Activewear">
                                <div class="row">
                                    
                                    <div class="col-auto">
                                        <ul class="list-inline pb-3">
                                            <li class="list-inline-item text-right">
                                                수량
                                                <input type="hidden" name="product-quanity" id="product-quanity" value="1">
                                            </li>
                                            <li class="list-inline-item"><span class="btn btn-success" id="btn-minus">-</span></li>
                                            <li class="list-inline-item"><span class="badge bg-secondary" id="var-value">1</span></li>
                                            <li class="list-inline-item"><span class="btn btn-success" id="btn-plus">+</span></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row pb-3">
                                    <div class="col d-grid">
                                        <button type="submit" class="btn btn-success btn-lg" name="submit" value="buy">구매하기</button>
                                    </div>
                                    <div class="col d-grid">
                                        <button type="submit" class="btn btn-success btn-lg" name="submit" value="addtocard">장바구니</button>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Close Content and Form -->


   <!-- Start Footer -->
	<footer class="bg-dark" id="tempaltemo_footer">
        <jsp:include page="footer.jsp" />   
	</footer>
	<!-- End Footer -->

</body>
</html>