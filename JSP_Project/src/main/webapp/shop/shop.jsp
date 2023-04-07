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

<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/shop/assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/shop/assets/img/favicon.ico">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/shop/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/shop/assets/css/templatemo.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/shop/assets/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/shop/assets/css/fontawesome.min.css">
</head>
<body>
	<!-- TopNav 와 header -->
	<%@ include file="TopNav_Header.jsp"%>
	<!-- Close TopNav 와 header -->

	<!-- Modal -->
	<%@ include file="modal.jsp"%>
	<!-- Close Modal -->


	<!-- Start Content -->
	<div class="container py-5">
		<div class="row">

			<div class="col-lg-3">
				<h1 class="h2 pb-4">카테고리</h1>
				<ul class="list-unstyled templatemo-accordion">
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#"> 이벤트 상품 </a></li>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#"> 스티커 </a></li>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#"> 메모지 </a></li>
					<hr>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="${pageContext.request.contextPath}/shop/itemjoin.jsp">
							관리자를 위한 상품 추가 </a></li>
				</ul>
			</div>

			<!-- 아이템 가져오기 -->
			<c:set var="itemList" value="${requestScope.itemList }" />
			<c:set var="totalCnt" value="${requestScope.totalCnt }" />

			<c:set var="totalPage" value="${requestScope.totalPage }" />
			<c:set var="nowPage" value="${requestScope.nowPage }" />
			<c:set var="startPage" value="${requestScope.startPage }" />
			<c:set var="endPage" value="${requestScope.endPage }" />


			<div class="col-lg-9">
				<div class="row">
					<p><h2>상품 리스트</h2></p>
					<p align="right">상품 총 개수 ${totalCnt } 개</p>

					<c:choose>
						<c:when test="${itemList != null and fn:length(itemList)>0}">

							<!-- Start 개별 상품한 개당 -->
							<c:forEach var="item" items="${itemList}">


								<div class="col-md-4">
									<div class="card mb-4 product-wap rounded-0">
										<div class="card rounded-0">
											<!-- 여기 아래에 이미지 넣을 것인데 아이템 이미지 번호에맞춰서 가져오자. -->
											<img class="card-img rounded-0 img-fluid"
												src="${pageContext.request.contextPath}/shop/assets/웹사이트 img/${item.itemname}.jpg">
											<div
												class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
												<ul class="list-unstyled">
<!-- 													<li><a class="btn btn-success text-white" href="/ItemView.it"><i class="far fa-heart"></i></a></li> -->
													<li><a class="btn btn-success text-white mt-2" href="/ItemView.it?itemname=${item.itemname}"><i class="far fa-eye"></i></a></li>
													
														<c:if test="${empty userIsLogin}">
															<li><a class="btn btn-success text-white mt-2" href="javascript:loginPlz()"><i class="fas fa-cart-plus"></i></a></li>
														</c:if>
														<c:if test="${not empty userIsLogin}">
															<li><a class="btn btn-success text-white mt-2" href="/BasketAdd.bs?itemname=${item.itemname}&userIDNumber=${userIsLogin.userIDNumber}&price=${item.price}"><i class="fas fa-cart-plus"></i></a></li>
														</c:if> 
													
												</ul>
											</div>
										</div>
										<div class="card-body">
										
<!-- 	로그인상태 테스트 -->
<!-- 		<div> -->
<%-- 		<c:if test="${empty userIsLogin}"> --%>
<!-- 		<p>로그인 하지 않은 상태</p> -->
<!-- 		<a href="login">로그인 하러 가기</a> -->
<%-- 		</c:if> --%>
<%-- 		<c:if test="${not empty userIsLogin}"> --%>
<!-- 		<p>로그인 한 상태</p> -->
<%-- 		<p>${userIsLogin.username}님 환영합니다</p> --%>
<!-- 		<a href="logout">로그아웃</a> -->
<%-- 		</c:if> --%>
<!-- 		</div> -->
<!-- 	로그인상태 테스트 -->
<!-- 											<ul -->
<!-- 												class="w-100 list-unstyled d-flex justify-content-between mb-0"> -->
<!-- 												<li> -->
<!-- 												shop페이지에서 여기에 상품 설명 추가가능 -->
<!-- 												</li> -->
<!-- 											</ul> -->
<!-- 											<ul class="list-unstyled d-flex justify-content-center mb-1"> -->
<!-- 												<li><i class="text-warning fa fa-star"></i> <i -->
<!-- 													class="text-warning fa fa-star"></i> <i -->
<!-- 													class="text-warning fa fa-star"></i> <i -->
<!-- 													class="text-warning fa fa-star"></i> <i -->
<!-- 													class="text-warning fa fa-star"></i></li> -->
<!-- 											</ul> -->
											<p class="text-center mb-0">
												<a href="/ItemView.it?itemname=${item.itemname}" class="text-decoration-none text-center mb-0">
													${item.itemname}
												</a><br>
													${item.price} 원
											</p>
										</div>
									</div>
								</div>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<%-- 상품이 없는 경우 --%>
							<tr style="height: 50px;">
								<td colspan="5" style="text-align: center;">등록된 상품이 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
					<!-- End 개별 상품1 -->
			</div>

					<!--   Start    페이징처리하기 -->
					<table style="border: 0px; width: 900px">
						<tr align="center" valign="middle">
							<td><c:if test="${nowPage > 1 }">
									<a href="${pageContext.request.contextPath}/ItemList.it?page=${nowPage-1}">[&lt;]</a>
								</c:if> <c:forEach var="i" begin="${startPage }" end="${ endPage}">
									<c:choose>
										<c:when test="${i==nowPage }">
									[${i }]
								</c:when>
										<c:otherwise>
											<a href="${pageContext.request.contextPath}/ItemList.it?page=${i}">[${i }]</a>
										</c:otherwise>
									</c:choose>
								</c:forEach> <c:if test="${nowPage < totalPage}">
									<a href="${pageContext.request.contextPath}/ItemList.it?page=${nowPage+1}">[&gt;]</a>
								</c:if></td>
						</tr>
					</table>
					<!--  End     페이징처리하기 -->
					

<!-- 				<div div="row"> -->
<!-- 					<ul class="pagination pagination-lg justify-content-end"> -->
<!-- 						<li class="page-item disabled"> -->
<!-- 							<a class="page-link active rounded-0 mr-3 shadow-sm border-top-0 border-left-0" -->
<!-- 								href="#" tabindex="-1">1</a></li> -->
<!-- 						<li class="page-item"> -->
<!-- 							<a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" -->
<!-- 								href="#">2</a></li> -->
<!-- 						<li class="page-item"> -->
<!-- 							<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" -->
<!-- 								href="#">3</a></li> -->
<!-- 					</ul> -->
<!-- 				</div> -->
			</div>
		</div>
	</div>
	<!-- End Content -->

	<!-- Footer -->
	<%@ include file="footer.jsp"%>
	<!-- End Footer -->

</body>
</html>