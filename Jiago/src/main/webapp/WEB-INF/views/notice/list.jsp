<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div id="root">
   <div class="notice_name">
      <div class="notice_name_L"><a href="${cpath }/notice/list?notice_name=">공지사항</a></div>
      <div class="notice_name_R">Home > 고객센터 > 공지사항</div>
   </div>
   <div class="sb">
      <div>
         <form class="search">
            <p>
               <input type="text" name="notice_name" placeholder="제목을 입력하세요" value="${notice_name }">
               <input type="submit" value="검색">
            </p>
         </form>
      </div>
      <div class="notice_write">
      	<c:if test="${login.user_type == 'Admin' }">
         	<a href="${cpath }/notice/write"><button>작성</button></a>
         </c:if>
      </div>
   </div>
   

   <table id="boardList">
      <thead>
         <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일</th>
         </tr>
      </thead>
      
      <tbody>
      <c:forEach var="dto" items="${list }">
      <tr>
         <td>${dto.notice_idx }</td>
         <td><a href="${cpath}/notice/view/${dto.notice_idx}">${dto.notice_name }</a></td>
         <td>${dto.notice_admin }</td>
         <td><fmt:formatDate value="${dto.notice_date }"/></td>
      </tr>
      </c:forEach>
      </tbody>
   </table>
   
   <div class="page_wrap">
    <div class="page_nation">
      <c:if test="${paging.prev }">
         <a class="arrow pprev" href="${cpath }/notice/list?page=1&notice_name=${notice_name}"></a>
      </c:if>	
    
      <c:if test="${paging.prev }">
         <a class="arrow prev" href="${cpath }/notice/list?page=${paging.begin - 1}&notice_name=${notice_name}"></a>
      </c:if>
      
      <c:forEach var="i" begin="${paging.begin }" end="${paging.end }">
         <a class="${paging.page == i ? 'active' : '' }" 
            href="${cpath }/notice/list?page=${i}&notice_name=${notice_name}">${i}</a>
      </c:forEach>
      
      <c:if test="${paging.next }">
         <a class="arrow next" href="${cpath }/notice/list?page=${paging.end + 1}&notice_name=${notice_name}"></a>
      </c:if>
      
      <c:if test="${paging.next }">
         <a class="arrow nnext" href="${cpath }/notice/list?page=${paging.pageCount }&notice_name=${notice_name}"></a>
      </c:if>   
   </div>
  </div>
  
</div>
</body>
</html>