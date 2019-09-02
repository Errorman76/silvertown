<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후원하기</title>
<style>
html, body {
	background-color: #FCFDFF
}

{
height:100%;
overflow:
hidden
}
div {
	height: 100%;
}
</style>
</head>
<body>
<form action="support.do" method="post">
	<div>
		<div style="margin-left: 450px; width: 20%; height: 20%;">
			<img src=https://i.imgur.com/Xcf1gKO.jpg>
		</div>
		<br> <br> <br>

		<div
			style="font-size: 1.5em; margin-left: 150px; width: 19%; height: 5%;  float: left">
			<input type="text" name="support">후원하기</input>
		</div>

		<div
			style="font-size: 1.5em; margin-left: 10px; width: 19%; height: 5%;  float: left">
			<input type="text" name="title">제목</input>
		</div><br><br><br>
		
		<div
			style="font-size: 1.5em; margin-left: 100px; width: 70%; height: 150%; float: left">
			<textarea style="width: 130%; height: 150px" name="comment">내용</textarea>
		</div>
		<br> <br>


		<div
			style="position: absolute; right: 10px; bottom: 50px; margin-right: 20px; width: 15%; height: 5%; float: right">
		<input type="submit"  value="후원하기"></input></div>
	</div>
</form>
</body>
</html>