<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import = "portfoliojava.*" %>
<!DOCTYPE html>
<html>
<head>
<%request.setCharacterEncoding("utf-8"); %>
<meta charset="UTF-8">
<title>UPDATE02</title>
</head>
<body>
<%
int numbering = Integer.parseInt(request.getParameter("numbering"));
String title = request.getParameter("title");
String writer = request.getParameter("writer");
String context = request.getParameter("context");
String date = request.getParameter("day");
String category = request.getParameter("category");

CommunityDTO cdto = new CommunityDTO();
cdto.setNumbering(numbering);
cdto.setCategory(category);
cdto.setDate(date);
cdto.setWriter(writer);
cdto.setTitle(title);
cdto.setContext(context);

CommunityDAO cdao = new CommunityDAO();
cdao.update(cdto);

response.sendRedirect("community03Main.jsp");
%>
</body>
</html>