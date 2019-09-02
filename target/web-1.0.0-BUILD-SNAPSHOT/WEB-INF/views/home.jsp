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
		background-color: #fff9ef
		}	
		
		div {
			height: 100%;
		}
	</style>
</head>
<body>
	<div>
		<div id="divNavigation" style="width: 100%; height: 20%;">
		</div><br />
		<div style="font-size : 100px; width: 100%; height: 20%; background-color: silver"><marquee scrollamount="10">가시는길까지 다하겠습니다.</marquee></div><br />
		<div>
			<div style="width: 68%; height: 50%; float: left"><img src=https://i.imgur.com/oQkZEB2.png></div>
			<div id="divLogin" style="width: 30%; height: 46%; float: right; background-image : https://i.imgur.com/yUlsJRT.png">
				<% if(session.getAttribute("S_ID") == null){ %>
					<input type="button" value="로그인" onclick="acyncMoveLogin()">
					<input type="button" value="회원가입" onClick="location.href='${pageContext.request.contextPath}/user/join.do'">
				<% } %>
			</div>
		</div>
	</div>

	<script>
		var sessionID = "<%=session.getAttribute("S_ID")%>"
		
		$(function(){
			if(sessionID != "null"){
				acyncMoveMaintain();
			}
			
			acyncChangeNavi_common();
		});
		
		function acyncMoveLogin() {

			// ajax option
			var ajaxOption = {
				url : "login.do",
				async : true,
				type : "GET",
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
		
		function acyncMoveMaintain() {
		
			// ajax option
			var ajaxOption = {
				url : "loginresult.do",
				async : true,
				type : "GET",
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
		
		function acyncChangeNavi_common() {
			
			// ajax option
			var ajaxOption = {
				url : "navigater_common.do",
				async : true,
				type : "GET",
				dataType : "html",
				cache : false
			};

			$.ajax(ajaxOption).done(function(data) {
				// Contents 영역 삭제
				$('#divNavigation').children().remove();
				// Contents 영역 교체
				$('#divNavigation').html(data);
			});
		}
	</script>
</body>
</html>