<%@page import="controller.Bbs_ViewController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ page import="DTO.Board_DTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 수정</title>
<%@ include file="/include/lib.jsp"%>
<script type="text/javascript">
	function fnDelete(p_bbs_num) {
		window.location.href = '/Bbs_Delete.do?bbs_Num=' + p_bbs_num;
	}

	function fnUpdateForm(p_bbs_num) {
		var bbs_Num = document.querySelector('#bbs_Num');
		bbs_Num.value = p_bbs_num;

		var requestForm = document.querySelector('#requestForm');
		requestForm.submit();
	}
</script>
<style>
#detail_view{
	border: 1px solid black;
	height: 700px;
	width: 900px;
}

#title {
	border: 1px solid black;
	text-align: center;
}

#num {
	border: 1px solid black;
	text-align: center;
}

#content_title {
	border: 1px solid black;
	text-align: center;
}
</style>
</head>
<body>
	<form id="requestForm" action="/Bbs_UpdateList.do" method="post">
		<input type="hidden" id="bbs_Num" name="bbs_Num">
	</form>
	<%
	Board_DTO dto = (Board_DTO) request.getAttribute("bbs_view");
	%>
	<%@ include file="/include/header.jsp"%>
	<h1 style="text-align: center; margin-top: 20px;">Board Detail Page</h1>
	<div id="container-fluid">
		<%-- <div style="border: 1px solid black; height: 80px; width: 400px; margin: auto; text-align: center;">
			<h1><%=bDto.getBbs_Title()%></h1>
		</div>
		<div style="border: 1px solid black; height: 200px; width: 500px; margin: auto; margin-top: 40px; text-align: center;">
			<h1><%=bDto.getBbs_Content()%></h1>
		</div>
		<input style="border: 1px solid black; height: 80px; width: 100px; margin: auto; margin-top: 40px; text-align: center;" onclick="fnUpdateForm(<%=bDto.getBbs_Num()%>)" type="button" value="수정하기"> 
		<input style="border: 1px solid black; height: 80px; width: 100px; margin: auto; margin-top: 40px; text-align: center;" onclick="fnDelete(<%=bDto.getBbs_Num()%>)" type="button" value="삭제하기">
		<button style="border: 1px solid black; height: 80px; width: 100px; margin: auto; margin-top: 40px; text-align: center;" type="button" onclick="location='/Bbs.do'">목록</button> --%>

		<div id="detail_view" style="margin: auto; margin-top: 50px;">
			<div class="container" id="num">
				<div class="row">
					<div class="col" style="background-color: gray">글번호</div>
					<div class="col"><%=dto.getBbs_Num()%></div>
					<div class="col" style="background-color: gray">
						생성 날짜 :
						<%=dto.getBbs_Regdate()%></div>
				</div>
			</div>
			<div class="container" id="title">
				<div class="row">
					<div class="col-4" style="background-color: gray">글제목</div>
					<div class="col-8"><%=dto.getBbs_Title()%></div>
				</div>
			</div>
			<div class="container" id="content_title">
				<div class="row">
					<div class="col" style="background-color: gray"><h4>글내용</h4></div>
				</div>
			</div>
			<div class="container" id="con_content">
				<div class="row">
					<div class="col"><%=dto.getBbs_Content() %></div>
				</div>
			</div>
		</div>
		<%-- <input style="border: 1px solid black; height: 80px; width: 100px; margin: auto; margin-top: 40px; text-align: center;" onclick="fnUpdateForm(<%=dto.getBbs_Num()%>)" type="button" value="수정하기">  --%>
		<%-- <input style="border: 1px solid black; height: 80px; width: 100px; margin: auto; margin-top: 40px; text-align: center;" onclick="fnDelete(<%=dto.getBbs_Num()%>)" type="button" value="삭제하기"> --%>
		<button type="submit" class="btn btn-outline-primary" style="float: right; height: 80px; width: 100px; margin: auto; margin-top: 40px; text-align: center;" onclick="location='/Bbs.do'">목록</button>
		<button type="submit" class="btn btn-outline-primary" style="float: right; height: 80px; width: 100px; margin: auto; margin-top: 40px; text-align: center;" onclick="fnUpdateForm(<%=dto.getBbs_Num()%>)">수정하기</button>
		<button type="submit" class="btn btn-outline-primary" style="float: right; height: 80px; width: 100px; margin: auto; margin-top: 40px; text-align: center;" onclick="fnDelete(<%=dto.getBbs_Num()%>)">삭제하기</button>
	</div>
</body>
</html>