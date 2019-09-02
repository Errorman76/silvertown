<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>처방페이지</title>
<style>
html, body 
 {
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
		<br>
		<div>

				<c:forEach var="map" items="${list}">
					<tr>
					<center>
						<div
				style="font-size: 1.5em; margin-left: 90px; width: 10%; height: 10%;  float: left">
						<td><a href="prescription.do?id=${map.PR_DISNAME}">${map.PR_DISNAME}</a></td>
					</div>
					</center>
					</tr>
				</c:forEach>
			</table>
			<!-- <div
				style="margin-left: 50px; width: 50%; height: 5%; border: 1px solid black; float: left">병명
				영역</div><br><br><br>
			<div
				style="margin-left: 50px; width: 50%; height: 5%; border: 1px solid black; float: left">병명
				영역</div><br><br><br>
			<div
				style="margin-left: 50px; width: 50%; height: 5%; border: 1px solid black; float: left">병명
				영역</div><br><br><br>
			<div
				style="margin-left: 50px; width: 50%; height: 5%; border: 1px solid black; float: left">병명
				영역</div><br><br><br>
			<div
				style="margin-left: 50px; width: 50%; height: 5%; border: 1px solid black; float: left">병명
				영역</div><br><br><br>
			<div
				style="margin-left: 50px; width: 50%; height: 5%; border: 1px solid black; float: left">병명
				영역</div><br><br><br> -->


		</div>
	</div>
</body>
</html>