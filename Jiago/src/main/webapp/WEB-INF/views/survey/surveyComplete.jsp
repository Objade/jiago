<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<div class="main">
	<h3>설문 완료페이지</h3>
	<img src="${cpath }/resources/img/surveyComplete.png" width="250px">

	<h3>${userName }님이 보유하신 포인트는 ${userPoint } 입니다</h3>

	<div class="userPoint"></div>

	<form method="POST" action="${cpath }/survey/surveyComplete">
		<input type="hidden" name="survey_idx" value="${survey_idx }">
		<input type="hidden" name="user_idx" value="${login.user_idx }">
		<input type="number" id="point" name="total_donate" placeholder="기부할 금액 입력하세요" max="${userPoint }" min="0" step="100">
		<input type="submit" value="기부하기">
	</form>

	<a href="${cpath }">나중에 기부하기</a>
</div>

<script>
    const form = document.querySelector('form')

    function formHandler() {
        const point = document.getElementById("point").value;
        alert(point +'포인트 기부 감사합니다')
    }

    form.onsubmit = formHandler

</script>


</body>
</html>