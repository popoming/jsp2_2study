package mvjsp.chap21.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvjsp.mvc.command.CommandHandler;

public class HelloHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setAttribute("hello", "안녕하세요.");
		return "/WEB-INF/view/hello.jsp";
	}

}
