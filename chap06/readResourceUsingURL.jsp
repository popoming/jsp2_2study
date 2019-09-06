<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URL" %>
<html>
    <head><title>application 기본 객체 사용하여 자원 읽기2</title></head>
    <body>
        <%
            String resourcePath = "/message/notice/notice.txt";

            BufferdReader br = null;
            char[] buffer = new char[512];
            int len = -1;

            try {
                URL url = application.getResource(resourcePath);

                br = new BufferdReader(new InputStreamReader(url.openStream()));

                while((len = br.read(buff)) != -1) {
                    out.println(new String(buff, 0, len));
                }
            } catch (IOException ex) {
                out.println("익셉션 발생 : " + ex.getMessage());
            } finally {
                if (br != null) try { br.close(); } catch (IOException ex) {}
            }
        %>
    </body>
</html>