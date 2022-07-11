<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작성페이지</title>
<%@ include file="/include/lib.jsp"%>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<%@ include file="/include/Nav.jsp"%>
	<h1 style="text-align: center; margin-top: 20px;">수정페이지</h1>
	<button onclick="location='/Main.jsp'" type="button" class="btn btn-outline-primary">Home</button>
	<button onclick="location='/Bbs_View.jsp'" type="button" class="btn btn-outline-primary">뒤로가기</button>
	<form action="/Bbs_UpdateProc.do" method="post">
		<div class="container-fluid">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">글제목</label> <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="글제목" name="bbs_Title" value="${bbs_view.bbs_Title}"> <input type="hidden" class="form-control" id="exampleFormControlInput1"
					placeholder="숫자" name="bbs_Num" value="${bbs_view.bbs_Num}"> <input type="hidden" class="form-control" id="exampleFormControlInput1" placeholder="날짜" name="bbs_Regdate" value="${bbs_view.bbs_Regdate}">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlTextarea1" class="form-label">글내용</label>
				<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="bbs_Content">${bbs_view.bbs_Content}</textarea>
			</div>
		</div>
		<button type="submit" class="btn btn-outline-primary" style="float: right;">수정하기</button>
	</form>
	<%@ include file="/include/Footer.jsp"%>
</body>
</html>