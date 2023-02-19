<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	
	#joinForm > form > p > input:not([type="submit"]) {
		width: 300px;
		font-size: 30px;
		box-sizing: border-box;
	}
	
	#joinForm > form > p {
		width: 800px;
		margin: 40px auto;
	}

</style>

	
	<div id="joinForm" > <!-- class="hidden"  -->
		<form method="POST" action="${cpath }/user/join">
			<p><input type="text" name="user_id" placeholder="유저 아이디" required autocomplete="off"><span><button type="button" class="dupbtn">중복 검사</button></span><span class="duptext1"></span></p>
			<p><input type="password" name="user_pw" placeholder="유저 비밀번호" required autocomplete="off"><span class="pwMessage1"></span></p>
			<p><input type="password" name="user_pw_check" placeholder="유저 비밀번호" required autocomplete="off"><span class="pwMessage2"></span></p>
			<p><input type="text" name="user_name" placeholder="유저 이름" required autocomplete="off"></p>
			<p><input type="date" name="user_birth">생일 입력</p>
			<p>
				<input type="radio" name="user_gender" value="남">남성
				<input type="radio" name="user_gender" value="여">여성
			</p>
			<p><input type="text" name="user_address" placeholder="주소 입력" required autocomplete="off"></p>
			<p><input type="text" name="user_phone" placeholder="전화번호 입력" required autocomplete="off"></p>
			<p><input type="email" placeholder="이메일 주소 입력" name="user_email" required autocomplete="off"></p>
			<p><input type="text" placeholder="직업" name="user_job" required autocomplete="off"></p>
			<p>
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
			</p>
			<p><input type="hidden" name="user_type" value="Admin"></p> <!-- 얘는 임시 -->
			<p><input type="submit" value="입력"></p>
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
			if(addPwValue.length > 16) {
				pwMessage1.innerText = '비밀번호는 최대 16자리까지만 가능합니다'	
				pwMessage1.style.color = 'red'
			}
			else {
				pwMessage1.innerText = '사용가능한 비밀번호 입니다'
				pwMessage1.style.color = 'blue'
			}
		}
		
		modifyPw.onkeyup = pwHandler1
		
		
		function pwHandler2(event2) {
			const btn = document.querySelector('.btn')
			const checkPwValue = event2.target.value
			console.log('위' + modifyPw.value)
			console.log('아래' + checkPwValue)
			if(checkPwValue == modifyPw.value ) {
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
		
		checkPw.onkeyup = pwHandler2		
		
		
		
		
</script>
	

</body>
</html>