package mvc2Action;


import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mvc2VO.ActionForward;
import mvc.*;

public class ProductpageProAction implements Action{
	
	public ActionForward execute (HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		ActionForward forward = null;
//		DigitalDTO ddto = new DigitalDTO();
		ArrayList<DigitalDTO> gamelist = new ArrayList<DigitalDTO>();
		DigitalDTO ddto = new DigitalDTO();
		
		int page = 1;
		int limit = 10;
		
		if(request.getParameter("page") != null) {
			
			response.setContentType("text/html;charset=UTF-8");
			page = Integer.parseInt(request.getParameter("page"));
		}
		
//		boolean isSelectListSuccess1 = ProductpageListService.ProductpageProService(ddto);
		
		return forward;
	}

}
