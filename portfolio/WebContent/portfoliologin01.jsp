<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="login.css" type="text/css">
	<title>LOG-IN</title>
</head>
<body>
	<form name="login" action="portfoliologinback01.jsp">
	<table>
	<tr><td>
	<h3>로그인</h3>
	</td>
	</tr>
	<tr>
	<td>ID :</td>
	<td><input type="text" name="id"> <br></td>
	</tr>
	<tr>
	<td>
	PASSWORD :
	</td>
	<td> 
	<input type="password" name="pass"> 
	</td>
	</tr>
	<tr>
	<td><input type="submit" name="로그인" value="로그인"></td>
	<td><input type="button" name="cancel" value="취소"></td>
	</tr>
	<tr>
	<td>
	회원가입이 안되어 있다면 회원가입 하기를 눌러 주세요. <a href="portfoliojjoinjsp01.jsp">회원가입하기</a>
	</td>
	</tr>	  
	</table>
	
	</form>
</body>
</html>