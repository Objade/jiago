<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<div class="root">
	<section id="section1">
	       <div class="banner">
	            <img src="${cpath }/resources/img/banner.png">
	       </div>
	</section>
	<section id="section2">
	       <div class="banner2">
	            <img src="${cpath }/resources/img/howTo.png">
	       </div>
	</section>
</div>

<section id="section3">
    <div class="s3_top">진행 중인 조사</div>
    <div class="s3_mid">
        <div class="customer">
        	<c:forEach var="list" items="${list }">
        		<div class="surveys">
		            <div class="write_top">${list.survey_title }</div>
		            <div class="write_mid">조사기간</div>
		            <div class="write_bottom">${list.survey_date }</div>
		            <div class="write_mid">응답시간</div>
		            <div class="write_bottom">${list.survey_time }</div>
		            <div class="write_mid">포인트</div>
		            <div class="write_bottom">${list.survey_point }</div>
	            </div>
        	</c:forEach>
        </div>
    </div>

    <div class="minipont"><a href="${cpath }/survey/list">더보기</a></div>
</section>

<section id="section4">
    <div class="s4_top">우리가 심은 나무들</div>
    <div class="s4_mid">패널 여러분들의 소중한 마음들은, 한 그루의 나무가 되었고, 어느새 숲을 이루었습니다.</div>
    
    <div class="banner3">
        <div class="banner3_img"><img src="${cpath }/resources/img/총 기부 그림.jpg" width="1000px"></div>
            <div class="banner3_text">
                <div>총기부</div>
                <div>총인원</div>
            </div>
    </div>
    <div class="s4_bottom">더 알아보기</div>
</section>

<%@ include file="footer.jsp" %>

</body>


