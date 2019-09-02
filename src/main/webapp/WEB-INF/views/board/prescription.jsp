<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>처방법</title>
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

	

		<div style="margin-left: 450px; width: 20%; height: 20%;">
		<a href="${pageContext.request.contextPath}/"><img src=https://i.imgur.com/24t2iSj.jpg></a>
	</div>
	<div>
		<br>
		<div>
			<div
				style="font-size: 1.5em; margin-left: 150px; width: 25%; height: 45%; border: 1px solid black; float: left"><td>${map.PR_EXPLANATION}</td>
				</div><br><br><br><br>
		
			<div
				style="font-size: 1.5em; margin-left: 150px; width: 65%; height: 45%; border: 1px solid black; float: left"><td>${map.PR_CURE}</td></div><br>
		</div>
	</div>
</body>
</html>