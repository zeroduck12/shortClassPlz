<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소곤닥 - 소통</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/shop/assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/shop/assets/웹사이트 img/나봉이1.jpg">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/shop/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/shop/assets/css/templatemo.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/shop/assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/shop/assets/css/fontawesome.min.css">
<style>
   a:visited{
      color:#ce93d8;
      text-decoration:none;
   }
   a:hover{
      color:#ce93d8;
      text-decoration:none;
      font-weight:bold;
   }
   a:link {
      color:#ce93d8;
      text-decoration:none;
   }
   table{
      margin: 0 auto;
   }
</style>
</head>
<body>
    <!-- TopNav and header -->
	<%@ include file = "TopNav_Header.jsp" %>
	<!-- Close TopNav and header -->
	
	<!-- Modal -->
    <%@ include file = "modal.jsp" %>
	<!-- Close Modal -->

    <!-- Start Content Page -->
    <div class="container-fluid bg-light py-5">
        <div class="col-md-6 m-auto text-center">
            <h1 class="h1">장바구니</h1>
            <p>
                장바구니 입니다
            </p>
        </div>
    </div>
    <!-- End Content Page -->
	
    <!-- Start basket -->
    <c:set var="basketList" value="${requestScope.basketList }"/>
	<c:set var="totalCnt" value="${requestScope.totalCnt }"/>

	<c:set var="totalPage" value="${requestScope.totalPage }"/>
	<c:set var="nowPage" value="${requestScope.nowPage }"/>
	<c:set var="startPage" value="${requestScope.startPage }"/>
	<c:set var="endPage" value="${requestScope.endPage }"/>
	
	<c:set var="totalPaymentAmount" value="${requestScope.totalPaymentAmount }"/>
	
	<div>
      <table style="width:900px;border:0px;">
         <tr align="right" valign="middle">
				<td>총 담은 상품 개수 ${totalCnt } 개</td>
         </tr>
      </table>
      <table border="1" style="border-collapse:collapse; border-spacing:0; width:900px;">
         <tr align="center" valign="middle">
            <th width="8%">userIDNumber</th>
            <th width="50%">상품 이름</th>
            <th width="15%">개별 가격</th>
            <th width="5%"></th>
            <th width="4%">수량</th>
            <th width="5%"></th>
            <th width="13%">소계</th>
         </tr>
         <c:choose>
         	<c:when test="${basketList != null and fn:length(basketList)>0}">
			     	<c:forEach var="basket" items="${basketList }" >
				     	<tr align="center" valign="middle"
				        onmouseover="this.style.background='#bbdefb'" onmouseout="this.style.background=''">
							<td height="23px">${basket.userIDNumber }
							</td>
							<td height="23px"><a href="${pageContext.request.contextPath}/ItemView.it?itemname=${basket.itemname }">${basket.itemname }</a>
							</td>
							<td height="23px">${basket.price } 원
							</td>
							<td height="23px"><a class="btn btn-success list-inline-item" href="${pageContext.request.contextPath}/BasketItemCntMinus.bs?userIDNumber=${userIsLogin.userIDNumber}&itemname=${basket.itemname }">-</a>
							</td>
							<td height="23px">${basket.howmany } 개</td>
							<td height="23px"><a class="btn btn-success list-inline-item" href="${pageContext.request.contextPath}/BasketItemCntPlus.bs?userIDNumber=${userIsLogin.userIDNumber}&itemname=${basket.itemname }">+</a>
							</td>
							<td height="23px">${basket.price  * basket.howmany } 원 
							</td>
				        </tr>
			        </c:forEach>
			        <tr align="center" valign="middle">
		        	<td colspan=6>합계</td>
		        	<td> ${totalPaymentAmount} 원</td>
		        	</tr>
	        </c:when>
	        	<c:otherwise>
		            <%-- 담은 상품이 없는 경우 --%>
		            <tr style="height:50px;">
		               <td colspan="5" style="text-align:center;">담은 상품이 없습니다.</td>
		            </tr>
           		</c:otherwise>
           </c:choose>
      </table><br>
<!--       페이징처리하기 -->
      <table style="border:0px;width:900px">
         <tr align="center" valign="middle">
            <td>
         		<c:if test="${nowPage > 1 }"><a href="${pageContext.request.contextPath}/BasketView.bs?page=${nowPage-1}&userIDNumber=${userIsLogin.userIDNumber}">[&lt;]</a></c:if>
					<c:forEach var="i" begin="${startPage }" end="${ endPage}">
						<c:choose>
								<c:when test="${i==nowPage }">
									[${i }]
								</c:when>
								<c:otherwise>
									<a href="${pageContext.request.contextPath}/BasketView.bs?page=${i}&userIDNumber=${userIsLogin.userIDNumber}">[${i }]</a>
								</c:otherwise>
						</c:choose>
					</c:forEach>
				 <c:if test="${nowPage < totalPage}"><a href="${pageContext.request.contextPath}/BasketView.bs?page=${nowPage+1}&userIDNumber=${userIsLogin.userIDNumber}">[&gt;]</a></c:if>
            </td>
         </tr>
      </table> 
   </div>
    <!-- End basket -->

	
	<!-- Footer -->
	<%@ include file = "footer.jsp" %>
	<!-- End Footer -->
	
</body>
</html>