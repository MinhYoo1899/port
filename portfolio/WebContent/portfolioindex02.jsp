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
			<article> <img src= "qwer\asdf\psstore.png" width="30" height="30"> ????????? </article>
			<article> <a href="community03Main.jsp"><img src= "qwer\asdf\board2.png" width="30" height="30"> ???????????? </a></article>
			<article> <img src= "qwer\asdf\qa.png" width="30" height="30"> ???????????? ?????? </article>
			<article> <img src= "qwer\asdf\1on1question.png" width="30" height="30">???????????? </article>
		</div>

		<div id="perinfo">
			<article> <img src= "qwer\asdf\search.png" width="30" height="30"></article>
			<article> <input type="text" name="aaa" id="search"> </article>
			<article> ???????????? <img src= "qwer\asdf\zzim.png" width="25" height="25"> </article>
			<article> ???????????? <img src= "qwer\asdf\cart2.jpg" width="25" height="25"> </article>
			<article> <a href="updateinfo.jsp"> <%=nick %>??? ???????????? ?????? <img src= "qwer\asdf\agreement.png" width="25" height="25"> </a></article>
			<article> <a href="portfolioindex01.jsp"> ???????????? <img src= "qwer\asdf\lo.png" width="25" height="25"> </a></article>
		</div>

	
	</nav>

	

	<aside id = "mainnavi">
			<div class="openmenu">
				<article class="mainmenu">????????????</article>
				<article class="mainmenu">????????????</article>
			    <article class="mainmenu">????????????</article>
			    <article class="mainmenu">????????????</article>
			    <article class="mainmenu">?????????</article>
			</div>
			
	 </aside>

	 <section class= "top"> 
	 	<div id="hiddenmenu">
				<ul id="hiddenlist">
					<li>?????? ?????? ??????</li>
					<li>?????? ?????????</li>
					<li>?????? ?????????</li>
					<li>?????? ??????</li>
				</ul>

				<ul id="hiddenlist">
					<li>????????????</li>
					<li>?????? ?????? ??? ??????</li>
					<li>??????????????????</li>
				</ul>

				<ul id="hiddenlist">
					<li>????????? ???????????????</li>
					<li>????????????</li>
					<li>?????????</li>
					<li>?????????</li>
					<li>??????</li>
					<li>????????????</li>
					<li>??????</li>
					<li>??????</li>
					<li>?????????</li>
				</ul>

				<ul id="hiddenlist">
					<li>???????????? ????????????</li> 
				</ul>

				<ul id="hiddenlist">
					<li>???????????? ???</li>
				</ul>
			</div>
			
	 </section> 

	<header>

		<div id="title1"> 
			<article>
				<p id="p1">??? ??????</p> 
				<p id="p2">?????? ???????????? ???????????? ??????!</p>
				<p id="p3">??????????????? 2077??? ??????, ????????? ?????? ????????? ???????????? ?????? ?????? ????????? ????????? ???????????? ??? ?????? ??????, ?????? ???????????? ???????????????. ????????? ????????? ?????? V??? ??????, ??????????????? ????????? ????????? ????????? ?????????.<br/>
				????????? ????????? ?????? ???????????? ?????? ????????? ????????? ????????? ????????? ????????? ???????????????.</p>
			</article> 
		</div>
		<div id="cyberpunk">
			<a href="sangpoomCyberpunk2077.jsp"><img src= "qwer\asdf\cuberpunk2077.jpg" width="100%" height="400"></a>
		</div>
		
		<div id="title2">
			<article>
				<p id="p1">???????????? </p> 
				<p id="p2">?????? ?????? ?????? ?????? ??????</p>
				<p id="p3">?????? ?????? ?????? ?????? ???????????? ???????????????. ???????????? ????????? ????????? ????????? ????????????. ???????????? ??????????????? ???????????????. ?????? ????????? ???????????????.</p>
			</article>
		</div>
		
		<section class= "mainslide">
			<div id="demo1" class="webwidget_slideshow_dot">
			<ul>
				<li><a href="link1" title="????????????"><img src="qwer\asdf\ps51.jpg" width="100%" height="301" alt="slideshow_large"/></a></li>
				<li><a href="link2" title="????????????"><img src="qwer\asdf\ps52.jpg" width="100%" height="301" alt="slideshow_large"/></a></li>
				<li><a href="link3" title="???????????????"><img src="qwer\asdf\xbox1.jpg" width="100%" height="301" alt="slideshow_large"/></a></li>
				<li><a href="link4" title="???????????????"><img src="qwer\asdf\xbox2.jpg" width="100%" height="301" alt="slideshow_large"/></a></li>
			</ul>
			<div style="clear: both"></div>
		</div>
		</section>
	</header>


	<section id="sect">

		<div id="title2">
			<article>
				<p id="p1">????????? ???????????? </p> 
				<p id="p2">????????? ????????? ?????????</p>
				<p id="p3">?????? ????????? ????????? ????????? ????????? ???????????? ?????? ?????? ?????????. ????????? ?????????.</p>
			</article>
		</div>
		<div id="div2">
			<article class= "mid2"> <img src= "qwer\asdf\a.jpg" width="100%" height="80%"> </article>
			<article class= "mid2"> <img src= "qwer\asdf\b.png" width="100%" height="80%"> </article>
			<article class= "mid2"> <img src= "qwer\asdf\c.jpg" width="100%" height="80%"> </article>
		</div>

		<div id="title2">
			<p id="p1"> ??? ?????? ?????? ?????? </p> 
			<p id="p2"> ???????????? ????????????</p>
			<p id="p3">???????????? ????????? ?????? ???????????? ?????? ?????? ?????????. </p>
		</div>
		<div>
			<article class= "mid3"> <img src= "qwer\asdf\ghostoftsushima.jpg" width="100%" height="80%"> </article>
			<article class= "mid3"> <img src= "qwer\asdf\tekken.jfif" width="100%" height="80%"> </article>
			<article class= "mid3"> <img src= "qwer\asdf\godofwar.jpg" width="100%" height="80%"> </article>
			<article class= "mid3"> <img src= "qwer\asdf\beckham.jpg" width="100%" height="80%"> </article>
		</div>

		<div id="title2">
			<p id="p1"> ???????????? ?????? ?????? </p> 
			<p id="p2"> ????????? ???????????????.</p>
			<p id="p3">?????????????????? ?????? ????????? ?????????????????????. </p>
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