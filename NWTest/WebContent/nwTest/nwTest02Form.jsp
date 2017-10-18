<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네트워크 테스트 2번 폼</title>
<style type="text/css">
	div {
		width: 550px;
		margin: 0 auto;
	}
	.btn {
		margin-left: 200px;
	}
	
	
</style>
</head>
<body>
<div>
	<h2>개인 정보 조회</h2>
	<form method="post" action="nwTest02Pro.jsp">
		<fieldset>
		<legend>로그인</legend>
			<label id="name">아이디</label>
			<input type="text" name="id"><br>
			
			<label id="name">비밀번호</label>
			<input type="password" name="passwd"><br>
		</fieldset>
		
		<fieldset>
		<legend>개인정보</legend>
			<label id="name">이름</label>
			<input type="text" name="name"><br>
			
			<label id="sex">성별</label> &nbsp;
			남<input type="radio" name="gender" value="남자">
			여<input type="radio" name="gender" value="여자"><br>
			
			<label id="hobby">취미</label> &nbsp;
			독서<input type="checkbox" name="hobby" value="독서">
			음악감상<input type="checkbox" name="hobby" value="음악감상">
			영화감상<input type="checkbox" name="hobby" value="영화감상">
			등산<input type="checkbox" name="hobby" value="등산">
			여행<input type="checkbox" name="hobby" value="여행">
		</fieldset>
			<input type="submit" value="가입하기" class="btn">
			<input type="reset" value="다시작성"><br>
	</form>
</div>
</body>
</html>