<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<link href="https://webfontworld.github.io/yangheeryu/Dongle.css" rel="stylesheet">
<meta charset="UTF-8">
<title>로그인 페이지</title>
<style type="text/css">

	html {
		font-family: 'Dongle';
	}

	#loginLogo > img {
		width: inherit;
	}
	
	#loginLogo {
		width: 400px;
		margin: 0 auto;
		margin-top: 50px;
	}
	
	#accountInput {
		box-sizing: border-box;
		width: 500px;
		margin: 0 auto;
		margin-top: 50px;
		border: 3px solid darkgrey;
		border-radius: 25px;
	}
	
	.idForm {
		margin: 50px auto;
	}
	

	.id , .password {
		width: 300px;
		display: flex;
		justify-content: center;
		align-items: center;
		z-index: 1;
  		opacity: 1;	
		border: 1px solid #ccc;
		box-sizing: border-box;
		margin: 0 auto;
		cursor: text;
	}
	
	.idText , .pwText {
		width: 200px;
	}
	
	.idForm > div > input {
		font-size: 25px;
		padding: 10px 20px;
		border:0 solid black;
		font-family: 'Dongle';
	}
	
	
	.loginBtn > input {
		display: flex;
		justify-content: center;
		width: 300px;
		margin: 0 auto;
		margin-top: 30px;
		box-sizing: border-box;
		cursor: pointer;
		background-color: #008037;
		font-size: 30px;
	}
	
	.idForm > div > input:focus {
		outline-style: none;
	}
	
	.focusColor {
		border: 1px solid #008037;
	}
	
	#menuBar {
		width: 600px;
		margin: 50px auto;
		text-align: center;
	}
	
	#menuBar > span {
		margin: 0 10px;
	}
	
	a {
		text-decoration: none;
		color:black;
	}
	
</style>
</head>
<body>
	<div id="loginLogo"><img src="${cpath}/resources/img/로고.png "></div>
	
	<form method="POST" action="${cpath }/user/login">
		<div id="accountInput">
			<div class="idForm">
				<div class="id">
					<img src="${cpath }/resources/loginImg/login.png">
					<input class="idText" type="text" name="user_id" placeholder="아이디" autocomplete="off" required>
				</div>
				<div class="password">
					<img src="${cpath }/resources/loginImg/password.png">
					<input class="pwText" type="password" name="user_pw" placeholder="비밀번호" autocomplete="off" required>
				</div>
				<div class="loginBtn">
					<input type="submit" value="로그인">
				</div>
			</div>		
		</div>
	</form>
	
	
	<div id="menuBar">
		<span><a href="#">비밀번호 찾기</a></span>
		<span>|</span>
		<span><a href="${cpath }/user/findLoginId">아이디 찾기</a></span>
		<span>|</span>
		<span><a href="${cpath }/user/join">회원 가입</a></span>
	</div>

	<script>
		// 전역 변수)) input onfocus시 색상 변경 적용 시킬  div
		const idsolid = document.querySelector('.id')
		const pwsolid = document.querySelector('.password')
		
		// 전역 변수)) onfocus 시킬 input
		const inputId = document.querySelector('.idText')
		const inputPw = document.querySelector('.pwText')

		
		
		// 로그인 폼 포커스 on
		function outlineSet(event) {
			if(event.target.name == 'user_id') idsolid.classList.add('focusColor')
			else pwsolid.classList.add('focusColor')		
		}
		inputId.onfocus = outlineSet
		inputPw.onfocus = outlineSet
	
		
			
		// 로그인 폼 포커스 해제		
		function focusOff(event) {
			if(event.target.name == 'user_id') idsolid.classList.remove('focusColor')
			else pwsolid.classList.remove('focusColor')		 
		}	
		inputId.onblur = focusOff
		inputPw.onblur = focusOff
		
		
	</script>
	
	
</body>
</html>