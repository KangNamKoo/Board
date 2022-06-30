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
<style>
tr td {
	border: 1px solid black;
}
</style>
</head>
<body>
	<%
	List list = (List) request.getAttribute("list");
	%>
	<h1>List Page</h1>
	목록
	<button type="button" onclick="location='/bbsCreate.jsp'">작성하기</button>
	<a href="/Main.jsp">Home</a>
	<div>
		<table style="border: 1px solid black;">
			<tr>
				<td>글번호</td>
				<td>글제목</td>
				<td>글내용</td>
				<td>작성일</td>
			</tr>
			<%
			for (int i = 0; i < list.size(); i++) {
				Map item = (Map) list.get(i);
			%>
			<tr>
				<td><%=item.get("bbs_Num")%></td>
				<td><b><a href="/Bbs_View.do?bbs_Num=<%=item.get("bbs_Num")%>"><%=item.get("bbs_Title")%></a></b></td>
				<td><%=item.get("bbs_Content")%></td>
				<td><%=item.get("bbs_Regdate")%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
</body>
</html>