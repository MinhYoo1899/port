package mvcController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mvc.*;

public class ProductOneInterface implements ProductView{
	static ProductOneInterface impl = new ProductOneInterface();
	
	public static ProductOneInterface instance() {
		return impl;
	}
	
	@Override
	public String showData (HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String serial_number = request.getParameter("serial_number");
//		System.out.println(title+"inter");
		
		DigitalSelect model = DigitalSelect.instance();
		DigitalDTO ddto = model.oneselect(serial_number);
		request.setAttribute("DDTO", ddto);
		
		return "productViewTool.jsp";
	}
}