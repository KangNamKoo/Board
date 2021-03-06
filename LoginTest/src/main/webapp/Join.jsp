<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<%@ include file="/include/lib.jsp"%>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<%@ include file="/include/Nav.jsp"%>
	<div class="container-fluid">

		<form action="/Join.do" method="post">
			<div class="container">
				<div class="col-4" id="join">
					<h2>회원가입</h2>
					<div class="container">
						<div id="id">
							<input type="text" name="bbs_Id" placeholder="아이디를 입력하세요.">
						</div>
						<div id="pw">
							<input type="password" name="bbs_Pw" placeholder="비밀번호를 입력하세요.">
						</div>
						<div id="name">
							<input type="text" name="bbs_Name" placeholder="이름을 입력하세요.">
						</div>
						<div id="tel">
							<input type="text" name="bbs_Tel" placeholder="휴대폰 번호를 입력하세요.">
						</div>
						<div id="join_submit">
							<input style="width: 200px; height: 70px; margin-top: 30px; background-color: gray;" type="submit" value="회원가입">
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<%@ include file="/include/Footer.jsp"%>
</body>
</html>