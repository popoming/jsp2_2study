<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="euc-kr" %>
<%@ page import="java.util.Date" %>
<%
    Date now = new Date();
%>

<html>
    <head><title>현재 시간</title></head>
    <body>
        현재 시각 : 
        <%= now %>
    </body>
</html>