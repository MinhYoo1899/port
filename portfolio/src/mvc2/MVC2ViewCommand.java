package mvc2;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.DigitalDTO;
import mvc2DAO.ProductpageDAO;

public class MVC2ViewCommand implements MVC2Command {
	 
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	        // TODO Auto-generated method stub
	        String title = request.getParameter("title");
	        ProductpageDAO pdao = new ProductpageDAO();
	        
	        DigitalDTO ddto = pdao.oneselect(title);
	        
	        request.setAttribute("oneselect", ddto);
	    }
}
