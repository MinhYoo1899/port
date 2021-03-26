<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="mvc.*" %>
<%@ page import="mvcController.*" %>
<%@ page import="mvcMybatis.*" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="productViewToolCSS.css" type="text/css">
<meta charset="UTF-8">
<title>Product Tool Page</title>
</head>
<body>
<%
DigitalDTO ddto = (DigitalDTO)request.getAttribute("DDTO");
//(List<DigitalDTO>)request.getAttribute("LIST");  
    
    String serial_number = ddto.getSerial_number();
	String title = ddto.getTitle();
	String type = ddto.getType();
	String developer = ddto.getDeveloper();
	String publisher = ddto.getPublisher();
	String tags = ddto.getTags();	
	String release_date = ddto.getRelease_date();
	int price = ddto.getPrice();
	String plattform = ddto.getPlattform();
	
	String explain = ddto.getExplain(); // text 홍보영상사진 바로 밑
	String advert = ddto.getAdvert();  // text 상세홍보
	
	String lang_VoiceOver = ddto.getLang_VoiceOver();
	String lang_TextOnly = ddto.getLang_TextOnly();
	
	int ratings_Critic = ddto.getRatings_Critic();
	int ratings_Users = ddto.getRatings_Users();
	
	String specification_Minium_OS = ddto.getSpecification_Minium_OS();
	String specification_Minium_Processor = ddto.getSpecification_Minium_Processor();
	String specification_Minium_Memory = ddto.getSpecification_Minium_Memory();
	String specification_Minium_Graphics = ddto.getSpecification_Minium_Graphics();
	String specification_Storage = ddto.getSpecification_Storage();
	String specification_Recomended_OS = ddto.getSpecification_Recomended_OS();
	String specification_Recomended_Processor = ddto.getSpecification_Recomended_Processor();
	String specification_Recomended_Memory = ddto.getSpecification_Recomended_Memory();
	String specification_Recomended_Graphics = ddto.getSpecification_Recomended_Graphics();
	
	String copyright = ddto.getCopyright();
%>
<form action="purchase.jsp" method="post">
     <nav>
        <div id="menu">
			<article> <a href="webb.do?command=ko"><img src= "qwer\asdf\psstore.png" width="30" height="30"> 스토어 </a></article>
			<article> <a href="community03Main.jsp"><img src= "qwer\asdf\board2.png" width="30" height="30"> 커뮤니티</a> </article>
			<article> <img src= "qwer\asdf\qa.png" width="30" height="30"> 자주묻는 질문 </article>
			<article> <img src= "qwer\asdf\1on1question.png" width="30" height="30">고객센터 </article>
		</div>
		
		<div id="perinfo">
			<article> <img src= "qwer\asdf\search.png" width="30" height="30"></article>
			<article> <input type="text" name="aaa" id="search"> </article>
			<article> 찜한상품 <img src= "qwer\asdf\zzim.png" width="25" height="25"> </article>
			<article> 장바구니 <img src= "qwer\asdf\cart2.jpg" width="25" height="25"> </article>
			<article> <a href="portfoliojjoinjsp01.jsp"> 회원가입 <img src= "qwer\asdf\agreement.png" width="25" height="25"> </a></article>
			<article> <a href="portfoliologin01.jsp"> 로그인 <img src= "qwer\asdf\lo.png" width="25" height="25"> </a></article>
		</div>
		</nav>
	
<header id="trailer">
<iframe width="100%" height="720" src="https://www.youtube.com/embed/LembwKDo1Dk?amp;autoplay=1&amp;mute=1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<!-- https://youtu.be/LembwKDo1Dk -->
</header>

<aside>
<div><img src= "qwer\cyberpunk2077\cyberpunk2077_logo__1000x1000.jpg" width="100%" height="100%"></div>
<div id=""><%=title %>정보</div>
<div id="">평점</div>
<div id="">사양</div>
</aside>

<section>
<div>
<article id="explain">
<%=explain %>
</article>

<article id="purbutton">
<a href="purchase.jsp"><input type="button" name="" value="구매하기"></a>
<input type="button" name="" value="+">
</article>
</div>

<div id="info">
<article class="ginfo">개발사</article>
<article class="ginfo">퍼블리셔</article>
<article class="ginfo">출시일</article>

<article class="ginfo2"><% out.println(developer); %></article>
<article class="ginfo2"><% out.println(publisher); %></article>
<article class="ginfo2"><% out.println(release_date); %></article>

<article class="ginfo">장르</article>
<article class="ginfo">게임 이용등급</article>
<article class="ginfo">플랫폼</article>

<article class="ginfo2"><%=tags %></article>
<article id="usegrade" class="ginfo2"> <img src= "qwer\asdf\ratingsystem.png" width="100%" height="100%"> </article>
<article class="ginfo2"><%=plattform %></article>

<article id="advert">
<%=advert %>
</article>

<article id="kcar">
<img src="qwer\cyberpunk2077\cyberpunk2077_a_mercenary_on_the_rise_rgb_1920x1080.jpg" width="100%" height="500">
</article>

<article id="leftphoto">
<img src="qwer\cyberpunk2077\cyberpunk2077_always_bring_a_gun_to_a_knife_fight_rgb_1920x1080.jpg" width="100%" height="300">
</article>

<article id="rightphoto">
<img src="qwer\cyberpunk2077\cyberpunk2077_my_name_is_evelyn_rgb_1920x1080.jpg" width="100%" height="300">
</article>

<article id="leftphoto">
<img src="qwer\cyberpunk2077\cyberpunk2077_outnumbered_but_not_outgunned_rgb_1920x1080.jpg" width="100%" height="300">
</article>

<article id="rightphoto">
<img src="qwer\cyberpunk2077\cyberpunk2077_high_speed_high_stakes_rgb_1920x1080.jpg" width="100%" height="300">
</article>

<article>
<img alt="" src="qwer\cyberpunk2077\cyberpunk2077_accolades_3840x2160_1920x1080.jpg" width="100%" height="500">
</article>
</div>

<div>
전문가평점<br>
<article id="critic"><%=ratings_Critic %></article>
<a href="https://www.metacritic.com/game/pc/cyberpunk-2077">제공: 메타크리틱</a>
</div>


<div>
유저평점<br>
<article id="usercritic"><%=ratings_Users %></article>
<a href="https://www.metacritic.com/game/pc/cyberpunk-2077/user-reviews">제공: 메타 크리틱</a>
</div>

<div>

<article class="sa">
<b>사양</b>
</article>

<article id="sayang">
최소 사양<br><br>              
운영체제<br>
<%=specification_Minium_OS %><br><br>

프로세서<br>
<%=specification_Minium_Processor %><br><br>

메모리<br>
<%=specification_Minium_Memory %>	<br><br>

그래픽 카드<br>
<%=specification_Minium_Graphics %><br><br>

저장 공간<br>
<%=specification_Storage %><br><br>
</article >

<article id="sayang">
권장 사양 <br><br>
운영체제<br>
<%=specification_Recomended_OS %><br><br>

프로세서<br>
<%=specification_Recomended_Processor %><br><br>

메모리<br>
<%=specification_Recomended_Memory %><br><br>

그래픽 카드<br>
<%=specification_Recomended_Graphics %><br><br>
</article>

<article id="lang">
<b>지원 언어</b><br>
<b>[보이스 오버]</b>: <%=lang_VoiceOver %>  <br>
<b>[텍스트만]</b>: <%=lang_TextOnly %> <br>
</article>
</div>

<div id="copyright">
<%=copyright %>
</div>
</section>

<footer>
<div>
리소스
크리에이터 후원
스토어 문의
채용안내
회사소개
한국법인소개
팬 아트 정책
사용자 경험 조사
스토어 EULA
커뮤니티 규칙
본인인증
에픽게임즈 제작
Battle Breakers
Fortnite
Infinity Blade
Robo Recall
Shadow Complex
Spyjinx
Unreal Tournament
</div>

<div>
© 2021, Epic Games, Inc. All Rights Reserved. Epic, Epic Games, Epic Games 로고, Fortnite, Fortnite 로고, Unreal, Unreal Engine, Unreal Engine 로고, Unreal Tournament, Unreal Tournament 로고의 모든 저작권은 Epic Games, Inc.에 있으며, 이는 미국 및 그 외 국가에 모두 해당됩니다. 기타 브랜드 또는 제품 이름은 해당 소유자의 상표입니다. 미국 외 거래는 Epic Games International, S.à r.l.을 통해 이뤄집니다.  
이용약관개인정보처리방침스토어 환불 정책
</div>

</footer>
<%
//	out.println(serial_number);
//	out.println(type);
//	out.println(title); 
//	out.println(price);

%>
</form>
<%
//	out.println(serial_number);
//	out.println(title);
//	out.println(type);
//	out.println(developer);
//	out.println(publisher);
//	out.println(tags);
//	out.println(release_date);
//	out.println(price);
//	out.println(plattform);
//	out.println(explain);
//	out.println(advert);
//	out.println(lang_VoiceOver);
//	out.println(lang_TextOnly);
//	out.println(ratings_Critic);
//	out.println(ratings_Users);
//	out.println(specification_Minium_OS);
//	out.println(specification_Minium_Processor);
//	out.println(specification_Minium_Memory);
//	out.println(specification_Minium_Graphics);
//	out.println(specification_Storage);
//	out.println(specification_Recomended_OS);
//	out.println(specification_Recomended_Processor);
//	out.println(specification_Recomended_Memory);
//	out.println(specification_Recomended_Graphics);
//	out.println(copyright);
%>
</body>
</html>