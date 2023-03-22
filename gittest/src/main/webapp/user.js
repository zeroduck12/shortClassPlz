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
	 
	 
	 let frm = document.joinForm;
	 let userid = frm.userid;
	 let userpw = frm.userpw;
	 let userpw_re = frm.userpw_re;
	 let username = frm.username;
	 let userphone = frm.userphone;
	 
	 if(userid.value ==''){
		 alert("아이디를 입력해 주세요");
		 userid.focus();
		 return false;
	 }
	 if(userid.value.length < 5 || userid.value.length > 16){
		 alert("아이디를 5자 이상 16자 미만으로 입력해주세요");
		 userid.focus();
		 return false;
	 }
	 if(userpw.value == ""){
		 alert("비밀번호를 입력해주세요");
		 userpw.focus();
		 return false;
	 }
	 if(userpw.value.length < 8){
		 alert("비밀번호를 8자 이상 입력해주세요");
		 userpw.focus();
		 return false;
	 }
	 if(userpw.value != userpw_re.value){
		 alert("비밀번호가 일치하지 않습니다.");
		 userpw.focus();
		 return false;
	 }
 	 if(username.value == ""){
		 alert("이름을 입력해주세요");
		 username.focus();
		 return false;
	 }
 	 if(userphone.value == ""){
		 alert("전화번호를 입력해주세요");
		 userphone.focus();
		 return false;
	 }
	frm.submit();
 }