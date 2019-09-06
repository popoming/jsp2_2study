<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="errorView.jsp" %>
<%@ page import="mvjsp.chap13.model.Message" %>
<%@ page import="mvjsp.chap13.service.WriteMessageService" %>

<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="message" class="mvjsp.chap13.model.Message">
	<jsp:setProperty name="message" property="*" />
</jsp:useBean>
<%
	WriteMessageService writeMessageService = WriteMessageService.getInstance();
	writeMessageService.write(message);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 메시지 남김</title>
</head>
<body>
방명록에 메시지를 남겼습니다.
<br/>
<a href="list.jsp">[목록 보기]</a>
</body>
</html>