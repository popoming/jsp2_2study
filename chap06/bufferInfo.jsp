<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page buffer="8kb" autoFlush="false" %>
<html>
    <head><title>���� ����</title></head>
    <body>

        ���� ũ�� : <%= out.getBufferSize() %> <br/>
        ���� ũ�� : <%= out.getRemaining() %> <br/>
        auto Flush : <%= out.isAutoFlush() %> <br/>
         
    </body>
</html>