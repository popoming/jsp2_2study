<%@ page import = "java.net.URLEncoder" %>
<%@ page pageEncoding="euc-kr" %>
<%
    Strinig value = "자바";
    String encodedValue = URLEncoder.encode(value, "euc-kr");
    response.sendRedirect("/chap03/index.jsp?name=" + encodedValue);
%>