<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>19장 <decorator:title /></title>
<style type="text/css" >
	#footer {color:red;}
</style>
	<decorator:head />
</head>
<body>
	상단 공통 메뉴
	<hr/>
	<decorator:body />
	<hr />
	<div id="footer">하단 내용</div>
</body>
</html>