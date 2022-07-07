<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<ul class="nav justify-content-end" id="head_menu">
	<%if(session.getAttribute("bbs_Id")!=null){%>
	<li class="nav-item"><a id="head_content" class="nav-link active" aria-current="page"><%=session.getAttribute("bbs_Id") %> 님 반갑습니다.</a></li>
	<li class="nav-item"><a id="head_content" class="nav-link" href="/MyPage.jsp">마이페이지</a></li>
	<li class="nav-item"><a id="head_content" class="nav-link" href="/Logout.do">로그아웃</a></li>
	<%} else {%>
	<li class="nav-item"><a id="head_content" class="nav-link active" aria-current="page" href="/LoginPage.jsp">로그인</a></li>
	<li class="nav-item"><a id="head_content" class="nav-link" href="/Join.jsp">회원가입</a></li>
	<%}%>
</ul>

