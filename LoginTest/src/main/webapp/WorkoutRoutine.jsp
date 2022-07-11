<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<%@ include file="/include/lib.jsp"%>
<style>
#wr_content{
	height: 1000px;
}
#side{
	background-color: red;
}
#side_bar{
	height: 500px;
	width: 300px;
	margin: auto;
	text-align: center;
}
#side_bar div{
	border: 1px solid black;
	height: 90px;
}
</style>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<%@ include file="/include/Nav.jsp"%>
	<div class="container-fluid">
		<h1 id="join_text">Workout Routine</h1>
		<div class="container">
			<div id="wr_content" class="row">
				<div id="side" style="border: 1px solid black;" class="col-3">
					<div id="side_bar">
						<div id="chest">chest</div>
						<div id="back">back</div>
						<div id="shoulder">shoulder</div>
						<div id="arm">arm</div>
						<div id="lower body">lower body</div>
					</div>
				</div>
				<div style="border: 1px solid black;" class="col-9">내용</div>
			</div>
		</div>
	</div>
	<%@ include file="/include/Footer.jsp"%>
</body>
</html>