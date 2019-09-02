<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.4.1.min.js"></script>
	<meta charset="UTF-8">
	<title>HOME</title>
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
		<input type="text" id="userid" placeholder="ID"> 
		<input type="password" id="userpw" placeholder="PW"> 
		<input type="button" value="로그인" onclick="acyncMoveLoginResult()">

	</div>

	<script>
	
		function acyncMoveLoginResult() {
			var allData = {
				"id" : $('#userid').val(),
				"pw" : $('#userpw').val()
			};

			// ajax option
			var ajaxOption = {
				url : "loginresult.do",
				async : true,
				type : "POST",
				data : allData,
				dataType : "html",
				cache : false
			};

			$.ajax(ajaxOption).done(function(data) {
				// Contents 영역 삭제
				$('#divLogin').children().remove();
				// Contents 영역 교체
				$('#divLogin').html(data);
			});
		}
	</script>
</body>
</html>