package mvjsp.chap02;

import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.servlet.*;
import java.io.*;
import java.util.*;

@WebServlet(urlPatterns = "/now")
public class NowServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException {
        response.setContentType("text/html; charset=euc-kr");
        Date now = new Date();

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<head><title>현재 시간</title></head>");
        writer.println("<body>");
        writer.println("서블릿 생성 현재 시간: ");
        writer.println(now.toString());
        writer.println("</body>");
        writer.println("</html>");

        writer.close();
    }
}