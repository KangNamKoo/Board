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
<script type="text/javascript">
	function fnDelete(p_bbs_num){
		window.location.href = '/Bbs_Delete.do?bbs_Num='+p_bbs_num;
	}
	
	function fnUpdateForm(p_bbs_num){
		var bbs_Num = document.querySelector('#bbs_Num');
		bbs_Num.value = p_bbs_num;
		
		var requestForm = document.querySelector('#requestForm');
		requestForm.submit();
	}
</script>
</head>
<body>
	<form id="requestForm" action="/Bbs_UpdateList.do" method="post">
		<input type="hidden" id="bbs_Num" name="bbs_Num">
	</form>
	<%
	Board_DTO bDto = (Board_DTO) request.getAttribute("bbs_view");
	%>
	<h1>bbs_view Page</h1>
	<div id="container">
		<div style="border: 1px solid black; height: 80px; width: 400px; margin: auto; text-align: center;">
			<h1><%=bDto.getBbs_Title()%></h1>
		</div>
		<div style="border: 1px solid black; height: 200px; width: 500px; margin: auto; margin-top: 40px; text-align: center;">
			<h1><%=bDto.getBbs_Content()%></h1>
		</div>
		<input style="border: 1px solid black; height: 80px; width: 100px; margin: auto; margin-top: 40px; text-align: center;" onclick="fnUpdateForm(<%=bDto.getBbs_Num()%>)" type="button" value="수정하기"> 
		<input style="border: 1px solid black; height: 80px; width: 100px; margin: auto; margin-top: 40px; text-align: center;" onclick="fnDelete(<%=bDto.getBbs_Num()%>)" type="button" value="삭제하기">
		<button style="border: 1px solid black; height: 80px; width: 100px; margin: auto; margin-top: 40px; text-align: center;" type="button" onclick="location='/Bbs.do'">목록</button>
	</div>
</body>
</html>