<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청사항쓰기</title>
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
	<form action="requestwrite.do" method="post">
	<div>
		<div style="margin-left: 450px;">
			<a href="${pageContext.request.contextPath}/"><img src=https://i.imgur.com/24t2iSj.jpg></a>
		</div>
		<br>
		<div>
			<div>
				<div
					style="font-size: 3em; margin-left: 150px; width: 50%; height: 25%; float: left">
					<select name="hero">
					
						<optgroup label="항목">
							<option  value="유지보수">유지보수</option>
							<option value="청결">청결</option>
							<option value="식사">식사</option>
							<option value="기타">기타</option>
						</optgroup>
					</select>
				</div>
			</div>
			
			<div
				style="font-size: 1.5em; margin-left: 150px; width: 19%; height: 5%; float: left">
				게시글 제목 <input name="title"></input><br />
			</div>
			<br>
			<br>
			<br>
			<br>

			<div
				style="font-size: 1.5em; margin-left: 150px; width: 59%; height: 30%; float: left">
				내용
				<textarea style="width: 130%; height: 150px" name="content"></textarea>
				<br />
			</div>
			<br/>

			<div
				style="position: absolute; right: 10px; bottom: 50px; margin-right: 20px; width: 15%; height: 5%; float: right">
				<input type="submit" value="글쓰기" />
			</div>
		</div>
	</div>
	</form>
</body>
</html>