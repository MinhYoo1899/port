package mvc2;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.DigitalDTO;
import mvc2DAO.ProductpageDAO;

public class MVC2ListCommand implements MVC2Command{
	
	 @Override
	    public void execute(HttpServletRequest request, HttpServletResponse response) {
	        // TODO Auto-generated method stub
		 ProductpageDAO pdao = new ProductpageDAO();
	        ArrayList<DigitalDTO> glist = pdao.selectList();
	        
	        request.setAttribute("list", glist);
	    }
}
