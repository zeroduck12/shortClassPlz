<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소곤닥 - 게시판 글쓰기</title>
<style>
   table{
      margin:0 auto;
      width:900px;
   }
</style>
    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

<!--     Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
<body>
	<!-- Start TopNav 와 header -->
	<%@ include file = "TopNav_Header.jsp" %>
	<!-- End TopNav 와 header -->
	<form method="post" name="boardForm" action="${pageContext.request.contextPath}/BoardWriteOK.bo">
		<table style="width: 900px; border: 0px;">
	            <tr align="center" valign="middle" >
	               <td><h3><br><br><h1>문의 사항</h1><br><br></h3></td>
	            </tr>
	   </table>
        <table border="1" style="border-collapse:collapse;">
           <tr height="30px">
              <th align="center" width="150px">
                 제 목
              </th>
              <td>
                 <input name="boardtitle" size="50" maxlength="100" value="" placeholder="제목을 입력하세요">
              </td>
           </tr>
           <tr height="30px">
              <th align="center" width="150px">
                 글쓴이
              </th>
              <td>
                 <input name="username" size="20" maxlength="20" value="" placeholder="이름을 입력하세요">
              </td>
           </tr>
           <tr height="300px">
              <th align="center" width="150px">
                 내 용
              </th>
              <td>
                 <textarea name="boardcontents" style="width:700px;height:250px;"></textarea>               
              </td>
           </tr>
        </table>
        
        <table style="border:0px;">
        	<tr align="right" valign="middle">
        		<td>
        			<a href="javascript:document.boardForm.submit()">[등록]</a>&nbsp;&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/BoardList.bo">[글목록]</a>
        		</td>
        	</tr>
        </table>
	</form>
	 
	
	<!-- Footer -->
	<%@ include file = "footer.jsp" %>
</body>
</html>