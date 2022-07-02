<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="DTO.Board_DTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작성페이지</title>
<%@ include file="/include/lib.jsp"%>
<style>
#title {
	height: 50px;
	width: 440px;
	border: 1px solid black;
}
</style>
<%
Board_DTO dto = (Board_DTO) request.getAttribute("bbs_Num");
%>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<h1 style="text-align: center; margin-top: 20px;">작성페이지</h1>
	<button onclick="location='/Main.jsp'" type="button" class="btn btn-outline-primary">Home</button>
	<button onclick="location='/Bbs_View.jsp'" type="button" class="btn btn-outline-primary">뒤로가기</button>
	<form action="/BbsCreate.do" method="post">
		<div class="container-fluid">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">글제목</label> 
				<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="글제목" name="bbs_Title"> 
				<input type="hidden" class="form-control" id="exampleFormControlInput1" placeholder="숫자" name="bbs_Num"value=<%=dto.getBbs_Num()%>> 
				<input type="hidden" class="form-control" id="exampleFormControlInput1" placeholder="날짜" name="bbs_Regdate" value=<%=dto.getBbs_Regdate() %>>
			</div>
			<div class="mb-3">
				<label for="exampleFormControlTextarea1" class="form-label">글내용</label>
				<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="bbs_Content"></textarea>
			</div>
		</div>
		<button type="submit" class="btn btn-outline-primary" style="float: right;">작성하기</button>
	</form>
</body>
</html>