<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page isErrorPage = "true" %>
<html>
    <head><title>���� �߻�</title></head>
    <body>
        ��û ó�� �������� ������ �߻��Ͽ����ϴ�.<br/>
        ���� �ð� ���� ������ �ذ��ϵ��� �ϰڽ��ϴ�.
        <p>
        ���� Ÿ�� : <%= exception.getClass().getName() %> <br/>
        ���� �޽��� : <b><%= exception.getMessage() %></b> <br/>
        
    </body>
</html>