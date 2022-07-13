<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
<%@ include file="/include/lib.jsp"%>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<%@ include file="/include/Nav.jsp"%>
	<div id="container">
		<img id="bb_img" src="/static/img/barbell.jpg">
	</div>
	<div id="main_content" class="container-fluid">
		<div id="main_content_div" class="row">
			<div class="col-7">
				<img src="/static/img/남자데드.jpeg">
			</div>
			<div id="main_content_text" class="col-5">
				<p>
				<h1>
					<b>나만의 운동루틴</b>
				</h1>
				<br>
				<p>
				<h5>나에게 맞는 운동을 찾아보세요</h5>
				<p>
				<h5>초보자부터 상급자까지</h5>
				<p>
				<h5>부위별로 원하는 운동을 해보세요</h5>
				<br>
				<button type="button" onclick="설정">
					<h5>Workout Routine</h5>
				</button>
			</div>
		</div>
	</div>
	<div id="main_content2" class="container-fluid">
		<div id="main_content_div" class="row">
			<div id="main_content_text" class="col-5">
				<p>
				<h1>
					<b>나의 운동 일지</b>
				</h1>
				<br>
				<p>
				<h5>나와 맞는 운동 파트너를 찾아보세요</h5>
				<p>
				<h5>내 수준에 맞는 파트너와 함께</h5>
				<p>
				<h5>혼자가 아닌 함께 운동을 해보세요</h5>
				<br>
				<button>
					<h5>Workout Log</h5>
				</button>
			</div>
			<div class="col-7">
				<img src="/static/img/여자아령.jpg">
			</div>
		</div>
	</div>
	<div id="main_content3" class="container-fluid">
		<div id="main_content_div" class="row">
			<div class="col-7">
				<img src="/static/img/partner.jpeg">
			</div>
			<div id="main_content_text" class="col-5">
				<p>
				<h1>
					<b>나의 운동 파트너</b>
				</h1>
				<br>
				<p>
				<h5>나와 맞는 운동 파트너를 찾아보세요</h5>
				<p>
				<h5>내 수준에 맞는 파트너와 함께</h5>
				<p>
				<h5>혼자가 아닌 함께 운동을 해보세요</h5>
				<br>
				<button onclick="location.href=''">
					<h5>Workout Partner</h5>
				</button>
			</div>
		</div>
	</div>
	<%@ include file="/include/Footer.jsp"%>
</body>
</html>