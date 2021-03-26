<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<html>
<head>
	<meta charset="utf-8">
	<title>id중복체크 만들기 portfolioredundant01</title>
</head>
<body>
	<%
	String idcheck = request.getParameter("id"); //제대로 전송되었는지 out.println();문장으로 값을 확인 
	String result = null;  


	Connection conn = null; 
	Statement stmt =  null;

	try {

	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/portfolio", "root", "1234");

	if (conn == null)
	throw new Exception("데이터 베이스에 연결 할 수 없습니다.");
	
	stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select*from portfolio.client where id = '" + idcheck + "';"); //rs 안에 셀렉문에 대한 결과값이 존재
    out.println("select*from portfolio.client where id = '" + idcheck + "';");
    

    if (rs.next()){
    
        result = "중복된 아이디가 있습니다.aa"; 

    }else if(!rs.next()) {
                                                                 // rs안에 셀렉문 결과값이 있을경우    
       result = "해당 아이디를 사용하셔도 됩니다.bb";
        
    }                                                       //rs안에 셀렉문의 결과값이 없을경우 
                                                        
    
    
    request.setAttribute("IDCHECK", idcheck);
    request.setAttribute("RESULT", result);
    } finally {
      try {
      stmt.close();
    } catch (Exception ignored) {
    }
      try {
      conn.close();
    } catch(Exception ignored) {

    } 
    }
    RequestDispatcher dispatcher = request.getRequestDispatcher("redundant.jsp");
    dispatcher.forward(request, response); 
   
	%>
	
</body>
</html>