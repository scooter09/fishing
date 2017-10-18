<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네트워크 테스트 1번 폼</title>
<style type="text/css">
	div {
		width: 550px;
		margin: 0 auto;
	}
	.btn {
		margin-left: 200px;
	}
	fieldset input {
		float: right;
		margin-right: 100px;
		margin-bottom: 5px;	
	}
	fieldset label {
		float: left; 
		margin-left: 120px;
	}
	
</style>
</head>
<body>
<div>
	<h2>회원 가입</h2>
	<form method="post" action="nwTest01Pro.jsp">
		<fieldset>
		<legend>로그인</legend>
			<label id="id">아이디</label>
			<input type="text" name="id"><br>
			
			<label id="passwd">비밀번호</label>
			<input type="password" name="passwd"><br>
			
			<label id="passwd2">비밀번호확인</label>
			<input type="password" name="passwd2"><br>
		</fieldset>
		<fieldset>
		<legend>개인정보</legend>
			<label id="name">이름</label>
			<input type="text" name="name"><br>
			
			<label id="email">메일</label>
			<input type="text" name="email"><br>
			
			<label id="phone">연락처</label>
			<input type="text" name="phone"><br>
			
			<label id="address">주소</label>
			<input type="text" name="address"><br>
		</fieldset>
			<input type="submit" value="가입하기" class="btn">
			<input type="reset" value="다시작성"><br>
	</form>
</div>
</body>
</html>