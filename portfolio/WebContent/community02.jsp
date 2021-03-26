<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("utf-8"); %>
<%@ page import ="java.sql.*" %>
<%@ page import = "portfoliojava.*" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="index.css" type="text/css">
<meta charset="UTF-8">
<title>community02</title>
</head>
<body>
<%

String title = request.getParameter("title");
String writer = request.getParameter("writer");
String context = request.getParameter("context");
String date = request.getParameter("day");
String category = request.getParameter("category");

CommunityDTO cdto = new CommunityDTO();           
cdto.setTitle(title);
cdto.setWriter(writer);
cdto.setContext(context);
cdto.setDate(date);
cdto.setCategory(category);

CommunityDAO cdao = new CommunityDAO();
cdao.input(cdto);

response.sendRedirect("community03Main.jsp");

%>
</body>
</html>