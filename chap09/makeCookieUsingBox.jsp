<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="util.CookieBox" %>
<%
    response.addCookie(CookieBox.createCookie("name", "������"));
    response.addCookie(CookieBox.createCookie("id", "starcrash", "/chap09", -1));
%>
<html>
    <head><title>CookieBox ��뿹</title></head>
    <body>
        CookieBox�� ����Ͽ� ��Ű ����
    </body>
</html>