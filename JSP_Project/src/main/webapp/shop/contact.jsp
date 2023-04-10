<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SOGONDAK MARKET</title>
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
      color:#000000;
      text-decoration:none;
   }
   a:hover{
      color:#000000;
      text-decoration:none;
      font-weight:bold;
   }
   a:link {
      color:#000000;
      text-decoration:none;
   }
   table{
      margin: 0 auto;
   }
</style>
<style>
   a:visited{
      color:#000000;
      text-decoration:none;
   }
   a:link {
      color:#000000;
      text-decoration:none;
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
            <h1 class="h1">게시판</h1>
            <p>
                항상 저희 소곤닥을 찾아주셔서 감사합니다.<br>
                문의글을 남겨 주시면 성심성의껏 답변드리겠습니다.
            </p>
        </div>
    </div>
    <!-- End Content Page -->
	
    <!-- Start board -->
    <c:set var="boardList" value="${requestScope.boardList }"/>
	<c:set var="totalCnt" value="${requestScope.totalCnt }"/>

	<c:set var="totalPage" value="${requestScope.totalPage }"/>
	<c:set var="nowPage" value="${requestScope.nowPage }"/>
	<c:set var="startPage" value="${requestScope.startPage }"/>
	<c:set var="endPage" value="${requestScope.endPage }"/>
	<div>
      <table style="width:900px;border:0px;">
         <tr align="right" valign="middle">
				<td>총 글 개수 ${totalCnt } 개</td>
         </tr>
      </table>
      <table border="1" style="border-collapse:collapse; border-spacing:0; width:900px;">
         <tr align="center" valign="middle">
            <th width="8%">번호</th>
            <th width="50%">제목</th>
            <th width="15%">작성자</th>
            <th width="17%">날짜</th>
            <th width="10%">조회수</th>
         </tr>
         <c:choose>
         	<c:when test="${boardList != null and fn:length(boardList)>0}">

			     	<c:forEach var="board" items="${boardList }" >
				     	<tr align="center" valign="middle"
				        onmouseover="this.style.background='#bbdefb'" onmouseout="this.style.background=''">
		
			               <td height="23px">${board.boardnum }
			               </td>
			               <td height="23px"><a href="${pageContext.request.contextPath}/BoardView.bo?boardnum=${board.boardnum }">${board.boardtitle }</a>
			               </td>
			               <td height="23px">${board.username }
			               </td>
			               <td height="23px">${board.boarddate }
			               </td>
			               <td height="23px">${board.boardreadcount}
			               </td>
			        </tr>
		        </c:forEach>
		         
	        </c:when>
	        	<c:otherwise>
		            <%-- 게시글이 없는 경우 --%>
		            <tr style="height:50px;">
		               <td colspan="5" style="text-align:center;">등록된 게시물이 없습니다.</td>
		            </tr>
           		</c:otherwise>
           </c:choose>
      </table><br>
<!--       페이징처리하기 -->
      <table style="border:0px;width:900px">
         <tr align="center" valign="middle">
            <td>
         		<c:if test="${nowPage > 1 }"><a href="${pageContext.request.contextPath}/BoardList.bo?page=${nowPage-1}">[&lt;]</a></c:if>
					<c:forEach var="i" begin="${startPage }" end="${ endPage}">
						<c:choose>
								<c:when test="${i==nowPage }">
									[${i }]
								</c:when>
								<c:otherwise>
									<a href="${pageContext.request.contextPath}/BoardList.bo?page=${i}">[${i }]</a>
								</c:otherwise>
						</c:choose>
					</c:forEach>
				 <c:if test="${nowPage < totalPage}"><a href="${pageContext.request.contextPath}/BoardList.bo?page=${nowPage+1}">[&gt;]</a></c:if>
            </td>
         </tr>
      </table> 
      
      <table style="border:0px;width:900px">
         <tr align="center" valign="middle">
            <td>
               <a href="${pageContext.request.contextPath}/BoardWrite.bo">[글쓰기]</a>
            </td>
         </tr>
      </table> 
   </div>
    <!-- End board -->

	
	<!-- Footer -->
	<%@ include file = "footer.jsp" %>
	<!-- End Footer -->
</body>
</html>