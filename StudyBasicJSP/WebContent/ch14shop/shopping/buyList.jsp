<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "ch14.bookshop.shopping.BuyDBBean" %>
<%@ page import = "ch14.bookshop.shopping.BuyDataBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.NumberFormat" %>
<%@ include file = "../etc/color.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>book shopping mall</title>
<link href="../etc/style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="<%=bodyback_c %>">
<%
	String buyer = (String) session.getAttribute("id");
	
	List<BuyDataBean> buyLists = null;
	BuyDataBean buyList = null;
	int count = 0;
	int number = 0;
	int total = 0;
	long compareId = 0;
	long preId = 0;
	
	if(session.getAttribute("id") == null) {
		response.sendRedirect("shopMain.jsp");
	} else {
		BuyDBBean buyProcess = BuyDBBean.getInstance();
		count = buyProcess.getListCount(buyer);
	
	if(count == 0) {
%>
<h3><b>구매목록</b></h3>

	<table>
		<tr>
			<td align="center">구매목록이 없습니다.</td>
		</tr>
	</table>
	<input type="button" value="메인으로" onclick="javascript:window.location='shopMain.jsp'">
	<%
	} else {
		buyLists = buyProcess.getBuyList(buyer);
	%>
<h3><b>구매목록</b></h3>
	<table>
		<tr>
			<td>
			<%
				for(int i=0; i<buyLists.size(); i++) {
					buyList = buyLists.get(i);
					
					if(i < buyLists.size()-1) {
						BuyDataBean compare = buyLists.get(i+1);
						compareId = compare.getBuy_id();
					}
			%>
		<table>
			<tr>
				<td width="150">번호</td>
				<td width="300">책이름</td>
				<td width="100">판매가격</td>
				<td width="50">수량</td>
				<td width="150">금액</td>
			</tr>
			<tr>
				<td align="center" width="150"><%=buyList.getBuy_id() %></td>
				<td width="300" align="left">
					<img src="../../imageFile/<%=buyList.getBook_image() %>"
					border="0" width="30" height="50" align="middle">
					<%=buyList.getBook_title() %>
				</td>
				<td width="100">\
					<%=NumberFormat.getInstance().format(buyList.getBuy_price()) %>
				</td>
				<td width="50"><%=buyList.getBuy_count() %></td>
				<td width="150">
				<%total += buyList.getBuy_count()*buyList.getBuy_price(); %>
				\<%=NumberFormat.getInstance().format(buyList.getBuy_count()*buyList.getBuy_price()) %>
				</td>
			</tr>
			<%
				if(buyList.getBuy_id() != compareId || i == buyLists.size()-1) {
			%>
			<tr>
				<td colspan="5" align="right">
					<b><font color="red">총금액 : \<%=NumberFormat.getInstance().format(total) %></b></font>
				</td>
			</tr>
		</table><br>
		<%
			compareId = buyList.getBuy_id();
			total = 0;
			
			} else {
		%>
		</td></tr></table><br>
		<%
			}
		}
		
		%>
		<input type="button" value="메인으로"
			onclick="javascript:window.location='shopMain.jsp'">
			<%
	}
	}
			%>
</body>
</html>