<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
<%@ include file="/include/lib.jsp"%>
<style>
img{
	height: 700px;
	width: 400px;
}
</style>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<h1>마이페이지</h1>
	<table>
  <tr>
    <td><img src="/static/img/남자데드.jpeg" /></td><td><img src="/static/img/남자이두.jpeg" /></td><td><img src="/static/img/여자등.jpeg" /></td>
  <tr>
</table>
</body>
</html>