<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<html>
<head>
	<meta charset="utf-8">
	<title>JJoin JSP01</title>
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Gaegu:wght@300;700&family=Jua&family=Sunflower:wght@300&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
</head>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
<script>
	//도메인 바꾸기. 변수 확인해야 됨
	$(function () {
		$("#selmail").change(function(){
			var selected = $(this).children("option:selected").val();
			var selectedmail = $(this).attr("name");
			if (selectedmail == "email_domain_sel") {
				domain = $("[name='email_domain']");
			} else if (selectedmail == "tax_email_domain_sel") {
				domain = $("[name = 'tax_email_domain']");
			}
			//if (selected != "#self") {}
			if (selected != "") {
				domain.val(selected);
				domain.prop("readonly", "readonly");
			} else {
				domain.val("");
				domain.removeProp("readonly");
			}
			domain.trigger(input);
		});
	});
</script>
<script>
	//비밀번호 똑같은거 작성하기 
	function pass() {
		if (pss01 == "" || pss == "") {
			alert("비밀번호를 입력해 주세요.");
			break;
		} else if (pss01 != pss02) {
			alert("동일한 비밀번호를 입력해 주세요.");
			break;
		} else if (pss01 == pss02) {
			alert("비밀번호가 같습니다.");
			break;
		}
	}
/*
//	function spamagree() {                                           //교차수신시 오류 동일선택시만 정상
//		for (var i = 0; i < form.sendemail.length; i++) {
//			if (form.sendemail[i].checked == true || form.selectedpersoninfo[i].checked == false) {
//
//				alert(" 광고성 e메일 수신에 " + form.sendemail[i].value + " 하셨습니다. 선택적 개인정보 수집에 " + form.selectedpersoninfo[i].value + " 하셨습니다.");   
//			}
//		}

function domscript(form) {
	var txt = document.querySelectorAll('input[type=text]');
	var pss = document.querySelectorAll('input[type=Password]');
	var sum = null;
	for (var i=0; i< txt.length ; i++) {
		
		if(txt[i].value == "") {
			alert("입력 안 된 부분을 채워주세요.");
			break;
		}

		else if (txt[i].value == true) {
			sum = sum + txt[i].value;
		}
		alert(sum);
	}

//	for (var j = 0; i <txt.length; i++) {
//	if (txt[j].value == true) {
//		continue;
//	}
//	alert("ID : " + txt[i].value ); //" 닉네임 : " + txt[i+1].value + " 이름 : " + txt[i+2].value + " 주소 : " + txt[i+3].value + txt[i+4].value + " 전화번호  : " + txt[i+5].value + txt[i+6].value + txt[i+7].value + " 핸드폰 번호 : " + txt[i+8].value + txt[i+9].value + txt[i+10].value + " E메일 : " + txt[i+11].value + "@" + txt[i+12].value);
//}	
	

	

	for (var a = 0; a < pss.length; a++) {

		if(pss[a].value== "") {
			alert("비밀번호를 입력해 주세요.");
			break;
		}
		else if (pss[a].value == pss[a+1].value) {
			alert("비밀번호 확인");
			break;
		}
		else if (pss[a].value != pss[a+1].value) {
			alert("비밀번호가 일치하지 않습니다.");
			break;
		}
	}
//	var click = document.querySelectorAll('input[type=button]'); 
//
//	for (var j=0; j<click.length; j++) {
//
//		if (click[j].value == true) {
//
//		}
	}


//if 
*/
</script>

<script type="text/javascript">
var openWin;

function openChild()
{
    // window.name = "부모창 이름"; 
    window.name = "parentForm";
    // window.open("open할 window", "자식창 이름", "팝업창 옵션");
    openWin = window.open("child.jsp",
            "childForm", "width=570, height=350, resizable = no, scrollbars = no");    
}

function setChildText(){
    openWin.document.getElementById("cInput").value = document.getElementById("pInput").value;
}

</script>

<style>
	body {
		background-image : url('qwer/asdf/psbackground.jpg');

	}
	table {
		margin: 0 auto;
	}
	td{
		text-align: center;
	}
	b{
		font-family: Jua;
		font-size: 20pt;
	}
	
	select {
		margin-left: 30px;
		width: 100px;
		height: 80px;
		margin-left: 90px;
	}

	#top {
		width: 100%;
		height: 100px;
		font-family: 'Noto Sans KR', sans-serif;
		font-family: 'Noto Sans KR', sans-serif;
		font-size: 40pt;
		text-align: center;
	}

	.textbar {
		height: 30px;
		border: 5px solid blue;
	}

	.radiocheck {}


</style>

<body>
	<article id="top">회원가입</article>  
	<form name="join" action="portfolioinput001.jsp" method="post">
	<table border="1" cellspacing ="1"> <!-- cellspacing ="0"-->
		<tr>
			<td><b>ID</b></td>
			<td> <input class="textbar" type="text" name="txt01" size="60" maxlength="50" value=""></td>
			<td> <input type="button" name="idcheck" value="중복확인" onclick="window.open('redundantId.jsp','id','width=200 ,height=300')"></td>
			<!-- <input type="button" value="새창" onclick="window.open('주소', '팝업창 이름', 'width=#, height=#')"> -->
					
		</tr>

		<tr>
			<td rowspan="2"><b>Password</b></td>
		</tr>
		<tr>
			<td><input class="textbar" type="Password" name="pss01" size="60" maxlength="50" value=""> </td> 
		</tr> 
		
		<tr>
			<td> <b>확인</b></td> 
			<td> <input class="textbar" type="Password" name="pss02" size="60" maxlength="50" value="" placeholder="*동일한 패스워드를 입력 해야 됩니다.*">  </td>
		</tr>
		
		<tr>
			<td><b>Nickname</b></td> 
			<td><input class="textbar" type="text" name="txt02" size="60" maxlength="50" value=""></td> 
			<td> <input type="button" value="중복확인"></td>
		</tr>
		
		<tr>
			<td><b>Name</b></td>
			<td><input class="textbar" type="text" name="txt03" size="50" maxlength="50" value=""></td>
		</tr>
		<tr>
		</tr>
		
		<tr>
			<td rowspan="2"><b>Address</b></td>
			<td>
			    <input type="text" id="sample6_address" placeholder="주소" class="textbar" name="addr1">
			    <input type="text" id="sample6_postcode" placeholder="우편번호" class="textbar" name="addr2">
			</td>
		</tr>
		
		<tr>
			<td> 
				<input type="text" id="sample6_detailAddress" placeholder="상세주소" class="textbar" name="addr3">
				<input type="text" id="sample6_extraAddress" placeholder="참고항목" class="textbar" name="addr4">
			</td>
			<td> <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
			</td>
		</tr>

		<tr>
			<td><b>Birthday</b></td><td><input type="date" name="txt06"></td>
		</tr>


		<tr>
			<td><b>Phone Number</b></td>
			<td><input class="textbar" type="text" name="txt07" size="10" maxlength="50" value=""> - <input class="textbar" type="text" name="txt08" size="10" maxlength="50" value=""> - <input class="textbar" type="text" name="txt09" size="10" maxlength="50" value=""></td>
		</tr>
		
		<tr>
			<td><b>Cellphone Number</b></td>
			<td><input class="textbar" type="text" name="txt10" size="10" maxlength="50" value=""> - <input class="textbar" type="text" name="txt11" size="10" maxlength="50" value=""> - <input class="textbar" type="text" name="txt12" size="10" maxlength="50" value=""></td>
		</tr>
		
		<tr>
			<td><b>E-mail</b></td>
			<td>
				<input class="textbar" type="text" name="txt13" size="10" maxlength="50" value=""> @ <input class="textbar" type="text" name="txt14" size="10" maxlength="50" value=""> 
				<select id="selmail" class="email_sel email_domain_sel textbar" name="E-Mail" size="1">
					<option value="">직접입력</option>
					<option value="naver.com">naver.com</option>
					<option value="hanmail.net">hanmail.net</option>
					<option value="gmail.com">gmail.com</option>
					<option value="outlook.com">outlook.com</option>
					<option value="yahoo.com">yahoo.com</option>
					<option value="nate.com">nate.com</option>
					<option value="yandex.com">yandex.com</option>
				</select>
			</td>
		</tr>

		<tr>
			<td> <b> 광고성 e메일 수신동의 </b> </td>
			<td> 동의 <input type="radio" name="spam" value="agree" checked> 비동의  <input type="radio" name="spam" value="disagree"></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td> <b> 선택적 개인정보 수집동의 </b> </td>
			<td> 동의 <input type="radio" name="selectinfo" value="agree" checked> 비동의  <input type="radio" name="selectinfo" value="disagree">
		  </td>
		</tr>
		<tr>
			<td colspan="2">&nbsp;</td>
		</tr>
		<tr>
			<td>기타정보</td>
			<td>선호장르 선택 (중복 선택가능)<br>
				대규모 멀티플레이<input type="checkbox" name="genre" value="Multi/">
				롤플레잉<input type="checkbox" name="genre" value="Rpg/">
				레이싱<input type="checkbox" name="genre" value="Racing/">
				스포츠<input type="checkbox" name="genre" value="Sports/">
				액션<input type="checkbox" name="genre" value="Action/">
				어드벤쳐<input type="checkbox" name="genre" value="Adventure/">
				인디<input type="checkbox" name="genre" value="Indie/">
				전략<input type="checkbox" name="genre" value="Rts/">
				캐주얼<input type="checkbox" name="genre" value="Casual/">
			</td>
		</tr>
		<tr align="center">
			<td colspan="2"> <input type="submit" value="가입하기"> <input type="submit" name="취소" value="취소"></td> 
		</tr>
		<tr>
			<td colspan="2">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="2">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="2">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="2">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="2">&nbsp;</td>
		</tr>
		
	</table>
	</form>
</html>


