<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원관리</title>
	<style>
	html, body 
	{
		background-color: #FCFDFF
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
			<table border="1" align="center" >
				<tr>
					<td>ID</td>
					<td>이름</td>
					<td>수정</td>
				</tr>
				<c:forEach var="map" items="${list}">
					<tr>
						<td>${map.US_ID}</td>
						<td>${map.US_NAME}</td>
						<td><input type="button" value="수정" onclick="location.href='${pageContext.request.contextPath}/user/patientupdate.do?id=${map.US_ID}'"/></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

</body>
</html>