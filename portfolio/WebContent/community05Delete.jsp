<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import = "portfoliojava.*" %>
<!DOCTYPE html>
<html>
<head>
<%request.setCharacterEncoding("utf-8"); %>
<meta charset="UTF-8">
<title>Delete</title>
</head>
<body>
<%
int numbering = Integer.parseInt(request.getParameter("numbering"));
out.println(numbering);

CommunityDAO cdao = new CommunityDAO();
cdao.delete(numbering);
%>

<%response.sendRedirect("community03Main.jsp");%>

</body>
</html>