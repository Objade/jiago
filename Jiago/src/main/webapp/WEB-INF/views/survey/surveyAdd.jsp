<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />


<h3>설문 추가</h3>

<h4>설문 기본 정보 입력</h4>

<form method="POST">
   
   <p>회사 번호 <input type="number" placeholder="회사 번호" name="company_idx" min="0" required></p> 

   <p>설문 제목 <input type="text" placeholder="설문 제목" name="survey_title" required></p> 

   <p>설문 기간 <input type="text" id="survey_date" name="survey_date" required /></p>

   <p>적립금 <input type="number" name="survey_point" placeholder="적립금" min="0" step="100" required/> POINT

   <p>예상 소요 시간 <input type="number" name="survey_time" placeholder="예상 소요 시간" min="1" required/> 분
   

   <p>타겟 연령대 
      <select name="survey_targetAge">
         <option value="">== 타겟 연령대 ==</option>
         <option value="10대 이전">10대 이전</option>
         <option value="10대">10대</option>
         <option value="20대">20대</option>
         <option value="30대">30대</option>
         <option value="40대">40대</option>
         <option value="50대">50대</option>
         <option value="60대">60대</option>
         <option value="70대 이상">70대 이상</option>
      </select></p> 

   <p>타겟 성별
      <select name="survey_targetGender">
         <option value="">== 타겟 성별 ==</option>
         <option value="남성">남성</option>
         <option value="여성">여성</option>
      </select>
   </p> 

   <p>타겟 직업 
      <select name="survey_targetJob">
         <option value="">== 타겟 직업 ==</option>
         <option value="전문직">전문직</option>
         <option value="경영직">경영직</option>
         <option value="사무직">사무직</option>
         <option value="서비스/영업/판매직">서비스/영업/판매직</option>
         <option value="생산/기술직/노무직">생산/기술직/노무직</option>
         <option value="교사/학원강사">교사/학원강사</option>
         <option value="공무원(공기업 포함)">공무원(공기업 포함)</option>
         <option value="학생">학생</option>
         <option value="전업주부">전업주부</option>
         <option value="농/임/어업">농/임/어업</option>
         <option value="자영업">자영업</option>
         <option value="자유직/프리랜서">자유직/프리랜서</option>
         <option value="무직">무직</option>
         <option value="기타">기타</option>
      </select></p> 

   <p>설문 정보</p>
   <p><textarea rows="10" cols="30" placeholder="설문 정보를 입력하세요" name="survey_info"></textarea></p>
   <p><input type="submit" value="설문 질문 추가하기"></p>
</form>

<script>


$('#survey_date').daterangepicker({
    "locale": {
        "format": "YY/MM/DD",
        "separator": "~",
        "applyLabel": "확인",
        "cancelLabel": "취소",
        "fromLabel": "From",
        "toLabel": "To",
        "customRangeLabel": "Custom",
        "weekLabel": "W",
        "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
        "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
    },
    "startDate": new Date(),
    "endDate": new Date(),
    "drops": "auto"
}, function (start, end, label) {
    console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
});
</script>




</body>