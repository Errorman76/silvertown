<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<img src='${pageContext.request.contextPath}/resources/img/category.jpg' width="100px" height="30px" /> ${map.US_AUTHORITY} <br/>
   	<img src='${pageContext.request.contextPath}/resources/img/name.jpg' width="100px" height="30px" /> ${map.US_NAME}<br/>
   	<img src='userimg.do' width="150px" height="150px" /><br/>
   	<input type="button" value="로그아웃" onclick="logout()"> 
	
	<script>
	var sessionAuthority = "<%=session.getAttribute("S_AUTHORITY")%>"
	
	$(function(){
		if(sessionAuthority == "ROLE_ADMIN"){
			acyncChangeNavi_admin();
		}
	});
	
	function acyncChangeNavi_admin() {
		
		// ajax option
		var ajaxOption = {
			url : "navigater_admin.do",
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
	
	function logout() {
		
		// ajax option
		var ajaxOption = {
			url : "login.do",
			async : true,
			type : "GET",
			dataType : "html",
			cache : false
		}
	
		$.ajax(ajaxOption).done(function(data) {
			// Contents 영역 삭제
			$('#divLogin').children().remove();
			// Contents 영역 교체
			$('#divLogin').html(data);
			
			acyncChangeNavi_common();
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