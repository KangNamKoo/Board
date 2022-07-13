<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
<%@ include file="/include/lib.jsp"%>
<style>
#test {
	border: 1px solid black;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
}
#test div {
	border: 1px solid black;
	height: 50px;
	width: 50px;
}
</style>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<%@ include file="/include/Nav.jsp"%>
	<h1>마이페이지</h1>
	<div id="test" class="container">
		<div class="item">test</div>
		<div class="item">test</div>
		<div class="item">test</div>
		<div class="item">test</div>
		<div class="item">test</div>
	</div>
	<%@ include file="/include/Footer.jsp"%>
</body>
</html>