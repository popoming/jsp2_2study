<%@ page contentType="text/html; charset=euc-kr" %>
<html>
    <head><title>out 기본 객체 사용</title></head>
    <body>
        <%
            out.println("안녕하세요?");
        %>
        <br/>
        out 기본 객체를 사용
        <%
            out.println("출력한 결과입니다.");
        %>
    </body>
</html>