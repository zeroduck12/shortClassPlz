/**
 *  회원가입 폼 validation check
 * 	개발자 : jyd
 *  개발일 : 2023-03-22
 * -------------------------------
 *  개발 로그
 *  2023-04-22 : 회원가입 요구사항 변경으로 인한 추가
 */

 function sendit(){
	 //아이디 	: 빈값체크 "", 5자리 이상, 16자 미만
	 //비밀 번호 	: 빈값체크 "", 8자리 이상, 비밀번호 = 비밀번호 확인이 같은지 확인
	 //이름 		: 빈값체크 ""
	 //휴대폰 번호	: 빈값체크 ""
	 
	 
	 //아이디 체크
	 if($("#userid").val()==""){
		 alert("아이디 입력하라니깐?");
		$("#userid").focus();
		 return false;
	 }
	 
	 //아이디 5자리 이상
 	 if($("#userid").val().length<5){
		alert("아이디 짧어~5글자 이상입력해");
	 	$("#userid").focus();
	 	return false;
	 }
	 	//아이디 16자리 미만
 	 if($("#userid").val().length>16){
		alert("아이디 길어~16글자 미만입력해");
	 	$("#userid").focus();
	 	return false;
	 }
	 
	 
	 //비밀 번호 	: 빈값체크 "", 8자리 이상, 비밀번호 = 비밀번호 확인이 같은지 확인
	 if($("#userpw").val()==""){
		 alert("비번 입력하라니깐?");
		 $("#userpw").focus();			
		 return false;
	 }
	 
	  if($("#userpw").val().length<8){
		alert("비번 짧어~ 8자리 이상입력해");
	 	$("#userpw").focus();			
	 	return false;
	 }

	if($("#userpw").val() != $("#userpw_re").val()){
		alert("비번2개가 서로 다르자나");
	 	$("#userpw").focus();
	 	return false;
	 }
	 //이름 확인
 	 if($("#username").val()==""){
		 alert("이름 입력하라니깐?");
		 $("#username").focus();		
		 return false;
	 }
	 //휴대폰 번호
 	 if($("#userphone").val()==""){
		 alert("휴대폰 번호 입력하라니깐?");
		 $("#userphone").focus();
		 return false;
	 }
	 
	 $("#joinForm").submit();
 }