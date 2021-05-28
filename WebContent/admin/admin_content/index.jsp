<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<style>
	#top{
		height: 100px;/*상단 메뉴바 크기*/ 
		width: 100%;
		position: fixed;
		background-color: red;
		top: 0;
		left: 0;
	}
	#left{
		height:100%;
		width: 300px;
		position: fixed;
		top: 100px;
		left: 0px;
		background-color: gray;
	}
	#content {
		height:100%;
		width: 100%;
		position: fixed;
		top: 100px;
		left: 300px;
		background-color: white;
	}
</style>
</head>
<body>
<div id="top">
	<jsp:include page="${requestScope.top }"/>
</div>
<div id="content">
	<jsp:include page="${content }"/>
</div>
<div id="left">
	<jsp:include page="${requestScope.left }"/>
</div>
</body>
</html>