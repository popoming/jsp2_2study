<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mvjsp.chap16.Member" %>
<%@ page import="java.util.HashMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Member member = new Member();
	HashMap<String, String> pref = new HashMap<String, String>();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<c:set var="member" value="<%= member %>" />
<c:set target="${member}" property="name" value="포포밍" />

<c:set var="pref" value="<%= pref %>" />
<c:set var="favoriteColor" value="#{pref.color}" />

회원 이름 : ${member.name},
좋아하는 색 : ${favoriteColor}

<br/>
<c:set target="${pref}" property="color" value="red" />

설정 이후 좋아하는 색 : ${favoriteColor}
</body>
</html>