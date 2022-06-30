<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	<h1>Login Page</h1>
	<form action="/LoginPage.do" method="post">
		ID : <input type="text" name="bbs_Id"> PW : <input type="password" name="bbs_Pw"> <input type="submit" value="로그인">
	</form>
	로그인 상태 :
	<%=session.getAttribute("bbs_Id")%>
</body>
</html>