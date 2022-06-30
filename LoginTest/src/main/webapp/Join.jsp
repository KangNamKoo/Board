<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1>Sign Up Page</h1>
	<form action="/Join.do" method="post">
		<div>
			이름 : <input type="text" name="bbs_Name">
		</div>
		<div>
			아이디 : <input type="text" name="bbs_Id">
		</div>
		<div>
			비밀번호 : <input type="password" name="bbs_Pw">
		</div>
		<div>
			휴대폰 번호 : <input type="tel" name="bbs_Tel">
		</div>
		<button type="submit" onclick="location='/LoginPage.jsp'">회원가입</button>
	</form>
</body>
</html>