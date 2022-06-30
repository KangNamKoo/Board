<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
</head>
<body>
	<h1>Main Page</h1>
	<h3>메인입니다.</h3>
	<div>
		<a href="/Logout.do">로그아웃</a>
	</div>
	<div>
		<a href="/Bbs.do">게시판</a>
	</div>
	로그인 상태 :
	<%=session.getAttribute("bbs_Id")%>
</body>
</html>