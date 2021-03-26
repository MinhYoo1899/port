package mvcController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface ProductView {
	
	String showData(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
