<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네트워크 테스트 3번 처리</title>
<style type="text/css">
	body {
		width: 550px;
		margin: 0 auto;
	}
	table, tr, td {
		border: 1px solid black;
	}
</style>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="testBean" class="nwtest.JobApplicationBean">
	<jsp:setProperty name="testBean" property="name" param="name"/>
	<jsp:setProperty name="testBean" property="tel" param="tel"/>
	<jsp:setProperty name="testBean" property="job" param="job"/>
	<jsp:setProperty name="testBean" property="content" param="content"/>
</jsp:useBean>
<h2>회원 가입 결과</h2>
<p>회원가입을 축하드립니다.</p>
<p>회원님의 정보를 알려드립니다.</p>
	<table>
		<tr>
			<td width="150">이름</td>
			<td width="350"><jsp:getProperty name="testBean" property="name"/></td>
		</tr>
		<tr>
			<td>연락처</td>
			<td><jsp:getProperty name="testBean" property="tel"/></td>
		</tr>
		<tr>
			<td>지원 분야</td>
			<td><jsp:getProperty name="testBean" property="job"/></td>
		</tr>
		<tr>
			<td>지원 동기</td>
			<td><jsp:getProperty name="testBean" property="content"/></td>
		</tr>
	</table>


</body>
</html>