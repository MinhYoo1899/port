<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("utf-8"); %>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="community.css" type="text/css">
<meta charset="UTF-8">
<title>community01</title>
</head>
<body>
<form action="community02.jsp">
<section>
<table>
<tr>
<td>글쓰기 </td>
</tr>
<tr>
<td>제목</td> <td><input type="text" name="title" value=""/></td>
</tr>

<tr>
<td>작성자 </td> <td><input type="text" name="writer" value=""/></td>
</tr>

<tr>
<td>분류</td> <td><input type="text" name="category" value=""/></td>
</tr>

<tr>
<td>작성일</td> <td><input type="text" name="day" value=""/></td>
</tr>

<tr>
<td>내용</td><td><textarea name="context" rows=20 cols=30> </textarea> <br/></td>
</tr>

<tr>
<td><input type="submit" value="작성하기"></td> <td><a href="community03Main.jsp"><input type="button" value="취소"></a></td>
</tr>
</table>
</section>
</form>

</body>
</html>