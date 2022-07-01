<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<h1>수정페이지</h1>
	<a href="/main.jsp">Home</a>
	<a href="/Bbs_View.jsp">뒤로가기</a>
	<form action="/Bbs_UpdateProc.do" method="post">
		<div class="container-fluid">
		<%-- <div>
			글번호 : <input type="text" id="num" name="bbs_Num" value="${bbs_view.bbs_Num}">
		</div>
		<div>
			제목 : <input type="text" id="title" name="bbs_Title" value="${bbs_view.bbs_Title}">
		</div>
		<div>
			내용 :
			<textarea rows="30" cols="60" name="bbs_Content">${bbs_view.bbs_Content}</textarea>
		</div>
		<div>
			날짜 : <input type="text" id="Regdate" name="bbs_Regdate" value="${bbs_view.bbs_Regdate}">
		</div>
		<div>
			<input type="submit" value="수정하기">
		</div> --%>
		<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">글제목</label> 
				<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="글제목" name="bbs_Title" value="${bbs_view.bbs_Title}">
				<input type="hidden" class="form-control" id="exampleFormControlInput1" placeholder="숫자" name="bbs_Num" value="${bbs_view.bbs_Num}">
				<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="날짜" name="bbs_Regdate" value="${bbs_view.bbs_Regdate}">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlTextarea1" class="form-label">글내용</label>
				<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="bbs_Content">${bbs_view.bbs_Content}</textarea>
			</div>
		</div>
		<button type="submit" class="btn btn-outline-primary" style="float: right;">수정하기</button>
	</form>
</body>
</html>