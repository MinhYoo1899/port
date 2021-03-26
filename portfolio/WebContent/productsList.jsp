<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import = "mvc.*" %>
<%@ page import = "mvcController.*" %>
<%@ page import = "mvcMybatis.*" %>
<%@ page import="java.util.List" %>
<html>
<head>
<meta charset="UTF-8">
<title>All Products</title>
</head>
<body>
<form>
<%
DigitalSelect dise = DigitalSelect.instance();
DigitalDTO ddto = new DigitalDTO();

List<DigitalDTO> list = (List<DigitalDTO>)request.getAttribute("LIST");

String serial_number = null;
String type = null;
String title = null;
String developer = null;
String tags = null;
String publisher = null;
String release_date = null;
int price;
String plattform = null;

String explain = null; // text 홍보영상사진 바로 밑
String advert = null;  // text 상세홍보

String lang_VoiceOver = null;
String lang_TextOnly = null;

int ratings_Critic;
int ratings_Users;

String specification_Minium_OS = null;
String specification_Minium_Processor = null;
String specification_Minium_Memory = null;
String specification_Minium_Graphics = null;
String specification_Storage = null;
String 	specification_Recomended_OS = null;
String specification_Recomended_Processor = null;
String specification_Recomended_Memory = null;
String specification_Recomended_Graphics = null;

String copyright = null;

for (int i=0; i<list.size(); i++) {   // 리스트를 출력할때 for문을 써서 출력하는데 반복문의 경우 데이터를 전부 가져오는 문제가 발생 -> for문을 if문으로 바꾸는 것이 아니라 반복을 중지 시킨다. 
	
	ddto = list.get(i);

	title = ddto.getTitle();
	developer = ddto.getDeveloper();
	tags = ddto.getTags();
	publisher = ddto.getPublisher();
	release_date = ddto.getRelease_date();
	price = ddto.getPrice();
	plattform = ddto.getPlattform();
	serial_number = ddto.getSerial_number();
	type = ddto.getType();
	
	explain = ddto.getExplain(); 
	advert = ddto.getAdvert();  
	
	lang_VoiceOver = ddto.getLang_VoiceOver();
	lang_TextOnly = ddto.getLang_TextOnly();
	
	ratings_Critic = ddto.getRatings_Critic();
	ratings_Users = ddto.getRatings_Users();
	
	specification_Minium_OS = ddto.getSpecification_Minium_OS();
	specification_Minium_Processor = ddto.getSpecification_Minium_Processor();
	specification_Minium_Memory = ddto.getSpecification_Minium_Memory();
	specification_Minium_Graphics = ddto.getSpecification_Minium_Graphics();
	specification_Storage = ddto.getSpecification_Storage();
    specification_Recomended_OS = ddto.getSpecification_Recomended_OS();
	specification_Recomended_Processor = ddto.getSpecification_Recomended_Processor();
	specification_Recomended_Memory = ddto.getSpecification_Recomended_Memory();
	specification_Recomended_Graphics = ddto.getSpecification_Recomended_Graphics();
	
	copyright = ddto.getCopyright();

//	request.setAttribute("title", title);
	out.println("<a href ='webb.do?command=jinusuke&serial_number="+serial_number+"'>"+title+"</a>");
	out.println(price);	
}
%>
</form>
무야호~
</body>
</html>