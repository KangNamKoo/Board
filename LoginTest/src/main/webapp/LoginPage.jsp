<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@ include file="/include/lib.jsp"%>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<h1 id="login_text">Login Page</h1>
	<form action="/LoginPage.do" method="post">
		<div class="container">
			<div class="col-4" id="login">
				<h2>Login</h2>
				<div class="container">
					<div id="id">
						<input type="text" name="bbs_Id" placeholder="아이디를 입력하세요.">
					</div>
					<div id="pw">
						<input type="password" name="bbs_Pw" placeholder="비밀번호를 입력하세요.">
					</div>
					<div id="login_submit">
						<input style="width: 200px; height: 70px; margin-top: 30px; background-color: gray;" type="submit" value="Login">
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>