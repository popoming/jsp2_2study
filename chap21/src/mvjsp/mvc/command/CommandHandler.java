/**
 * 
 */
package mvjsp.mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author starcrash
 *	커맨드 패턴 인터페이스로 구현
 */
public interface CommandHandler {
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable;
}
