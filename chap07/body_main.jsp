<%@ page contentType="text/html; charset=euc-kr" %>
<%
    request.setCharacterEncoding("euc-kr");
%>
<html>
    <head><title>INFO</title></head>
    <body>

        include 전 name 파라미터 값 : <%= request.getParameter("name") %>

        <hr>

        <jsp:include page="body_sub.jsp" flush="false" >
            <jsp:param name="name" value="포포밍" />
        </jsp:include>

    </hr>

    include 후 name 값 : <%= request.getParameter("name") %>
    </body>
</html>