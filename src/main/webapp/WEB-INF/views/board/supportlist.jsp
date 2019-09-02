<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후원목록</title>
<style>
html, body {
	background-color: #FCFDFF
}

{
	height: 100%;
	overflow: hidden
}

div {
	height: 100%;
}
</style>
</head>
<body>

	<div>
		<div style="font-size: 1.5em; margin-left: 450px; width: 20%; height: 20%;">
		<a href="${pageContext.request.contextPath}/"><img src=https://i.imgur.com/Xcf1gKO.jpg></a>
	</div>
		<div>
		<c:forEach var="map" items="${list}">
		<center>
			<div
				style="margin-left: 50px; width: 30%; height: 5%; border: 1px solid black; float: left">
				<h3>${map.CO_SUPPORT}원</h3></div>
			<div
				style="margin-left: 10px; width: 15%; height: 5%; border: 1px solid black; float: left">
				<h3>${map.US_CO_ID}</h3></a></div>
			
		</c:forEach>

			<br><br><br>
			<div
				style="position:absolute; left:10px; bottom: 100px; margin-left: 400px; width: 35%; height: 5%; float: left">
				<a href="${pageContext.request.contextPath}/board/support.do">	<input type="submit" value="후원하기" /></a>
				</div>
				
			<center>
			
		</div>
	</div>
</body>
</html>