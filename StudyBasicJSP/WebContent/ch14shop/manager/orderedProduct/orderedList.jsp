<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "ch14.bookshop.shopping.BuyDataBean" %>
<%@ page import = "ch14.bookshop.shopping.BuyDBBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.NumberFormat" %>
<%@ include file = "../../etc/color.jspf" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Shopping mall</title>
<link href="../../etc/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
	table {
		border-collapse: collapse;
	}
	.order_table {
		width: 1000px;
	}
	th {
		background-color: 
	}
</style>
</head>
<body bgcolor="<%=bodyback_c %>">
<%
	String buyer = (String)session.getAttribute("id");
	
	List<BuyDataBean> buyLists = null;
	BuyDataBean buyList = null;
	int count = 0;
	
	BuyDBBean buyProcess = BuyDBBean.getInstance();
	count = buyProcess.getListCount();
	
	if(count == 0) {
%>
	<h3><b>주문목록</b></h3>
	
	<table>
		<tr>
			<td>
				구매목록이 없습니다.
			</td>
		</tr>
	</table>
	<a href="../managerMain.jsp">관리자 메인으로</a>
<%
	} else {
		buyLists = buyProcess.getBuyList();
%>
	<h3><b>주문목록</b></h3>
		<a href="../managerMain.jsp">관리자 메인으로</a>
	<table class="order_table" border="1">
		<tr>
			<th>주문번호</th>
			<th>주문자</th>
			<th width="200">책이름</th>
			<th >주문가격</th>
			<th >주문수량</th>
			<th>주문일</th>
			<th >결제계좌</th>
			<th width="50">주문자</th>
			<th >배송지전화</th>
			<th >배송지주소</th>
			<th width="50">배송상황</th>
		</tr>
<%
	for(int i=0; i<buyLists.size(); i++) {
		buyList = (BuyDataBean)buyLists.get(i);
%>
	<tr>
		<td><%=buyList.getBuy_id() %></td>
		<td><%=buyList.getBuyer() %></td>
		<td><%=buyList.getBook_title() %></td>
		<td><%=buyList.getBuy_price() %></td>
		<td><%=buyList.getBuy_count() %></td>
		<td><%=buyList.getBuy_date().toString() %></td>
		<td><%=buyList.getAccount() %></td>
		<td><%=buyList.getDeliveryName() %></td>
		<td><%=buyList.getDeliveryTel() %></td>
		<td><%=buyList.getDeliveryAddress() %></td>
		<td><%=buyList.getSanction() %></td>
	</tr>
	<%} %>
	</table>
	<%} %>
</body>
</html>