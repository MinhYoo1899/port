<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<html>
<head>
	<meta charset="utf-8">
	<title>탈퇴(DB삭제)portfoliodel</title>
</head>
<body>
	<%
	 String id = request.getParameter("id");

	 Connection conn = null;
	 Statement stmt = null;

	 try {

	 Class.forName("com.mysql.jdbc.Driver");
	 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/portfolio", "root", "1234");

	if (conn == null)
	throw new Exception("데이터 베이스에 연결 할 수 없습니다.");
	
	stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select*from portfolio.client where id = '" + id + "';");
    
    if(rs.next()) {
    	
    	PreparedStatement delete = conn.prepareStatement("delete from portfolio.client where id = '" + id + "';");
    	delete.execute();
    
    } 
	 } catch (Exception e) {
    	e.printStackTrace();
    	
    } finally {
    	
		try {	
			if (conn != null) 
				conn.close();
		} catch (Exception e2) {
			e2.getStackTrace();
		}
	}
	 
	%>
</body>
</html>