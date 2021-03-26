package mvcController;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProductController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		
		
		try {
			if (command.equals("cyberpunk2077")) {
				ProductInterface inter = ProductInterface.instance();
				String showdata = inter.showData(request, response);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher(showdata);
				dispatcher.forward(request, response);
				
			} else if (command.equals("ko")) {
				ProductListInterface pli = ProductListInterface.instance();
				String showdata = pli.showData(request, response);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher(showdata);
				dispatcher.forward(request, response);
			
			} else if (command.equals("jinusuke")) {
				ProductOneInterface poi = ProductOneInterface.instance();
				String showdata = poi.showData(request, response);
				String serial_number = request.getParameter("serial_number");			
//				System.out.println(title + "con");
				
				serial_number = poi.showData(request, response);
								
				RequestDispatcher dispatcher1 = request.getRequestDispatcher(showdata);
				dispatcher1.forward(request, response);
			}
		} catch (Exception e) {
			 // TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}