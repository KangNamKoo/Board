<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
<%@ include file="/include/lib.jsp"%>
<style>
#bb_img{
	height: 750px;
	width: 100%;
}
</style>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<div class="container" id="content">
		<div id=content_text class="row">
			<div onclick="location.href='/Bbs.do'" class="col" style="border-right: 0.5px solid gray; background-color: #4169e1; cursor: pointer; border-radius: 13px 0px 0px 13px;">
				<h3>운동</h3>
			</div>
			<div onclick="location.href='/Bbs.do'" class="col" style="border-right: 0.5px solid gray; background-color: #4169e1; cursor: pointer;">
				<h3></h3>
			</div>
			<div onclick="location.href='/Bbs.do'" class="col" style="border-right: 0.5px solid gray; background-color: #4169e1; cursor: pointer; border-radius: 0px 13px 13px 0px;">
				<h3>자유게시판</h3>
			</div>
		</div>
	</div>
	<br>
	<div id="container">
		<img id="bb_img" src="/static/img/pushup.jpeg">
	</div>
</body>
</html>