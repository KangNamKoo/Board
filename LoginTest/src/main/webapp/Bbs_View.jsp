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
#regdate {
	margin-top: auto;
	margin-bottom: auto;
	text-align: right;
}

#detail_title {
	text-align: left;
	margin-top: auto;
	margin-bottom: auto;
}

#detail_title h3 {
	
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
	<%@ include file="/include/Nav.jsp"%>
	<h1 style="text-align: center; margin-top: 20px;">Community</h1>
	<div style="margin-top: 30px;" class="container">
		<div style="margin: auto; width: 1000px;" id="detail_view">
			<div style="border-top: 1px solid black; background-color: rgb(220, 220, 220); height: 50px;" class="container">
				<div style="height: 50px;" class="row">
					<div id="detail_title" class="col-9">
						<h3><%=dto.getBbs_Title()%></h3>
					</div>
					<div id="regdate" style="text-align: right;" class="col-3"><%=dto.getBbs_Regdate()%></div>
				</div>
			</div>
			<div style="border-top: 1px solid black;" id="userid" class="container">
				<div class="row">
					<div id="detail_userid" class="col-8">
						<%=dto.getBbs_UserId()%>
					</div>
					<div class="col-4">조회수</div>
				</div>
			</div>
			<div style="border-top: 1px solid black" class="container">
				<div class="row">
					<div style="height: 550px;" id="detail_content" class="col">
						<%=dto.getBbs_Content()%>
					</div>
				</div>
			</div>
			<div style="margin-top: 40px; border-top: 1px solid black; border-bottom: 1px solid black;" class="container">
				<div class="row">
					<div id="detail_file" class="col">파일명</div>
				</div>
			</div>
		</div>
		<button type="submit" class="btn btn-outline-primary" style="float: right; height: 80px; width: 100px; margin: auto; margin-top: 40px; text-align: center;" onclick="location='/Bbs.do'">목록</button>
		<button type="submit" class="btn btn-outline-primary" style="float: right; height: 80px; width: 100px; margin: auto; margin-top: 40px; text-align: center;" onclick="fnUpdateForm(<%=dto.getBbs_Num()%>)">수정하기</button>
		<button type="submit" class="btn btn-outline-primary" style="float: right; height: 80px; width: 100px; margin: auto; margin-top: 40px; text-align: center;" onclick="fnDelete(<%=dto.getBbs_Num()%>)">삭제하기</button>
	</div>
	<%@ include file="/include/Footer.jsp"%>
</body>
</html>