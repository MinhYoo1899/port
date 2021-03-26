<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<html>
<head>
	<meta charset="utf-8">
	<title>입력받은자료를 DB에 입력하기</title>
</head>
<body>
	<%

	String id = request.getParameter("txt01");      
	String password = request.getParameter("pss01");
	String nickname = request.getParameter("txt02");
	String name = request.getParameter("txt03");
	
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String addr3 = request.getParameter("addr3");
	String addr4 = request.getParameter("addr4");
	String address = addr1 + addr2 + addr3 + addr4; 
	
	String date = request.getParameter("txt06");
	
	String ph1 =  request.getParameter("txt07");
	String ph2 =  request.getParameter("txt08");
	String ph3 =  request.getParameter("txt09");
	String phone = ph1 + "-" + ph2 + "-" + ph3;
	
	String cell1 =  request.getParameter("txt10");
	String cell2 =  request.getParameter("txt11");
	String cell3 =  request.getParameter("txt12");
	String cellphone = ph1 + "-" + ph2 + "-" + ph3; 
	
	String eadd = request.getParameter("txt13");    
//	String doamin = request.getParameter("");
	String spam = request.getParameter("spam");
	String selectinfo = request.getParameter("selectinfo");
	String [] genre = request.getParameterValues("genre");
	
	String etca = "좋아하는 장르 : ";
	for (int i = 0; i < genre.length; i++) {       //체크박스 
	          etca = etca + genre[i];              //체크 한 만큼 찍어내기
	}

	//값이 입력이 되지 않았을 때 경우의 수 만들어 놓기 
	if (id == null || password == null || nickname == null || name == null || address == null || date == null || phone == null || cellphone == null || eadd == null) {  
	    throw new Exception ("누락된 데이터가 있습니다.");
	}
	
	Connection conn = null; 
	Statement stmt =  null;

	try {

	    Class.forName("com.mysql.jdbc.Driver");                                                             //db연결
	    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/portfolio","root","1234");  //pass =  1234 or fhaksyffl13

	    stmt = conn.createStatement();   //jjoin페이지에서 넘겨받은 자료를 db에 저장하기 

	   	int input = stmt.executeUpdate("insert into portfolio.client (id, password, nickname, name, address, date_birth, phone, cellphone, email, spam, selectinfo, etc) values ('" + id + "', '" + password + "', '" + nickname + "', '" + name + "', '" + address + "', '" + date + "', '" + phone + "', '" + cellphone + "', '" + eadd + "', '" + spam + "', '" + selectinfo + "', '" + etca + "');");
	   	//insert into portfolio.client (id,password,nickname,name,address,date,phone,cellphone,email,spam,selectinfo,etc) values ("12","12","12","12","12","12","12","12","12","12","12","12");
	   // resultset,executeQuery는 update문장 즉 수정할 때 사용 하는 문장, insert시에는 update를 활용 resultset대신에 어떤것을 활용해야 하는가? resultset 대신 int변수를 활용 
	  //  int row의 개수라서 int
	   	
/*	   	request.setAttribute("ID", id);                           //입력한 자료를 페이지를 넘겨서 확인해 보기 
   	    request.setAttribute("PASSWORD", password);
   	    request.setAttribute("NICKNAME", nickname);
   	    request.setAttribute("NAME", name);
   	    request.setAttribute("ADDRESS", address);
   	    request.setAttribute("DATE", date);
   	    request.setAttribute("PHONE", phone);
   	    request.setAttribute("CELLPHONE", cellphone);
   	    request.setAttribute("EMAIL", email);
   	    request.setAttribute("SPAM", spam);
   	    request.setAttribute("SELECTINFO", selectinfo); */
   	    
   	    } finally {
	        try {
              stmt.close();       //
	        } catch (Exception ignored) {
	        }
	        try{
             conn.close();
	        } catch (Exception ignored) {	        
	        } 
	        
   	    }

	RequestDispatcher dispatcher = request.getRequestDispatcher("portfolioindex01.jsp");
    dispatcher.forward(request, response);

	%>
</body>
</html>