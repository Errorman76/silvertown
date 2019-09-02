<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보수정</title>
	<style>
	html, body {
		
		height: 100%;
		background-color: #FCFDFF
	}
	
	div {
		height: 100%;
	
	}
	</style>
</head>
<body>
	<talble width="300" align="center"> 
		<div>
		<div style="margin-left: 450px; width: 20%; height: 20%	">
		<a href="${pageContext.request.contextPath}/"><img src=https://i.imgur.com/24t2iSj.jpg></a></div>
		<br><br><br><br><br><br>
		<form action="${pageContext.request.contextPath}/user/patientupdate.do" method="post">
			<div>
				<table border="1" align="center">
					<tr>
						<th>ID</th>
						<td><input type="text" name="id" value="${map.US_ID}" readonly="readonly"/></td>
					</div>
					</tr>
					<tr>
						<th>Name</th>
						<td>${map.US_NAME}</td>
					</tr>
					<tr>
						<th>Age</th>
						<td>${map.US_AGE}</td>
					</tr>
					<tr>
						<th>Disease</th>
						<td><input type="text" name="disease" value="${map.PA_DISEASE}" /></td>
					</tr>
					<tr>
						<th>Guardian</th>
						<td><input type="text" name="guardian" value="${map.US_GU_PA_ID}" /></td>
					</tr>
					</div>
					<img src='${pageContext.request.contextPath}/user/patientimg.do?id=${map.US_ID}' width="150px" height="150px" />
				</table>
				<textarea cols="100" rows="10" name="unique">${map.PA_UNIQUE}</textarea>
				<input type="submit" value="수정하기">
			</div>
		</form>
	</div>
	</talble>
</body>
</html>