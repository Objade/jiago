<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>회원가입 페이지</title>
<style>
	
	.hidden { display: none}

	/* 약간 동의 */
	.contract {
	    width: 700px; margin: 50px auto 80px; padding: 30px 40px 50px;
	    border-radius: 30px; background-color: #ccc; 
	}
	.contract h1 {text-align: center;}
	.contract .text {
	    height: 230px; border: 1px solid black; background-color: white;
	    white-space: pre-line; overflow-y: scroll; margin: 0 auto 20px;
	}	
	.contract p {text-align: right;}
	.contract .box {width: 100px; height: 40px;  padding: 8px; margin: 0 3px;}
		
	
	
	
	
	/* 회원가입 css */
	
	

</style>


</head>



<body>
	
<div>
    <form class="contract" action="signup.html">
        <h1>계정 정보 동의 약관</h1>
	        <div class="text">가. 개인정보의 수집 및 이용 목적
	
			            본 사이트 JIAGO는 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며, 이용 목적이 변경되는 경우에는 개인정보 보호법 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.
			    
			            나. 정보주체와 법정대리인의 권리ㆍ의무 및 행사방법
			            ① 정보주체(만 14세 미만인 경우에는 법정대리인을 말함)는 언제든지 개인정보 열람·정정·삭제·처리정지 요구 등의 권리를 행사할 수 있습니다.
			            ② 제1항에 따른 권리 행사는 개인정보보호법 시행규칙 별지 제8호 서식에 따라 작성 후 서면, 전자우편 등을 통하여 하실 수 있으며, 기관은 이에 대해 지체 없이 조치하겠습니다.
			            ③ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.
			            ④ 개인정보 열람 및 처리정지 요구는 개인정보 보호법 제35조 제5항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.
			            ⑤ 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.
			            ⑥ 정보주체 권리에 따른 열람의 요구, 정정ㆍ삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.
			            
			            다. 수집하는 개인정보의 항목
			      JIAGO 회원정보(필수): 이름, 이메일(아이디), 비밀번호
			            
			            라. 개인정보의 보유 및 이용기간
			      JIAGO는 법령에 따른 개인정보 보유ㆍ이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의 받은 개인정보 보유ㆍ이용기간 내에서 개인정보를 처리ㆍ보유합니다.
			            
			            - 수집근거: 정보주체의 동의
			            - 보존기간: 회원 탈퇴 요청 전까지(1년 경과 시 재동의)
			            - 보존근거: 정보주체의 동의
			            
			            마. 동의 거부 권리 및 동의 거부에 따른 불이익
			            위 개인정보의 수집 및 이용에 대한 동의를 거부할 수 있으나, 동의를 거부할 경우 회원 가입이 제한됩니다.
	        </div>
        <div>
            <p><input type="checkbox" required class="agbtn"> 약관에 동의하면 체크</p>
        </div>
    </form>
</div>


<style>

	#joinForm {
		width: 1200px;
		margin: 0 auto;
	}
	
	#joinForm > form > div > input:not([type="submit"]) {
		width: 300px;
		font-size: 30px;
		box-sizing: border-box;
		padding: 5px 10px;
		font-size: 25px;
	}
	
	#joinForm > form > div {
		width: 800px;
		margin: 40px auto;
	}
	
	.phone > input {
		width: 90px !important;
		
	}

</style>

	
	<div id="joinForm" > <!-- class="hidden"  -->
		<form method="POST" action="${cpath }/user/join">
			<div>
				<input type="text" name="user_id" placeholder="신규 아이디 입력" required autocomplete="off"><span><button type="button" class="dupbtn">중복 검사</button></span><span class="duptext1"></span>
				<div>8자리 이상의 문자 + 숫자</div>
			</div>
			
			<div>
				<input type="password" name="user_pw" placeholder="신규 비밀번호 입력" required autocomplete="off"><span class="pwMessage1"></span>
				<div>8 ~ 16자리 문자 + 숫자 + 특수기호</div>
			</div>
			<div><input type="password" name="user_pw_check" placeholder="신규 비밀번호 확인" required autocomplete="off"><span class="pwMessage2"></span></div>

			<div><input type="text" name="user_name" placeholder="유저 이름" required autocomplete="off"><span class="nameMessage"></span></div>
			<div><input type="date" name="user_birth" required>생일 입력</div>
			<div>
				<input type="radio" name="user_gender" value="남" required>남성
				<input type="radio" name="user_gender" value="여" required>여성
			</div>
			<div>
				<input type="text" id="postcode" placeholder="우편번호" required>
				<input type="button" onclick="findUserAddress()" value="우편번호 찾기" required><br>
				<input type="text" id="address" placeholder="주소" required><br>
				<input type="text" id="detailAddress" placeholder="상세주소" required>
				<input type="text" id="extraAddress" placeholder="참고항목" required>
				<input type="hidden" name="user_address">
			</div>
			<div class="phone">
            	<input id="phone1" type="text" size="1" maxlength="3" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1'); changePhone1()" required> -
            	<input id="phone2" type="text" size="3" maxlength="4" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1'); changePhone2()" required> -
            	<input id="phone3" type="text" size="3" maxlength="4" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1'); changePhone3()" required>
            	<input type="hidden" name="user_phone">
      		</div>
      		<div>
      			<input id="email1" type="text" onchange="frontEmailId()" > @ 
      			<select id="email2" required>
      				<option value="">--직업을 선택하세요--</option>
      				<option value="naver.com">naver.com</option>
      				<option value="gmail.com">gmail.com</option>
      				<option value="직접 입력">직접 입력하세요</option>
      			</select>
      			<span class="directly hidden"><input type="text" id="directEmail" placeholder="직접 입력" onchange="sendHiddenEmail()" ></span>
      			<input type="hidden" name="user_email"><button type="button">인증</button>
      		</div>
      		
			<div>
				<select name="user_job" id="job-select" required>
				    <option value="">--직업을 선택하세요--</option>
				    <option value="전업주부">전업주부</option>
				    <option value="학생">학생</option>
				    <option value="무직">무직</option>
				    <option value="생산/ 기술직/ 노무직">생산/ 기술직/ 노무직</option>
				    <option value="사무직">사무직</option>
				    <option value="교사 / 학원강사">교사 / 학원강사</option>
				    <option value="공무원 (공기업포함)">공무원 (공기업포함)</option>
				    <option value="경영직">경영직</option>
				    <option value="전문직">전문직</option>
				    <option value="서비스 / 영업 / 판매직">서비스 / 영업 / 판매직</option>
				    <option value="농 / 임 / 어업">농 / 임 / 어업</option>
				    <option value="자영업">자영업</option>
				    <option value="기타">기타</option>
				</select>
			</div>
			<div><input type="hidden" name="user_type" value="Admin"></div> <!-- 얘는 임시 -->
			<div><input type="submit" value="입력"></div>
		</form>
	</div>
	
	
<script>
	const contract = document.forms[0]
	console.log(contract.parentNode)
	const joinForm = document.getElementById('joinForm')
	console.log(joinForm)
	
	const agbtn = document.querySelector('.agbtn')
	console.log(agbtn)

	function btnHandler() {
		contract.parentNode.classList.add('hidden')
		joinForm.classList.remove('hidden')
	}
	
	agbtn.onclick = btnHandler
	

	const dupbtn = document.querySelector('.dupbtn')
	console.log(dupbtn)
	
	// 아이디 중복 검사
	function idHandler(event) {
		const idValue = document.querySelector('input[name="user_id"]')
		const duptext1 = document.querySelector('.duptext1')
		console.log(duptext1)
		const url = '${cpath}/user/idDup'
		const rsp = {
				method: 'POST',
				body: idValue.value,
				headers: {
					'Content-Type': 'plain/text; charset=utf-8'
				}
		}
		
		fetch(url , rsp)
		.then(response => response.text())
		.then(text => {
			console.log(text)
			if(text == 1 || (idValue.value).length < 8) {
				duptext1.innerText = ''
				duptext1.innerText = '중복된 아이디가 존재하거나 길이가 너무 짧습니다.'
				duptext1.style.color = 'red'
				idValue.value = ''
				console.log(idValue)
			}
			else {
				duptext1.innerText = ''
				duptext1.innerText = '사용가능한 아이디입니다.'
				duptext1.style.color = 'blue';
				idValue.disabled = true;
			}
		})
		
		
	}
	
	
	dupbtn.onclick = idHandler

</script>

<script>

	// 비밀번호 확인
		const modifyPw = document.querySelector('input[name="user_pw"]') // 새로운 비밀번호 입력
		const checkPw = document.querySelector('input[name="user_pw_check"]') // 비밀번호 확인
		const pwMessage1 = document.querySelector('.pwMessage1')	// 비밀번호 조건 메세지
		const pwMessage2 = document.querySelector('.pwMessage2')	// 비밀번호 확인 메세지


		function pwHandler1(event) {
			const addPwValue = event.target.value
			pwMessage2.innerText = '비밀번호가 서로 일치하지 않습니다'
			pwMessage2.style.color = 'red'
			if(addPwValue.length < 16 && addPwValue.length > 8) {
				pwMessage1.innerText = '사용가능한 비밀번호 입니다'
				pwMessage1.style.color = 'blue'
			}
			else {
				pwMessage1.innerText = '해당 조건에 부합하지 않는 비밀번호입니다.'	
				pwMessage1.style.color = 'red'
			}
		}
		
//		modifyPw.onkeyup = pwHandler1
		modifyPw.addEventListener('keyup', pwHandler1)
		
		function pwHandler2(event2) {
			const btn = document.querySelector('.btn')
			const checkPwValue = event2.target.value
			console.log('위' + modifyPw.value)
			console.log('아래' + checkPwValue)
			if(checkPwValue == modifyPw.value && pwMessage1.innerText == '사용가능한 비밀번호 입니다' ) {
				pwMessage2.innerText = '비밀번호가 서로 일치합니다'
				pwMessage2.style.color = 'blue'
				btn.disabled = false
			}
			else {
				pwMessage2.innerText = '비밀번호가 서로 일치하지 않습니다'
				pwMessage2.style.color = 'red'
				btn.disabled = true
			}
		}
		
// 		checkPw.onkeyup = pwHandler2	
		checkPw.addEventListener('keyup', pwHandler2)
		
		
		
		
</script>


<script>
	const checkName = document.querySelector('input[name="user_name"]')
	console.log(checkName)
	
	
	function nameHandler(event) {
		const inputName = event.target.value
		console.log(inputName)
		const nameMessage = document.querySelector('.nameMessage')
		console.log(nameMessage)
		const url = "${cpath}/user/userDup/" + inputName + "/"
		
		
		fetch(url)
		.then(response => response.text())
		.then(text => {
			if(inputName.length == 0) nameMessage.innerText = ''
			else if(text == 1) {
				nameMessage.innerText = '이미 존재하는 이름입니다.'
				nameMessage.style.color = 'red'
			}
			else {
				nameMessage.innerText = '사용 가능한 이름입니다.'
				nameMessage.style.color = 'blue'
			}

		})
		
		
		
	}
	
	
	
	
	checkName.onkeyup = nameHandler


</script>

<script>
	// 주소 입력
	function findUserAddress() {
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
                 document.getElementById("extraAddress").value = extraAddr;
             
             } else {
                 document.getElementById("extraAddress").value = '';
             }

             // 우편번호와 주소 정보를 해당 필드에 넣는다.
             document.getElementById('postcode').value = data.zonecode;
             document.getElementById("address").value = addr;
             // 커서를 상세주소 필드로 이동한다.
             document.getElementById("detailAddress").focus();
	     }
  	  }).open();	
	}
	
	const detailAddress = document.querySelector('input[id="detailAddress"]')
	console.log(detailAddress)
	
	function addressHandler(event) {
		const fullAddress = document.querySelector('input[name="user_address"]')
		console.log(fullAddress)
		fullAddress.value = 
			document.getElementById('postcode').value +
			document.getElementById("address").value + ' ' +
			event.target.value
	}
	
	
	detailAddress.onkeyup = addressHandler

</script>

<script>
	// 전화번호 입력 
	
	const user_phone = document.querySelector('input[name="user_phone"]')
	console.log(user_phone)
		// 휴대폰 번호 입력 부분
	function changePhone1(){
	    const phone1 = document.getElementById("phone1").value // 010
	    if(phone1.length === 3){
	        document.getElementById("phone2").focus();
	    }
	}
	function changePhone2(){
	    const phone2 = document.getElementById("phone2").value // 010
	    if(phone2.length === 4){
	        document.getElementById("phone3").focus();
	    }
	}
	function changePhone3(){
		const phone1 = document.getElementById("phone1").value
		const phone2 = document.getElementById("phone2").value
		const phone3 = document.getElementById("phone3").value // 010
	    if(phone3.length == 4) user_phone.value = phone1 + '-' + phone2 + '-' + phone3
	    console.log()
	}

</script>


<script>
	// 이메일 입력
	
	const user_email = document.querySelector('input[name="user_email"]')
	console.log(user_email)
	const inputEmailId = document.getElementById('email1')
	const selectEmail = document.getElementById('email2')
	console.log(selectEmail)
	const directly = document.querySelector('.directly')
	console.log(directly)
	let secondEmailId = ''
	
	
	function frontEmailId() {
		user_email.value = inputEmailId.value
	}
	
	
	
 
	function emailHandler(event) {
		const value = selectEmail.options[selectEmail.selectedIndex].value
		console.log(value)
		console.log(value == '직접 입력')
 		if(value == '직접 입력') {
			directly.classList.remove('hidden')
		}
 		else {
 			directly.classList.add('hidden')
 			secondEmailId = inputEmailId.value + '@' + value
 			user_email.value = secondEmailId
 			console.log(secondEmailId)
 		}
	
	}
	
	selectEmail.onchange = emailHandler 
	
	function sendHiddenEmail() {
		const directEmail = document.getElementById('directEmail')
		secondEmailId = inputEmailId.value + '@' + directEmail.value
		user_email.value = secondEmailId
		console.log(secondEmailId)
	}

</script>


</body>
</html>