<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="util.CookieBox" %>
<%
    response.addCookie(CookieBox.createCookie("name", "포포밍"));
    response.addCookie(CookieBox.createCookie("id", "starcrash", "/chap09", -1));
%>
<html>
    <head><title>CookieBox 사용예</title></head>
    <body>
        CookieBox를 사용하여 쿠키 생성
    </body>
</html>