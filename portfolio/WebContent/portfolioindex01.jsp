<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.*" %>
<%@ page import="mvc.*" %>
<%@ page import="portfoliojava.*" %>
<html>
<head>
	<link rel="stylesheet" href="index.css" type="text/css">
	<meta charset="utf-8">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	
	<title>Portfolio INDEX</title>
	<script type="text/javascript" src="jq/dotslidermaster/js/jquery.js"></script>
	<link href="jq/dotslidermaster/css/webwidget_slideshow_dot.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="jq/dotslidermaster/js/webwidget_slideshow_dot.js"></script>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet">
	
	<script language="javascript" type="text/javascript">
		$(function() {
			$("#demo1").webwidget_slideshow_dot({
				slideshow_time_interval: '5000',
				slideshow_window_width: '1390',
				slideshow_window_height: '500',
				slideshow_title_color: 'navy',
				soldeshow_foreColor: 'rgba(245,245,245,3)',
				directory: 'jq/dotslidermaster/images/'
			});
		});
	</script>
</head>
<style></style>
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

	$(function() {
		$('article > img').mouseover(function() {
			$(this).addClass('border');
		});
	});

	$(function() {
		$('article > img').mouseout(function() {
			$(this).removeClass('border');
		});
	});

	$(function() {
		$('div.openmenu').click(function() {
			$(this).addClass('hover');
			$('#hiddenmenu').slideDown(500);
		});

		$('#hiddenlist > li').mouseover(function() {
		$(this).addClass('liststyle');
	});

		$(function() {
		$('#hiddenlist > li').mouseout(function() {
			$(this).removeClass('liststyle');
		});
	});

	}); 

	$(function() {
		$('article.mainmenu').click(function() {
			$('article.mainmenu').removeClass('hover');
			$(this).addClass('hover');
		});
	});

	$(function() {
		$('header').mouseover(function() {
			$('#hiddenmenu').slideUp(500);
		});
	});
	
//	$(function(){
//		$('sect.div').mouseover(function() {
//			$(this).addClass('#light')
//		});
//	});
//	$(function(){
//		$('sect.div').mouseout(function() {
//			$(this).Class('#light')
//		});
//	});
</script>

<body>
<jsp:useBean id="gamelist" class="portfoliojava.IndexDAO" scope="page" />
<%
ArrayList<DigitalDTO> glist = gamelist.select();
//ArrayList<String> listt = new ArrayList<String>(); 
DigitalDTO ddto = new DigitalDTO();

int k = glist.size();

String serial_number = null;
String title = null;
int price;

String cyberpunk2077_serial_number;
String cyberpunk2077_title;
int cyberpunk2077_price;

String ghost_of_tsushima_serial_number;
String ghost_of_tsushima_title;
int ghost_of_tsushima_price;

//String[] serial_number1 = null;
//String[] title1 = null;
//int[] price1;

for(int i=0; i<k; i++) {
	
	ddto = glist.get(i);
	
	serial_number = ddto.getSerial_number();
	title = ddto.getTitle();
	price = ddto.getPrice();

//	if (serial_number == "0001") {
//		cyberpunk2077_serial_number = serial_number;
//		cyberpunk2077_title = title;
//		cyberpunk2077_price = price;
		
//	} else if (serial_number == "0012") {
//		ghost_of_tsushima_serial_number = serial_number;
//		ghost_of_tsushima_title = title;
//		ghost_of_tsushima_price = price;
//	}

//	serial_number1= serial_number;
	
//	listt.add(serial_number);
//	listt.add(title);
//	listt.add(price);
	
//	out.println(serial_number);
//	out.println(title);
//	out.println(price);	
	
//	System.out.println(serial_number);
//	System.out.println(title);
//	System.out.println(price);
	
//	glist.add(ddto);
//	System.out.println(glist);
}
//out.println(serial_number);
//out.println(title);
//out.println(price);

//  out.println(cyberpunk2077_serial_number);
//  out.println(cyberpunk2077_title);
//  out.println(cyberpunk2077_price);	
	
//	out.println(ghost_of_tsushima_serial_number);
//	out.println(ghost_of_tsushima_title);
//	out.println(ghost_of_tsushima_price);	
%>
	<form>
	<nav id="navi">
		<div id="menu">
		    <article><a href="portfolioindex01.jsp"> <img src= "qwer\asdf\200px_Epic_Games_logo.png" width="45" height="50"></a></article>
			<article><b><a href="webb.do?command=ko">  스토어  </a></b></article>
			<article><b><a href="community03Main.jsp"> 커뮤니티 </a></b></article>
			<article><b> 고객센터</b> </article>
		</div>

		<div id="perinfo">
			<article> <input type="button" value="검색하기"></article>
			<article> <input type="text" name="find" id="search"> </article>
			<article> 찜한상품</article>
			<article> 장바구니  </article>
			<article> <a href="portfoliojjoinjsp01.jsp"> 회원가입  </a></article>
			<article> <a href="portfoliologin01.jsp"> 로그인  </a></article>
		</div>
	
	</nav>

	

	<aside id = "mainnavi">
			<div class="openmenu">
				<article class="mainmenu">최신제품</article>
				<article class="mainmenu">추천제품</article>
			    <article class="mainmenu">카테고리</article>
			    <article class="mainmenu">프로모션</article>
			    <article class="mainmenu">서비스</article>
			</div>
			
	 </aside>

	 <section class= "top"> 
	 	<div id="hiddenmenu">
				<ul id="hiddenlist">
					<li>신규 출시 제품</li>
					<li>인기 콘텐츠</li>
					<li>앞서 해보기</li>
					<li>발매 예정</li>
				</ul>

				<ul id="hiddenlist">
					<li>친구추천</li>
					<li>가장 많이 한 게임</li>
					<li>최다추천목록</li>
				</ul>

				<ul id="hiddenlist">
					<li>대규모 멀티플레이</li>
					<li>롤플레잉</li>
					<li>레이싱</li>
					<li>스포츠</li>
					<li>액션</li>
					<li>어드벤쳐</li>
					<li>인디</li>
					<li>전략</li>
					<li>캐주얼</li>
				</ul>

				<ul id="hiddenlist">
					<li>프로모션 바로가기</li> 
				</ul>

				<ul id="hiddenlist">
					<li>고객지원 홈</li>
				</ul>
			</div>
			
	 </section> 

	<header>

		<div id="title1"> 
			<article>
				<p id="p1">새 소식</p> 
				<p id="p2">지금 이용가능 새로나온 대작!</p>
				<p id="p3">사이버펑크 2077은 권력, 사치와 신체 개조에 집착하는 거대 도시 나이트 시티를 배경으로 한 오픈 월드, 액션 어드벤처 게임입니다. 당신은 무법자 용병 V가 되어, 유일무이한 불멸의 열쇠를 뒤쫓게 됩니다.<br/>
				선택의 결과가 게임 이야기와 주변 세계에 영향을 미치는 나이트 시티를 탐험하세요.</p>
			</article> 
		</div>
		<div id="cyberpunk">
			<a href="webb.do?command=cyberpunk2077"><img src= "qwer\asdf\cuberpunk2077.jpg" width="100%" height="100%"></a>
		</div>
		
		<div id="title2">
			<article>
				<p id="p1">최초공개 </p> 
				<p id="p2">한정 수량 판매 예약 주문</p>
				<p id="p3">새로 나온 최신 게임 기기들을 구매하세요. 서두르지 않으면 아마도 매진될 것입니다. 구매하고 싶으시다면 서두르세요. 예약 판매제 실시합니다.</p>
			</article>
		</div>
		
		<section class= "mainslide">
			<div id="demo1" class="webwidget_slideshow_dot">
			<ul>
				<li><a href="link1" title="신규제품"><img src="qwer\asdf\ps51.jpg" width="100%" height="301" alt="slideshow_large"/></a></li>
				<li><a href="link2" title="특가할인"><img src="qwer\asdf\ps52.jpg" width="100%" height="301" alt="slideshow_large"/></a></li>
				<li><a href="link3" title="이달의찬스"><img src="qwer\asdf\xbox1.jpg" width="100%" height="301" alt="slideshow_large"/></a></li>
				<li><a href="link4" title="마지막찬스"><img src="qwer\asdf\xbox2.jpg" width="100%" height="301" alt="slideshow_large"/></a></li>
			</ul>
			<div style="clear: both"></div>
		</div>
		</section>
	</header>


	<section id="sect">

		<div id="title2">
			<article>
				<p id="p1">이달의 대작할인 </p> 
				<p id="p2">어새신 크리드 시리즈</p>
				<p id="p3">많은 사랑을 받아온 어새신 크리드 시리즈를 할인 판매 합니다. 놓치지 마세요.</p>
			</article>
		</div>
		<div id="div2">
			<article class= "mid2">  <a href ="webb.do?command=jinusuke&serial_number=0007">
			<img src= "qwer\asdf\a.jpg" width="100%" height="80%"> <h1> Assassin's Creed Origin<br> &#8361; 65000 </h1></a></article>
			
			<article class= "mid2"> <a href ="webb.do?command=jinusuke&serial_number=0008">
			<img src= "qwer\asdf\b.png" width="100%" height="80%"> <h1> Assassin's Creed Odyssey<br> &#8361; 65000</h1></a></article>
			
			<article class= "mid2"> <a href ="webb.do?command=jinusuke&serial_number=0009">
			<img src= "qwer\asdf\c.jpg" width="100%" height="80%"> <h1> Assassin's Creed Valhalla<br> &#8361; 65000</h1></a></article>
		</div>

		<div id="title2">
			<p id="p1"> 금 주의 특별 세일 </p> 
			<p id="p2"> 인기제품 특별할인</p>
			<p id="p3">인기많은 스테디 셀러 제품들을 할인 판매 합니다. </p>
		</div>
		<div>
			<article class= "mid3"> <a href ="webb.do?command=jinusuke&serial_number=0012">
			<img src= "qwer\asdf\ghostoftsushima.jpg" width="100%" height="80%"><h2> Ghost of Tsushima<br> &#8361; 64800 </h2></a></article>
			
			<article class= "mid3"> <a href ="webb.do?command=jinusuke&serial_number=0006">
			<img src= "qwer\asdf\tekken.jfif" width="100%" height="80%"> <h2>TEKKEN 7<br> &#8361; 65000 </h2></a></article>
			<article class= "mid3"> <a href ="webb.do?command=jinusuke&serial_number=0011"> 
			<img src= "qwer\asdf\godofwar.jpg" width="100%" height="80%"><h2> God of War<br> &#8361; 22800 </h2></a></article>
			<article class= "mid3"> <a href ="webb.do?command=jinusuke&serial_number=0013">
			<img src= "qwer\asdf\beckham.jpg" width="100%" height="80%"> <h2>EA SPORTS™ FIFA 21<br> &#8361; 64800 </h2></a></article>
		</div>

		<div id="title2">
			<p id="p1"> 홀리데이 특별 세일 </p> 
			<p id="p2"> 마지막 할인입니다.</p>
			<p id="p3">연휴기간동안 즐길 게임을 특별할인합니다. </p>
		</div>
		<div>
			<article class= "mid4"> <a href ="webb.do?command=jinusuke&serial_number=0010">
			<img src= "qwer\asdf\reddeadredemtion2.jpg" width="100%" height="300px"> Red Dead Redemption 2<br> &#8361; 66000</a></article>
			
			<article class= "mid4"> <a href ="webb.do?command=jinusuke&serial_number=0014">
			<img src= "qwer\asdf\gta5.jpg" width="100%" height="300px"> Grand Theft Auto V<br> &#8361; 33000</a></article>
			
			<article class= "mid4"> <a href ="webb.do?command=jinusuke&serial_number=0015">
			<img src= "qwer\asdf\d.jpg" width="100%" height="300px"> Romance of the Three Kingdoms XIV<br> &#8361; 110900</a></article>
			<article class= "mid4"> <a href ="webb.do?command=jinusuke&serial_number=0003"> 
			<img src= "qwer\asdf\battlefront2.jpg" width="100%" height="300px"> STAR WARS™ Battlefront™ II: Celebration Edition<br> &#8361; 47000</a></article>
			<article class= "mid4"> <a href ="webb.do?command=jinusuke&serial_number=0005"><img src= "qwer\asdf\witcher.jpg" width="100%" height="300px"> The Witcher 3: Wild Hunt - Game of the Year Edition<br>  &#8361; 49900</a></article>
		</div>
	</section>
	
	<footer>
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
스토어 환불 정책이 2020년 5월 19일부로 업데이트 되었습니다. 새로운 변경사항에 대해 확인하시는 것을 권장합니다.
© 2021, Epic Games, Inc. All Rights Reserved. Epic, Epic Games, Epic Games 로고, Fortnite, Fortnite 로고, Unreal, Unreal Engine, Unreal Engine 로고, Unreal Tournament, Unreal Tournament 로고의 모든 저작권은 Epic Games, Inc.에 있으며, 이는 미국 및 그 외 국가에 모두 해당됩니다. 기타 브랜드 또는 제품 이름은 해당 소유자의 상표입니다. 미국 외 거래는 Epic Games International, S.à r.l.을 통해 이뤄집니다.  
이용약관개인정보처리방침스토어 환불 정책
	</footer>
	</form>
</body>
</html>