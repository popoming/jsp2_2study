<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="member.MemberInfo" />

<%
	member.setId("anwjr89");
	member.setName("포포밍");
%>
<jsp:forward page="/useObject.jsp" />