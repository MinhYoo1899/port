<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<html>
<head>
	<meta charset="utf-8">
	<title>login-background</title>
</head>
<body>
	<%
	String id = request.getParameter("id");      
	String password = request.getParameter("pass");

	if (id == "" || password == "") {
		throw new Exception ("아이디 또는 비밀번호를 입력해 주세요.");
	}

	Connection conn = null;
	Statement stmt = null;

	try {

	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/portfolio", "root", "1234"); //1234 or fhaksyffl13

	if (conn == null)
	throw new Exception("데이터 베이스에 연결 할 수 없습니다.");
	
	stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select * from portfolio.client where id = '" + id + "' and password = '" + password + "';");
    
    if (!rs.next())
    throw new Exception("아이디 또는 비밀번호가 일치하지 않습니다.");

    String nick = rs.getString("nickname");

      request.setAttribute("NICK", nick);

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

    RequestDispatcher dispatcher = request.getRequestDispatcher("portfolioindex02.jsp");
    dispatcher.forward(request, response);

	%>
</body>
</html>