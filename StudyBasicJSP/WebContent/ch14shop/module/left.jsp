<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책분류 메뉴</title>
</head>
<body>
<p>책분류</p><br>
<a href="../shopping/list.jsp?book_kind=all">전체목록보기</a><br>
<a href="../shopping/list.jsp?book_kind=100">문학도서</a><br>
<a href="../shopping/list.jsp?book_kind=200">외국어도서</a><br>
<a href="../shopping/list.jsp?book_kind=300">컴퓨터도서</a><br>
<a href="../shopping/list.jsp?book_kind=400">낚시도서</a><br>
<a href="../shopping/list.jsp?book_kind=500">여행도서</a><br>
<br><br><br>
<%
	String buyer = (String)session.getAttribute("id");

	if(session.getAttribute("id")==null) {
%>
	<%} else {%>
		<a href="../../ch13/board/list.jsp">게시판 보기</a>
	<%} %>
</body>
</html>