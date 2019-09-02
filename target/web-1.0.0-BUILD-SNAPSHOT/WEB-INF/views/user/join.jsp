<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<style>
	html, body {
		height: 100%;
		overflow: hidden
	}
	
	div {
		height: 100%;
		border: 1px dotted red
	}
	</style>
</head>
<body>

	<div>
		<div style="margin-left: 10px; width: 30%; height: 20%; background-color: red">
			회원가입 영역
		</div><br>
		<form action="join.do" method="post" enctype="multipart/form-data">
			<div>
				<div style="margin-left: 50px; width: 10%; height: 5%; float: left">
					<input type="text" name="id" placeholder="아이디 입력">
				</div><br><br><br>
				<div style="margin-left: 50px; width: 10%; height: 5%; float: left">
					<input type="password" name="pw" placeholder="비밀번호 입력">
				</div><br><br><br>
				<div style="margin-left: 50px; width: 10%; height: 5%; float: left">
					<input type="text" name="name" placeholder="이름 입력">
				</div><br><br><br>
				<div style="margin-left: 50px; width: 10%; height: 5%; float: left">
					<input type="text" name="age" placeholder="나이 입력">
				</div><br><br><br>
				<div style="margin-left: 50px; width: 10%; height: 5%; float: left">
					<input type="file" name="picture">
				</div><br><br><br>
				<div style="margin-left: 50px; width: 10%; height: 5%; float: left">
					<input type="text" name="phone" placeholder="연락처">
				</div><br><br><br>
				<div style="margin-left: 50px; width: 20%; height: 20%; float: left">
					<input type="radio" name="division" value=0 checked="checked">환자
					<input type="radio" name="division" value=1>보호자
				</div><br><br><br>
				<div>
					<input type="submit" value="회원가입" />
				</div><br><br><br>
			</div>
		</form>
	</div>
</body>
</html>