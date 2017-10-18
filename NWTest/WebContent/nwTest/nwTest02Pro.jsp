<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네트워크 테스트 2번 처리</title>
<style type="text/css">
	div {
		width: 550px;
		margin: 0 auto;
	}
	table {
		border-collapse: collapse;
	}
</style>
</head>
<body>
<% request.setCharacterEncoding("utf-8");%>

<%
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String hobby = request.getParameter("hobby");
	
%>
<div>
	<h2>개인 정보 조회 결과</h2>
	<p>회원님의 정보를 알려드립니다.</p>
		<table border="1">
			<tr>
				<td width="150">이름</td>
				<td width="350"><%=name %></td>
			</tr>
			
			<tr>
				<td>성별</td>
				<td><%=gender %></td>
			</tr>
			
			<tr>
				<td>취미</td>
				<td><%=hobby %></td>
			</tr>
			
		</table>
	
</div>
</body>
</html>