<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="DTO.Board_DTO"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작성페이지</title>
<%@ include file="/include/lib.jsp"%>

<%
Board_DTO dto = (Board_DTO) request.getAttribute("bbs_Num");
%>
<% String id= (String)session.getAttribute("bbs_Id");
	if(id==null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 필요합니다.')");
		script.println("location.href='/Main.jsp'");
		script.println("</script>");
	} 
%>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<h1 style="text-align: center; margin-top: 20px;">작성페이지</h1>
	<button onclick="location='/Main.jsp'" type="button" class="btn btn-outline-primary">Home</button>
	<button onclick="location='/Bbs.do'" type="button" class="btn btn-outline-primary">뒤로가기</button>
	<form action="/BbsCreate.do" method="post">
		<div class="container-fluid">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">글제목</label> 
				<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="글제목" name="bbs_Title"> 
				<input type="hidden" class="form-control" id="exampleFormControlInput1" placeholder="숫자" name="bbs_Num" value=<%=dto.getBbs_Num()%>> 
				<input type="hidden" class="form-control" id="exampleFormControlInput1" placeholder="날짜" name="bbs_Regdate" value=<%=dto.getBbs_Regdate()%>>
				<input type="hidden" class="form-control" id="exampleFormControlInput1" placeholder="작성자 아이디" name="bbs_UserId" value=<%=session.getAttribute("bbs_Id")%>>
			</div>
			<div class="mb-3">
				<label for="exampleFormControlTextarea1" class="form-label">글내용</label>
				<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="bbs_Content"></textarea>
			</div>
		</div>
		<button type="submit" class="btn btn-outline-primary" style="float: right;">작성하기</button>
	</form>
	<%@ include file="/include/Footer.jsp"%>
</body>
</html>