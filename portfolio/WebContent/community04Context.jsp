<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="portfoliojava.*" %>
<%@ page import="java.util.ArrayList" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="community.css" type="text/css">
<meta charset="UTF-8">
<title>Context</title>
</head>
<body>
<%
//넘겨받은 title 정보를 이용하여 글의 정보 출력하기 제목 작성자 내용

int numbering = Integer.parseInt(request.getParameter("numbering"));
String title = null;
// System.out.println(title);
String context = null;
String write_day = null;
String category = null;
String writer = null;

CommunityDTO cdto = new CommunityDTO();
CommunityDAO cdao = new CommunityDAO();
cdto = cdao.oneselect(numbering);

title = cdto.getTitle();
category = cdto.getCategory();
write_day = cdto.getWrite_day();
writer = cdto.getWriter();
context = cdto.getContext();
numbering = cdto.getNumbering();

//out.println("<table><tr><td>제목</td></tr><tr><td>작성자</td></tr></table>");
%> 
<table border="1" id="communitytable" cellspacing="0">
<tr id="topline">
<td>제목</td><td colspan="3"><%out.println(title);%></td>
</tr>
<tr>
<td>작성자</td><td><%out.println(writer);%></td>
<td>작성일</td><td><%out.println(write_day);%></td>
</tr>
<tr>
<td colspan="6"><%out.println(context);%></td>
</tr>
<tr>
<td></td>
<td>
<a href="community03Main.jsp"><input type="button" name="" value="목록으로"></a>
<a href="community06Update.jsp?numbering=<%out.println(numbering);%>"> <input type="button" value="수정하기"></a>
<a href="community05Delete.jsp?numbering=<%out.println(numbering);%>"> <input type="button" value="삭제하기"></a> 
</td>
</tr>
</table>
</body>
</html>