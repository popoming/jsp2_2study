<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out</title>
</head>
<body>
<tf:out>
	<jsp:body><u>현재 시간</u>은 <b>${dateEL}</b> 입니다.</jsp:body>
</tf:out>

<br/>

<tf:out>
<%= new Date() %><u>현재 시간</u>은 <b>${dateEL}</b> 입니다.
</tf:out>
</body>
</html>