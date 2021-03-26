package mvcController;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mvc.*;

public class ProductInterface implements ProductView {
	
	static ProductInterface impl = new ProductInterface();
	
	public static ProductInterface instance() {
		// TODO Auto-generated method stub
		return impl;
	}
	
	@Override
	public String showData (HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		DigitalSelect model = DigitalSelect.instance();
		List<DigitalDTO> list = model.selectproduct();
		request.setAttribute("LIST", list);
		
		return "productCyberpunk2077.jsp";
	}
}
