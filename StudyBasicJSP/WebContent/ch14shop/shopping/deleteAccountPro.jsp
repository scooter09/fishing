<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "ch14.bookshop.shopping.*" %>
<%@ include file = "../etc/color.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제계좌 삭제처리</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>

<%
	String buyer = (String)session.getAttribute("id");
	String accountList = request.getParameter("accountList");
	String passwd = request.getParameter("passwd");
	
	int index = accountList.indexOf(" ");
	String account = accountList.substring(0, index);
	
	CustomerDBBean memberProcess = CustomerDBBean.getInstance();
	int checkNum = memberProcess.userCheck(buyer, passwd);
	
	if(checkNum != 1) {
%>

<script type="text/javascript">
	alert("비밀번호를 잘못 입력하셨습니다.");
	history.go(-1);
</script>
<%} else { 	
	BankDBBean bankProcess = BankDBBean.getInstance();
	bankProcess.deleteAccount(buyer, account);
%>
<script type="text/javascript">
	alert("계좌 삭제완료 되었습니다.");
</script>
<%
	response.sendRedirect("buyForm.jsp");
}%>

</body>
</html>