<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
<%@ include file="/include/lib.jsp"%>
<style>
#bb_img {
	height: 750px;
	width: 100%;
}
#con {
	text-align: center;;
	width: 100%;
}
#con_text {
	color: black;
	height: 65px;
}
#con_text div {
	border: 0.5px solid black;
	display: flex;
	background-color: #808080;
	cursor: pointer;
	align-items: center;
	justify-content: center;
}
</style>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<div class="container-fluid" id="con">
		<div class="row" id="con_text">
			<div onclick="location.href='/Bbs.do'" class="col">
				<h5>Workout Routine</h5>
			</div>
			<div onclick="location.href='/Bbs.do'" class="col">
				<h5>Workout Log</h5>
			</div>
			<div onclick="location.href='/Bbs.do'" class="col">
				<h5>Workout Partner</h5>
			</div>
			<div onclick="location.href='/Bbs.do'" class="col">
				<h5>Community</h5>
			</div>
		</div>
	</div>
	<div id="container">
		<img id="bb_img" src="/static/img/barbell.jpg">
	</div>
	
	<!-- 보류(사진3개) -->
	<!-- <div id="img_container" class="container-fluid">
		<div id="main_img" class="row">
			<div class="col">
				<img src="/static/img/남자이두.jpeg">
			</div>
			<div class="col">
				<img src="/static/img/남자데드.jpeg">
			</div>
			<div class="col">
				<img src="/static/img/여자등.jpeg">
			</div>
		</div>
	</div> -->
	<%@ include file="/include/Footer.jsp"%>
</body>
</html>