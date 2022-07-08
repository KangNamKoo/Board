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
</style>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<%@ include file="/include/Nav.jsp"%>
	
	<div id="container">
		<img id="bb_img" src="/static/img/barbell.jpg">
	</div>
	<%@ include file="/include/Footer.jsp"%>
</body>
</html>