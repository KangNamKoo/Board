<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
<%@ include file="/include/lib.jsp"%>
<style>
#test{
	border: 1px solid black;
}
#test div{
	border: 1px solid black;
}
</style>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<h1>마이페이지</h1>
	<div id="test" class="container">
		<div class="row">
			<div class="col">Column</div>
			<div class="col">Column</div>
			<div class="col">Column</div>
			<div class="col">Column</div>
			<div class="col">Column</div>
			<div class="col">Column</div>
			<div class="col">Column</div>
			<div class="col">Column</div>
		</div>
	</div>
	<%@ include file="/include/Footer.jsp"%>
</body>
</html>