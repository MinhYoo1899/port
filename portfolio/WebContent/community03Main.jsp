<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.*" %>
<%@ page import="portfoliojava.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="community.css" type="text/css">
<% request.setCharacterEncoding("utf-8"); %>
<meta charset="UTF-8">
<title>Board</title>
</head>
<script>
	$(function() {
		$('#hiddenmenu').hide();
	});

	$(function() {
		$('#menu > article').mouseover(function() {
			$(this).addClass('hover');
		});
	}); 

	$(function() {
		$('#menu > article').mouseout(function() {
			$(this).removeClass('hover');
		});
	});

	$(function() {
		$('#perinfo > article').mouseover(function() {
			$(this).addClass('hover');
		});
	}); 

	$(function() {
		$('#perinfo > article').mouseout(function() {
			$(this).removeClass('hover');
		});
	});
</script>

<body>
     <nav id="navi">
		<div id="menu">
			<article> <a href="webb.do?command=ko">  스토어  </a></article>
			<article> <a href="community03Main.jsp"> 커뮤니티</a> </article>
			<article> 고객센터 </article>
		</div>

		<div id="perinfo">
			<article> <img src= "qwer\asdf\search.png" width="30" height="30"></article>
			<article> <input type="text" name="aaa" id="search"> </article>
			<article> 찜한상품 </article>
			<article> 장바구니 </article>
			<article> <a href="portfoliojjoinjsp01.jsp"> 회원가입  </a></article>
			<article> <a href="portfoliologin01.jsp"> 로그인  </a></article>
		</div>
	</nav>
	
<section>
<jsp:useBean id="board" class="portfoliojava.CommunityDAO" scope="page" />
<% ArrayList <CommunityDTO> boardlist = board.selectboard(); %>
<%= boardlist.size() %>
<%//날짜 카테고리 제목 글쓴이  객체이름 맞추기 : numbering comtitle writer_id comcontext comcategory wrtite_day%>

<table border="1" id="communitytable" cellspacing="0">
<tr id="topline">
<td>날짜</td><td>카테고리</td><td>제목</td><td>글쓴이</td>
</tr>

<%
CommunityDTO cdto = new CommunityDTO();

for (int i=0; i<boardlist.size(); i++) { //int i=boardlist.size(); i < boardlist.size(); i-- desc
	
	cdto = boardlist.get(i);

	int numbering = cdto.getNumbering();
	String title = cdto.getTitle();
	String writer = cdto.getWriter();
	String context = cdto.getContext();
	String write_day = cdto.getWrite_day();
	String category = cdto.getCategory();
	
	out.println("<tr><td>" + write_day + "</td><td>" + category + "</td><td><a href = 'community04Context.jsp?numbering="+numbering+"'>" + title + "</td><td>" + writer + "</td></tr>");
}
%>
<tr>
<td colspan="3"></td>
<td>
<a href="community01Write.jsp"><input type="button" name="" value="글쓰기"></a>
</td></tr>
</table>
</section>

</body>
</html>