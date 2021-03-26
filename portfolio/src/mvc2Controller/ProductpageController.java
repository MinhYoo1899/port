package mvc2Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc2.*;


@WebServlet("*.ko")
public class ProductpageController extends javax.servlet.http.HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public ProductpageController () {
		super();
	}
	
	 protected void koGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        // TODO Auto-generated method stub
	        System.out.println("koGet");
	        
	        koAction(request, response);
	    }
	 
	    /**
	     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	     */
	    protected void koPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        // TODO Auto-generated method stub
	        System.out.println("koPost");
	        koAction(request, response);
	    }
	 
	    private void koAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        // TODO Auto-generated method stub
	        System.out.println("koAction");
		    request.setCharacterEncoding("UTF-8");  //한글깨짐처리
		    
		    String viewPage = null;                 // 어떤 View 페이지로 보여줄지를 담는 변수
	                                                // 웹에서 어떤 로직을 수행할지를 결정해주는 Command객체 -> 유지보수 및 관리를 위한 분산 처리
                            	                    // 동일한 MVC2Command 라는 인터페이스를 이용하여 동일한 메소드를 통해 각자 알맞은 로직을 수행하게 만들기위한 객체.	       
		    MVC2Command command = null;
	        
	        String requestUri = request.getRequestURI();
	        String contextPath = request.getContextPath();
	        String commandName = viewPage.substring(contextPath.length());
		    
		    if (commandName.equals("list.ko")) {
		    	command = new MVC2ListCommand();
		    	viewPage = "productsList.jsp";		    	
		    
		    } else if (commandName.equals("select.ko")){
		    	command = new MVC2ViewCommand();
		    	viewPage = "productViewTool.jsp";
		    } else {
		    	 System.out.println("해당 Command 로직이 없습니다.");
		            viewPage = "notCommand.jsp";
		    }
		    
		    // RequestDispatcher 객체에다가 어떤 View 페이지로 보낼지 맵핑할 곳을 담는다.
	        RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	        // 해당 페이지로 포워딩해준다. --> *.do로 받으면 다시 BFrontController로 가서 로직 수행.
	        // .jsp 로 받으면 해당 View로 화면을 보여준다.
	        dispatcher.forward(request, response);
	        }    
	   
}