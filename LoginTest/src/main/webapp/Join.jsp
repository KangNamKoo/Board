<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<%@ include file="/include/lib.jsp"%>
<style>
#join_text {
	text-align: center;
}

#join {
	text-align: center;
	height: 400px;
	width: 500px;
	background-color: #DEDEDE;
	margin: auto;
	margin-top: 80px;
	border-radius: 18px 18px 18px 18px;
}

#id {
	margin-top: 40px;
}

#pw {
	margin-top: 20px;
}
#name{
	margin-top: 20px;
}
#tel{
	margin-top: 20px;
}
</style>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<div class="container-fluid">

		<h1 id="join_text">Join Page</h1>
		<form action="/Join.do" method="post">
			<div class="container">
				<div class="col-4" id="join">
					<h2>회원가입</h2>
					<div class="container">
						<div id="id">
							<input type="text" name="bbs_Name" placeholder="아이디를 입력하세요.">
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
</body>
</html>