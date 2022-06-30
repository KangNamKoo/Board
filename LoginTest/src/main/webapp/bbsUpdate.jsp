<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작성페이지</title>
<style>
#title {
	height: 50px;
	width: 440px;
	border: 1px solid black;
}
</style>
</head>
<body>
	<h1>수정페이지</h1>
	<a href="/main.jsp">Home</a>
	<a href="/list.jsp">뒤로가기</a>
	<form action="/Bbs_UpdateProc.do" method="post">
		<div>
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
		</div>
	</form>
</body>
</html>