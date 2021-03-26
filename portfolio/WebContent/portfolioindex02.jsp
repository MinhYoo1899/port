<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
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
				slideshow_title_color: 'white',
				soldeshow_foreColor: 'navy',
				directory: 'jq/dotslidermaster/images/'
			});
		});
	</script>
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
</script>

<body>
<%
Object ob = request.getAttribute("NICK");
String nick = String.valueOf(ob);
request.setAttribute("NICK", nick);
%>
	<form>
	<nav id="navi">
		<div id="menu">
			<article> <img src= "qwer\asdf\psstore.png" width="30" height="30"> 스토어 </article>
			<article> <a href="community03Main.jsp"><img src= "qwer\asdf\board2.png" width="30" height="30"> 커뮤니티 </a></article>
			<article> <img src= "qwer\asdf\qa.png" width="30" height="30"> 자주묻는 질문 </article>
			<article> <img src= "qwer\asdf\1on1question.png" width="30" height="30">고객센터 </article>
		</div>

		<div id="perinfo">
			<article> <img src= "qwer\asdf\search.png" width="30" height="30"></article>
			<article> <input type="text" name="aaa" id="search"> </article>
			<article> 찜한상품 <img src= "qwer\asdf\zzim.png" width="25" height="25"> </article>
			<article> 장바구니 <img src= "qwer\asdf\cart2.jpg" width="25" height="25"> </article>
			<article> <a href="updateinfo.jsp"> <%=nick %>님 회원정보 수정 <img src= "qwer\asdf\agreement.png" width="25" height="25"> </a></article>
			<article> <a href="portfolioindex01.jsp"> 로그아웃 <img src= "qwer\asdf\lo.png" width="25" height="25"> </a></article>
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
			<a href="sangpoomCyberpunk2077.jsp"><img src= "qwer\asdf\cuberpunk2077.jpg" width="100%" height="400"></a>
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
			<article class= "mid2"> <img src= "qwer\asdf\a.jpg" width="100%" height="80%"> </article>
			<article class= "mid2"> <img src= "qwer\asdf\b.png" width="100%" height="80%"> </article>
			<article class= "mid2"> <img src= "qwer\asdf\c.jpg" width="100%" height="80%"> </article>
		</div>

		<div id="title2">
			<p id="p1"> 금 주의 특별 세일 </p> 
			<p id="p2"> 인기제품 특별할인</p>
			<p id="p3">인기많은 스테디 셀러 제품들을 할인 판매 합니다. </p>
		</div>
		<div>
			<article class= "mid3"> <img src= "qwer\asdf\ghostoftsushima.jpg" width="100%" height="80%"> </article>
			<article class= "mid3"> <img src= "qwer\asdf\tekken.jfif" width="100%" height="80%"> </article>
			<article class= "mid3"> <img src= "qwer\asdf\godofwar.jpg" width="100%" height="80%"> </article>
			<article class= "mid3"> <img src= "qwer\asdf\beckham.jpg" width="100%" height="80%"> </article>
		</div>

		<div id="title2">
			<p id="p1"> 홀리데이 특별 세일 </p> 
			<p id="p2"> 마지막 할인입니다.</p>
			<p id="p3">연휴기간동안 즐길 게임을 특별할인합니다. </p>
		</div>
		<div>
			<article class= "mid4"> <img src= "qwer\asdf\reddeadredemtion2.jpg" width="100%" height="300px"> </article>
			<article class= "mid4"> <img src= "qwer\asdf\gta5.jpg" width="100%" height="300px"> </article>
			<article class= "mid4"> <img src= "qwer\asdf\d.jpg" width="100%" height="300px"> </article>
			<article class= "mid4"> <img src= "qwer\asdf\mando.jpg" width="100%" height="300px"> </article>
			<article class= "mid4"> <img src= "qwer\asdf\witcher.jpg" width="100%" height="300px"> </article>
		</div>
	</section>

	<footer></footer>
	</form>
</body>
</html>