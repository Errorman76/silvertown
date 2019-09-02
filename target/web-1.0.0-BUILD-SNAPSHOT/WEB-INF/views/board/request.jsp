<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청사항내용</title>
<style>
html, body {
	background-color: #FCFDFF
}

div {
	height: 100%;
	
}
</style>
</head>
<body>

	<form action="request.do" method="post">
		
		
	
	</form>


	<div>
		<div style="margin-left: 450px; ">
			<a href="${pageContext.request.contextPath}/"><img src=https://i.imgur.com/24t2iSj.jpg></a> 
		</div>
		<br><br>
		<div>
			<div
				style="margin-left: 150px; width:  float: left; font-size: 1.5em">
				카테고리 : <td>${map.RE_CATEGORY} </td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				게시글 제목 : <td>${map.RE_TITLE}</td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				작성자 : <td>${map.US_RE_ID}</td>
				</div><br><br>
			
				<div
				style="font-size: 1.5em; margin-left: 150px; width: 1200px; height: 150px; float: left; border : 1px solid black;">
				<td>${map.RE_COMMENT}</td><br/></div><br>
			
			
			<div
				style="position: absolute; right: 10px; bottom: 50px; margin-right: 20px; width: 15%; height: 5%; float: right">
				<a href="${pageContext.request.contextPath}/board/requestlist.do">목록으로</a>
			</div>
		</div>
	</div>
</body>
</html>