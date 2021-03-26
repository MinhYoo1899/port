<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import = "portfoliojava.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="index.css" type="text/css">
<meta charset="UTF-8">
<title>Update 무야호~</title>
</head>
<body>
<%
int numbering = Integer.parseInt(request.getParameter("numbering"));

String title = null;
String context = null;
String date = null;
String category = null;
String writer = null;

out.println(numbering);
CommunityDAO cdao = new CommunityDAO();
CommunityDTO cdto = new CommunityDTO();

cdto = cdao.oneselect(numbering);
title =cdto.getTitle();
context = cdto.getContext();
date = cdto.getDate();
category = cdto.getCategory();
writer = cdto.getWriter();
%>

<form action="community07Update_Send.jsp?numbering=<% out.println(numbering); %>" method="post">
<table>
<tr>
<td>글 수정하기 </td> <td>글 번호 : <input type="text" name="numbering" value="<% out.println(numbering); %>" readonly> </td>
</tr>
<tr>
<td>제목</td> <td><input type="text" name="title" value="<% out.println(title);%>"/></td>
</tr>

<tr>
<td>작성자 </td> <td><input type="text" name="writer" value="<% out.println(writer);%>"/></td>
</tr>

<tr>
<td>분류</td> <td><input type="text" name="category" value="<% out.println(category);%>"/></td>
</tr>

<tr>
<td>작성일</td> <td><input type="text" name="day" value="<% out.println(date);%>"/></td>
</tr>

<tr>
<td>내용</td><td><textarea name="context" rows=20 cols=30><% out.println(context);%></textarea> <br/></td>
</tr>

<tr>
<td><input type="submit" value="수정하기"></td> <td><a href="community03Main.jsp"><input type="button" value="취소"></a></td>
</tr>
</table>
</form>
</body>
</html>