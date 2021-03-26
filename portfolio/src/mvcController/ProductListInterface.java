package mvcController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.DigitalDTO;
import mvc.DigitalSelect;

public class ProductListInterface implements ProductView{
	static ProductListInterface impl = new ProductListInterface();
	
	public static ProductListInterface instance() {
		// TODO Auto-generated method stub
		return impl;
	}
	
	@Override
	public String showData (HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		DigitalSelect model = DigitalSelect.instance();
		List<DigitalDTO> list = model.selectproduct();
		request.setAttribute("LIST", list);
		
		return "productsList.jsp";
	}
}
