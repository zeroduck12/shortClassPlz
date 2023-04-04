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
		alert("아이디를 입력하세요");
		$("#userid").focus();
		 return false;
	 }
	 
	 //아이디 5자리 이상
 	 if($("#userid").val().length<5){
		alert("아이디가 짧습니다. 5글자 이상 입력해주세요");
	 	$("#userid").focus();
	 	return false;
	 }
	 	//아이디 16자리 미만
 	 if($("#userid").val().length>16){
		alert("아이디가 깁니다. 16글자 미만 입력해주세요");
	 	$("#userid").focus();
	 	return false;
	 }
	 
	 
	 //비밀 번호 	: 빈값체크 "", 8자리 이상, 비밀번호 = 비밀번호 확인이 같은지 확인
	 if($("#userpw").val()==""){
		 alert("비밀번호를 입력해주세요");
		 $("#userpw").focus();			
		 return false;
	 }
	 
	  if($("#userpw").val().length<8){
		alert("비밀번호가 짧습니다. 8자리 이상 입력해주세요");
	 	$("#userpw").focus();			
	 	return false;
	 }

	if($("#userpw").val() != $("#userpw_re").val()){
		alert("비밀번호가 서로 일치하지 않습니다.");
	 	$("#userpw").focus();
	 	return false;
	 }
	 //이름 확인
 	 if($("#username").val()==""){
		 alert("이름을 입력해 주세요");
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
 
 
 function checkId(userid){
	 
	if( userid ==""){
		alert("아이디를 입력해주세요");
		return false;
	}	else{
		//ajax통신
		let xhr = new XMLHttpRequest();
		xhr.open("GET", "idcheck.jsp?userid=" + userid, true);
		xhr.send();
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4 ){
//				alert(xhr.responseText.trim());
				if( xhr.responseText.trim() == "ok"){
					$("#idCheckText").html("사용할 수 있는 아이디 입니다.");
				} else {
					$("#idCheckText").html("중복된 아이디 입니다.");
				}
			}
		}
		
	}

 }
 
 function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
 
 
 
 