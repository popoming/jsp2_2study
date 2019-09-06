package mvjsp.chap13.service;

public class ServiceException extends Exception {
	
	public ServiceException(String message, Exception cause) {
		// TODO Auto-generated constructor stub
		super(message, cause);
	}
	
	public ServiceException (String message) {
		super(message);
	}
}
