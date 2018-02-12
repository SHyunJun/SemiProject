package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Index7Action implements CommandAction{
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		return "/index7.jsp";
	}
}
