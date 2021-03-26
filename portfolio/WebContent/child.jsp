<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import = "mvc.*" %>
<%@ page import = "mvcController.*" %>
<%@ page import = "mvcMybatis.*" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <br>
    <b><font size="5" color="gray">자식창</font></b>
    <br><br>
 
    <input type="text" id="cInput"><br><br>
    <input type="button" value="창닫기" onclick="window.close()">
    
<%
 
DigitalSelect dise = DigitalSelect.instance();
DigitalDTO ddto = new DigitalDTO();

List<DigitalDTO> list = (List<DigitalDTO>)request.getAttribute("LIST");

int size = list.size();

//String title = null;
//String distribution = null;
//String genre = null;
//String manufacture = null;
//String release_date = null;
//int price;
//String plattform = null;
//String serial_number = null;
//String type = null;

for (int i=0; i<list.size(); i++) {
	
	ddto = list.get(i);
	
	String title = ddto.getTitle();
	String publisher = ddto.getPublisher();
	String tags = ddto.getTags();
	String developer = ddto.getDeveloper();
	String release_date = ddto.getRelease_date();
	int price = ddto.getPrice();
	String plattform = ddto.getPlattform();
	String serial_number = ddto.getSerial_number();
	String type = ddto.getType();
	
	out.println(serial_number);
	out.println(type);
	out.println(title); 
	out.println(publisher);
	out.println(tags);
	out.println(developer);
	out.println(release_date);
	out.println(price);
	out.println(plattform);
	
}
%>
</body>
</html>