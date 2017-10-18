<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../../etc/color.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책삭제</title>
<link href="../../etc/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
	table {
		font-size: 12px;
		text-align: center;
		width: 250px;
		border: 1px solid black;
		margin: 0 auto;
		padding-rigth: 20px;
	}
</style>
</head>
<body bgcolor="<%=bodyback_c%>">
<p>책삭제</p>
<br>

<%
	String managerId="";
	
	try {
		managerId = (String)session.getAttribute("managerId");
		if(managerId==null || managerId.equals("")) {
			response.sendRedirect("../logon/managerLoginForm.jsp");
		} else {
			int book_id = Integer.parseInt(request.getParameter("book_id"));
			String book_kind = request.getParameter("book_kind");
		
%>

	<form method="post" name="delForm" action="bookDeletePro.jsp?book_id=<%=book_id %>&
	book_kind=<%=book_kind %>" onsubmit="return deleteSave()">
		
		<table align="center">
			<tr>
				<td align="center" bgcolor="<%=value_c%>">
					<a href="../managerMain.jsp">관리자 메인으로</a> &nbsp;
					<a href="bookList.jsp?book_kind=<%=book_kind %>">목록으로</a>
				</td>
			</tr>
			
			<tr height="30">
				<td align="center" bgcolor="<%=value_c %>">
					<input type="submit" value="삭제">
				</td>
			</tr>
		</table>
	</form>
	<%
		}
	} catch(Exception e) {
		e.printStackTrace();
	}
	%>
	</body>
</html>