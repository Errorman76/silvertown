<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청목록</title>
<style>
html, body {
	background-color: #FCFDFF
}

/* padding-bottom	: 50px;
	background-image: url('https://i.imgur.com/QAyOTQa.jpg');
	 */
div {
	height: 100%;
}
</style>

</head>
<body>
	<div style="margin-left: 450px; width: 20%; height: 20%;">
		<a href="${pageContext.request.contextPath}/"><img src=https://i.imgur.com/24t2iSj.jpg></a>
	</div>
	<br/>
	<div>
		<br/><br/>
		<div style="position: absolute; left: 200px; margin-right: 20px; width: 15%; height: 5%; float: left">
			<a href="${pageContext.request.contextPath}/board/requestwrite.do">글쓰기</a>
		</div>
		<br/><br/>
		
		<center>
			<div style="color: white; margin-left: 150px; width: 10%; height: 10%; border: 1px solid black; float: left; background-color: black">
				<h3>카테고리</h3>
			</div>
			<div style="color: white; margin-left: 5px; width: 50%; height: 10%; border: 1px solid black; float: left; background-color: black">
				<h3>타이틀</h3>
			</div>
			<div style="color: white; margin-left: 5px; width: 20%; height: 10%; border: 1px solid black; float: left; background-color: black">
				<h3>ID</h3>
			</div>
			<br/><br/><br/>
		</center>

		<c:forEach var="map" items="${list}">
			<center>
				<div style="margin-left: 150px; width: 10%; height: 10%; border: 1px solid black; float: left">
					<h3>${map.RE_CATEGORY}</h3>

				</div>
				<div style="margin-left: 5px; width: 50%; height: 10%; border: 1px solid black; float: left">
					<a href="request.do?id=${map.RE_NUM}"><h3>${map.RE_TITLE}</h3></a>
					
				</div>
				<div style="margin-left: 5px; width: 20%; height: 10%; border: 1px solid black; float: left">
					<h3>${map.US_RE_ID}</h3>
				</div>
				<br> <br> <br>

			</center>
		</c:forEach>

	</div>


</body>
</html>