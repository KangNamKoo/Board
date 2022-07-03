<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<%@ include file="/include/lib.jsp"%>
</head>
<body>
	<%
	List list = (List) request.getAttribute("list");
	%>
	<%@ include file="/include/header.jsp"%>
	<div class="container-fluid" id="table_div">

		<h1 style="text-align: center; margin-top: 20px;">Board List Page</h1>
		<button onclick="location='/Main.jsp'" type="button" class="btn btn-outline-primary">Home</button>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">글번호</th>
					<th scope="col">제목</th>
					<th scope="col">글내용</th>
					<th scope="col">날짜</th>
				</tr>
			</thead>
			<tbody>
			<%
			for (int i = 0; i < list.size(); i++) {
				Map item = (Map) list.get(i);
			%>
				<tr>
					<th scope="row"><%=item.get("bbs_Num")%></th>
					<td><b><a href="/Bbs_View.do?bbs_Num=<%=item.get("bbs_Num")%>"><%=item.get("bbs_Title")%></a></b></td>
					<td><%=item.get("bbs_Content")%></td>
					<td><%=item.get("bbs_Regdate")%></td>
				</tr>
			<%
			}
			%>
			</tbody>
		</table>
		<button type="button" class="btn btn-outline-primary" onclick="location='/BbsCreateForm.do'" style="float: right;">작성하기</button>
	</div>
</body>
</html>