<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=10,chrome=1">
<title>실버타운</title>
<link rel="stylesheet" href="http://www.hduk.co.kr/theme/basic/css/default.css">
<link rel="stylesheet" href="http://www.hduk.co.kr/theme/basic/skin/connect/basic/style.css">
<link rel="stylesheet" href="http://www.hduk.co.kr/theme/basic/skin/outlogin/basic/style.css">
<link rel="stylesheet" href="http://www.hduk.co.kr/skin/latest/basic/style.css">
<link rel="stylesheet" href="../theme/basic/css/style.css">
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
<meta name="description" content="영대병원 1분, 가톨릭병원 3분거리. 보건복지부 인증의료기관. 내과전문의가 운영하는 요양병원. 환자에 대한 존엄과 가치를 지키는 환자 중심 병원">
<meta property="og:type" content="website">
<meta property="og:title" content="실버타운">
<meta property="og:description" content="영대병원 1분, 가톨릭병원 3분거리. 보건복지부 인증의료기관. 내과전문의가 운영하는 요양병원. 환자에 대한 존엄과 가치를 지키는 환자 중심 병원">
<meta property="og:url" content="http://dgtsh.co.kr/">
<meta name="naver-site-verification" content="5f825cdadf7b62d263a8db905a0a31b987d1cdf6"/>
<!--[if lte IE 8]>
<script src="http://www.hduk.co.kr/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "http://www.hduk.co.kr";
var g5_bbs_url   = "http://www.hduk.co.kr/bbs";
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_editor    = "";
var g5_cookie_domain = "";
</script>
<script src="http://www.hduk.co.kr/js/jquery-1.8.3.min.js"></script>
<script src="http://www.hduk.co.kr/js/jquery.menu.js"></script>
<script src="http://www.hduk.co.kr/js/common.js"></script>
<script src="http://www.hduk.co.kr/js/wrest.js"></script>

</head>
<body>

<style>
/*상담 고정메뉴*/
        #qform {z-index:99999;position:fixed;bottom:0px;right:0px;width:100%;height:110px;background:#34517d;}
        #fixfix{width:1000px;margin:0 auto;height:110px;}
        .fix_bottom{width:30px;padding:0 10px 0 0;color:#fff;}
         .fix_bottom:first-child{padding-left:70px;}
       .formbox{float:left;font-size:17px;}
        .c_text > .ft {color:yellow; font-size: 20px;}
       .hobbybox{float:left;margin-left:20px;margin-top:-10px;}
       .hobbybox>.upbox{width:150px;height:30px;font-size:14px;display:block;margin:0 0 10px 25px;}
       .hobbybox>.che{color:#fff;padding:0 5px 0 31px;}
       #fixfix>.upbox{width:150px;height:60px;background:yellow;margin:-20px 0 0 40px;border:none;color:#000;font-size:20px;}
      .upbox a{text-decoration:none;}
</style>

<!-- 상단 시작 { -->
<div id="hd">
    <h1 id="hd_h1">실버타운</h1>

    <div id="skip_to_container"><a href="#container">본문 바로가기</a></div>

    
<!-- 팝업레이어 시작 { -->
<div id="hd_pop">
    <h2>팝업레이어 알림</h2>

<span class="sound_only">팝업레이어 알림이 없습니다.</span></div>

<script>
$(function() {
    $(".hd_pops_reject").click(function() {
        var id = $(this).attr('class').split(' ');
        var ck_name = id[1];
        var exp_time = parseInt(id[2]);
        $("#"+id[1]).css("display", "none");
        set_cookie(ck_name, 1, exp_time, g5_cookie_domain);
    });
    $('.hd_pops_close').click(function() {
        var idb = $(this).attr('class').split(' ');
        $('#'+idb[1]).css('display','none');
    });
    $("#hd").css("z-index", 1000);
});
</script>
<!-- } 팝업레이어 끝 -->
    <div id="hd_wrapper">
      <div class="minimenu">
         <div class="hom"><a href="http://www.hduk.co.kr">HOME</a></div>
         <div class="con_loc">
            <div class="con"><a href="/bbs/board.php?bo_table=notice">CONTACT</a></div>
            <div class="loc"><a href="/bbs/content.php?co_id=about04">LOCATION</a></div>
                        <div class="con2"><a href="/bbs/login.php">로그인</a></div>
                     </div>
      </div>

       
    </div>

    <hr>

    <nav id="gnb">
   <div class="main_menu">

        <a href=" "><h1>로고자리</h1></a>
   
        <ul id="gnb_1dul">
                        <li class="gnb_1dli" style="z-index:999">
                <a href="/bbs/board.php?bo_table=notice" target="_self" class="gnb_1da">커뮤니티</a>
                <ul class="gnb_2dul">
                    <li class="gnb_2dli"><a href="/bbs/board.php?bo_table=notice" target="_self" class="gnb_2da">공지사항</a></li>
                                    <li class="gnb_2dli"><a href="/bbs/board.php?bo_table=counsel" target="_self" class="gnb_2da">1:1상담</a></li>
                                    <li class="gnb_2dli"><a href="/bbs/board.php?bo_table=proposal" target="_self" class="gnb_2da">News</a></li>
                                    <li class="gnb_2dli"><a href="/bbs/board.php?bo_table=event" target="_self" class="gnb_2da">Vitamin</a></li>
                                    <li class="gnb_2dli"><a href="/bbs/board.php?bo_table=gallery" target="_self" class="gnb_2da">Gallery</a></li>
                </ul>
            </li>
                 
                        <li class="gnb_1dli" style="z-index:997">
                <a href="/bbs/content.php?co_id=guide01" target="_self" class="gnb_1da">이용안내</a>
                <ul class="gnb_2dul">
                    <li class="gnb_2dli"><a href="/bbs/content.php?co_id=guide01" target="_self" class="gnb_2da">입원안내</a></li>
                                    <li class="gnb_2dli"><a href="/bbs/content.php?co_id=guide02" target="_self" class="gnb_2da">병동생활안내</a></li>
                                    <li class="gnb_2dli"><a href="/bbs/content.php?co_id=guide04" target="_self" class="gnb_2da">면회안내</a></li>
                                    <li class="gnb_2dli"><a href="/bbs/content.php?co_id=guide05" target="_self" class="gnb_2da">시설안내</a></li>
                </ul>
            </li>
                        <li class="gnb_1dli" style="z-index:996">
                <a href="/bbs/content.php?co_id=doctor01" target="_self" class="gnb_1da">진료안내</a>
                <ul class="gnb_2dul">
                    <li class="gnb_2dli"><a href="/bbs/content.php?co_id=doctor01" target="_self" class="gnb_2da">의료진소개</a></li>
                                    <li class="gnb_2dli"><a href="/bbs/content.php?co_id=doctor02" target="_self" class="gnb_2da">진료안내</a></li>
                </ul>
            </li>
                        <li class="gnb_1dli" style="z-index:995">
                <a href="/bbs/content.php?co_id=medical01" target="_self" class="gnb_1da">진료과목</a>
                <ul class="gnb_2dul">
                    <li class="gnb_2dli"><a href="/bbs/content.php?co_id=medical01" target="_self" class="gnb_2da">내과</a></li>
                                    <li class="gnb_2dli"><a href="/bbs/content.php?co_id=medical02" target="_self" class="gnb_2da">일반외과</a></li>
                                    <li class="gnb_2dli"><a href="/bbs/content.php?co_id=medical03" target="_self" class="gnb_2da">가정의학과</a></li>
                                    <li class="gnb_2dli"><a href="/bbs/content.php?co_id=medical04" target="_self" class="gnb_2da">영상의학과</a></li>
                                    <li class="gnb_2dli"><a href="/bbs/content.php?co_id=medical05" target="_self" class="gnb_2da">한방과</a></li>
                </ul>
            </li>
                        <li class="gnb_1dli" style="z-index:994">
                <a href="/bbs/content.php?co_id=info01" target="_self" class="gnb_1da">노인건강정보</a>
                <ul class="gnb_2dul">
                    <li class="gnb_2dli"><a href="/bbs/content.php?co_id=info01" target="_self" class="gnb_2da">뇌졸중</a></li>
                                    <li class="gnb_2dli"><a href="/bbs/content.php?co_id=info02" target="_self" class="gnb_2da">노인성 우울증</a></li>
                                    <li class="gnb_2dli"><a href="/bbs/content.php?co_id=info03" target="_self" class="gnb_2da">고혈압</a></li>
                                    <li class="gnb_2dli"><a href="/bbs/content.php?co_id=info04" target="_self" class="gnb_2da">치매</a></li>
                </ul>
            </li>
                    </ul>
      </div>
    </nav>

<!--메뉴그라데이션바-->
<div class=gnb_ss>

</div>

<style>
/*상담 고정메뉴*/
        #qform {z-index:99999;position:fixed;bottom:0px;right:0px;width:100%;height:110px;background:#34517d;}
        #fixfix{width:1000px;margin:0 auto;height:110px;}
        .fix_bottom{width:30px;padding:0 10px 0 0;color:#fff;}
         .fix_bottom:first-child{padding-left:70px;}
       .formbox{float:left;font-size:17px;}
        .c_text > .ft {color:yellow; font-size: 20px;}
       .hobbybox{float:left;margin-left:20px;margin-top:-10px;}
       .hobbybox>.upbox{width:150px;height:30px;font-size:14px;display:block;margin:0 0 10px 25px;}
       .hobbybox>.che{color:#fff;padding:0 5px 0 31px;}
       #fixfix>.upbox{width:150px;height:60px;background:yellow;margin:-20px 0 0 40px;border:none;color:#000;font-size:20px;}
      .upbox a{text-decoration:none;}
</style>

<script type="text/javascript">
function checkFrm(obj) {
   if(!obj.wr_name.value) {
  alert('이름을 입력해주세요');
  obj.wr_name.focus();
  return false;
 }
 if(!obj.wr_7.value) {
  alert('휴대번호를 입력해주세요.');
  obj.wr_7.focus();
  return false;
 }
  if(!obj.wr_8.value) {
  alert('휴대번호를 입력해주세요.');
  obj.wr_8.focus();
  return false;
 }
  if(!obj.wr_9.value) {
  alert('휴대번호를 입력해주세요.');
  obj.wr_9.focus();
  return false;
 }
 if(obj.wr_6.checked == false) {
  alert('개인정보 활동동의에 체크해주세요.');
  obj.wr_6.focus();
  return false;
 }
}
</script>

 <form id="qform" name=frm method=post action="/bbs/write_update.php" onsubmit="return checkFrm(this);">
       <input type=hidden name=w        value="">
      <input type=hidden name=bo_table value="q_counsel">
      <input type=hidden name=wr_id    value="">
      <input type=hidden name=sca      value="">
      <input type=hidden name=sfl      value="">
      <input type=hidden name=stx      value="">
      <input type=hidden name=spt      value="">
      <input type=hidden name=sst      value="">
      <input type=hidden name=sod      value="">
      <input type=hidden name=s    value="s">
      <input type=hidden name=wr_subject  value="빠른 상담 신청">
      <input type=hidden name=wr_content  value="빠른 상담 신청">
        <input type=hidden name="wr_1"  value="">
        <div id="fixfix">
            <div class="c_text" style="text-align:center;padding-top:10px;color:#fff;"> 
                <span class="ft">실시간 1:1 상담</span>&nbsp;&nbsp;아래에 연락처를 남겨주시면 확인 후 상담전화를 드리겠습니다.
            </div>
     
            <div class="formbox">
                <label class="fix_bottom">이름</label>
            <input class='quick' type="text" name="wr_name" size="22"  style="width:100px;height:30px;">
                <!--<input type="text" style="width:100px;height:30px;"/>-->
            </div>
            <div class="formbox">
                <label class="fix_bottom">연락처</label>
                <input type="tel" name="wr_7" class="b"style="width:60px;height:30px;" /> -
                <input type="tel" name="wr_8" style="width:70px;height:30px;" /> -
                <input type="tel" name="wr_9" style="width:70px;height:30px;" />
            </div>
            <div class="hobbybox">
                <button class="upbox"><a href="/bbs/content.php?co_id=privacy">개인정보처리방침</a></button>
                <input type="checkbox" name=wr_6 value="6" class="che"  required><!--<input type="checkbox" class="che" name="개인정보처리방침동의" />-->개인정보처리방침 동의
            </div>
            <input type="submit" value="상담하기" class="upbox">
            </div>
</form>








</div>
<!-- } 상단 끝 -->





<hr>

<!-- 콘텐츠 시작 { -->
<div id="wrapper">

 
 
 <div id="aside">
        
<!-- 로그인 전 아웃로그인 시작 { -->
<section id="ol_before" class="ol">
    <h2>회원로그인</h2>
    <form name="foutlogin" action="http://www.hduk.co.kr/bbs/login_check.php" onsubmit="return fhead_submit(this);" method="post" autocomplete="off">
    <fieldset>
        <input type="hidden" name="url" value="%2F">
        <label for="ol_id" id="ol_idlabel">회원아이디<strong class="sound_only">필수</strong></label>
        <input type="text" id="ol_id" name="mb_id" required class="required" maxlength="20">
        <label for="ol_pw" id="ol_pwlabel">비밀번호<strong class="sound_only">필수</strong></label>
        <input type="password" name="mb_password" id="ol_pw" required class="required" maxlength="20">
        <input type="submit" id="ol_submit" value="로그인">
        <div id="ol_svc">
            <a href="http://www.hduk.co.kr/bbs/register.php"><b>회원가입</b></a>
            <a href="http://www.hduk.co.kr/bbs/password_lost.php" id="ol_password_lost">정보찾기</a>
        </div>
        <div id="ol_auto">
            <input type="checkbox" name="auto_login" value="1" id="auto_login">
            <label for="auto_login" id="auto_login_label">자동로그인</label>
        </div>
    </fieldset>
    </form>
</section>

<script>
$omi = $('#ol_id');
$omp = $('#ol_pw');
$omp.css('display','inline-block').css('width',104);
$omi_label = $('#ol_idlabel');
$omi_label.addClass('ol_idlabel');
$omp_label = $('#ol_pwlabel');
$omp_label.addClass('ol_pwlabel');

$(function() {
    $omi.focus(function() {
        $omi_label.css('visibility','hidden');
    });
    $omp.focus(function() {
        $omp_label.css('visibility','hidden');
    });
    $omi.blur(function() {
        $this = $(this);
        if($this.attr('id') == "ol_id" && $this.attr('value') == "") $omi_label.css('visibility','visible');
    });
    $omp.blur(function() {
        $this = $(this);
        if($this.attr('id') == "ol_pw" && $this.attr('value') == "") $omp_label.css('visibility','visible');
    });

    $("#auto_login").click(function(){
        if ($(this).is(":checked")) {
            if(!confirm("자동로그인을 사용하시면 다음부터 회원아이디와 비밀번호를 입력하실 필요가 없습니다.\n\n공공장소에서는 개인정보가 유출될 수 있으니 사용을 자제하여 주십시오.\n\n자동로그인을 사용하시겠습니까?"))
                return false;
        }
    });
});

function fhead_submit(f)
{
    return true;
}
</script>
<!-- } 로그인 전 아웃로그인 끝 -->
        
    </div>


    <div id="container">
        <!---->
<link href="https://fonts.googleapis.com/css?family=Nanum+Myeongjo" rel="stylesheet">


<!--메인이미지 시작-->
<div class="main_img" style="position:relative;">

   <!-- bxSlider Javascript file -->
      <script src="../bxslide/jquery.bxslider.min.js"></script>
      <!-- bxSlider CSS file -->
      <link href="../bxslide/jquery.bxslider.css" rel="stylesheet" />
      <ul class="bxslider" style="margin:0; padding:0;">
         <li><img src="https://i.imgur.com/QAyOTQa.jpg" alt="메인이미지1" /></li>
         <li><img src="https://i.imgur.com/QAyOTQa.jpg" alt="메인이미지2" /></li>
      </ul>
      <script>
      $('.bxslider').bxSlider({
         mode:'fade',
         auto: true,
      });
      </script>
</div>
<!--메인이미지 끝-->

<!-- <div class="main_icon">
   <a href="/bbs/content.php?co_id=about01"><div class="main_icon1"><img src="../theme/basic/img/icon1.png" alt=병원소개><p class=icon_text1>병원소개</p></div></a>
   <a href="/bbs/content.php?co_id=doctor01"><div class="main_icon1"><img src="../theme/basic/img/icon2.png" alt=의료진소개><p class=icon_text2>의료진소개</p></div></a>
   <a href="/bbs/board.php?bo_table=notice"><div class="main_icon1"><img src="../theme/basic/img/icon3.png" alt=공지사항><p class=icon_text1>공지사항</p></div></a>
   <a href="/bbs/board.php?bo_table=counsel"><div class="main_icon1"><img src="../theme/basic/img/icon4.png" alt=1:1상담><p class=icon_text1>1:1상담</p></div></a>


<img src="../theme/basic/img/m_text.png">
    <p class="main_text">실버타운</p>
    <p class="main_text1">저승까지 </br>
ㅂㅂ.</p>


</div>
 -->

<!--이미지 아래 내용-->
<div class="body">
   <div class="notice">
      <ul class="tabs">
         <li><a href="#tab1">공지사항</a></li>
         <li><a href="#tab2">1:1상담</a></li>
      </ul>
      <div class="tab_container">
         <div id="tab1" class="tab_content">
            <ul class="tab_text">
               
<!-- 공지사항 최신글 시작 { -->
            <li><a href="http://hduk.co.kr/bbs/board.php?bo_table=notice&amp;wr_id=19">고객 안내문</a><span class="date">2019-02-08</span></li>
        
<!-- } 공지사항 최신글 끝 -->            </ul>
         </div>
         <div id="tab2" class="tab_content">
            <!--Content-->
            <ul class="tab_text">
               
<!-- 1:1상담 최신글 시작 { -->
            <li><a href="http://hduk.co.kr/bbs/board.php?bo_table=counsel&amp;wr_id=123">입원상담 하는분 없나요? 문닫았나요?</a><span class="date">2019-07-17</span></li>
            <li><a href="http://hduk.co.kr/bbs/board.php?bo_table=counsel&amp;wr_id=122">입원 비용 등 문의 드립니다.</a><span class="date">2019-06-24</span></li>
            <li><a href="http://hduk.co.kr/bbs/board.php?bo_table=counsel&amp;wr_id=121">진료보나요?</a><span class="date">2019-04-24</span></li>
            <li><a href="http://hduk.co.kr/bbs/board.php?bo_table=counsel&amp;wr_id=119">근무복 및 환자복 생산 업체 입니다.</a><span class="date">2019-02-13</span></li>
        
<!-- } 1:1상담 최신글 끝 -->            </ul>
         </div>
      </div>
   </div>
   <div class="certifi"><img src="../theme/basic/img/ban01.jpg" alt="새롭게 태어납니다"></div>
</div>

<div class="body2">
   <div class="info">
      <a href="/bbs/content.php?co_id=doctor02"><div class="info_1">입/퇴원안내<img src="../theme/basic/img/icon_chart.png" alt=입/퇴원안내></div></a>
      <div class="info_2"><span class="bt">병원둘러보기</span></br>감사하는 마음을 담아</br>안락하고 편안한 공간으로 보답하겠습니다.
         <a href="/bbs/content.php?co_id=guide05"><button>병원둘러보기</button></a>
      </div>
   </div>
   <div class="call_time">
      <div class="call"><span class="bt">전화상담 및 예약</span></br>궁금하신 점 있으시면 연락주세요!<!-- </br>친절히 상담해 드리겠습니다. -->
         <p class="bt2">053.624.2299<br/>053.625.3000</p>
      </div>
      <div class="time">
         <span class="bt">진료시간 안내</span><br/>
         평일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;오전 09:00~오후 05:40<br/>
         토요일&nbsp;&nbsp;&nbsp;오전 09:00~오후 12:30<br/>
         점심&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;오전 12:30~오후 01:30</br>
         <p class="bt2">일/공휴일 휴진</p>
      </div>
   </div>
</div>
<!--이미지 아래 내용 끝-->

<!--지도 시작-->
<div class="location">대구광역시 남구 현충로 516 실버타운
   <a href="http://benzcls.ezdns.co.kr/bbs/content.php?co_id=about04"><button class="btn_map">위치안내 자세히 보기</button></a>
</div>

<link rel="stylesheet" type="text/css" href="http://www.hduk.co.kr/theme/basic/css/slick.css"/>
<link rel="stylesheet" type="text/css" href="http://www.hduk.co.kr/theme/basic/css/slick-theme.css"/>

 <div id="ft_companys">
  <section class="slider regular">
      <div><a href="http://www.knuh.kr/" target="_blank"><img src="http://www.hduk.co.kr/theme/basic/img/help01.jpg" alt="경북대학교병원" /></a></div>
      <div><a href="http://www.knuch.kr/" target="_blank"><img src="http://www.hduk.co.kr/theme/basic/img/help02.jpg" alt="칠곡경북대학교병원" /></a></div>
      <div><a href="https://yumc.ac.kr/" target="_blank"><img src="http://www.hduk.co.kr/theme/basic/img/help03.jpg" alt="영남대학교병원" /></a></div>
      <div><a href="http://www.dcmc.co.kr/" target="_blank"><img src="http://www.hduk.co.kr/theme/basic/img/help04.jpg" alt="대구가톨릭대학교병원" /></a></div>
      <div><a href="http://www.dsmc.or.kr/" target="_blank"><img src="http://www.hduk.co.kr/theme/basic/img/help05.jpg" alt="계명대학교 동산의료원" /></a></div>
  </section>
  </div>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="http://www.hduk.co.kr/theme/basic/js/slick.min.js"></script>
<script type="text/javascript">
   $('.regular').slick({
      dots: true,
      slidesToShow: 5,
      slidesToScroll: 1,
      autoplay: true,
      autoplaySpeed: 3000,
   });
</script>

    </div>
</div>

<!-- } 콘텐츠 끝 -->

<hr>

<!-- 하단 시작 { -->
<div id="ft">
   
    <div id="ft_copy">
      <ul>
            <li><a href="/bbs/content.php?co_id=privacy" title="개인정보취급방침">개인정보취급방침</a></li>
         <li><img src="../theme/basic/img/dot.png"></li>
            <li><a href="/bbs/content.php?co_id=provision" title="이용약관">이용약관</a></li>
         <li><img src="../theme/basic/img/dot.png"></li>
            <li><a href="/bbs/content.php?co_id=about01" title="병원소개">병원소개</a></li>
         <li><img src="../theme/basic/img/dot.png"></li>
            <li><a href="/bbs/content.php?co_id=about04" title="위치안내">위치안내</a></li>
         <li><img src="../theme/basic/img/dot.png"></li>
         <li><a href="/bbs/board.php?bo_table=counsel" title="온라인상담">온라인상담</a></li>
         <li><a href="#hd" id="ft_totop">상단으로</a></li>
      </ul>
   </div>
</div>

 <div id="ft_last">
   <div id="ft_last_text">
      <ul>
         <li>실버타운</li>
         <li>대표자 : 이우영</li>
         <li>대표번호 : 01087823489</li>
         <li>사업자등록번호 : 1111.11..1.1.</li>
         <li>주소 : 대구광역시 어딘가</li>
         <li>장례식장 : 053)666-6666</li><br></br></br>
         <li>Copyright(c) 실버타운.All Rights Reserved.</li>
      </ul>
   </div>
 </div>

<script>
$(function() {
    // 폰트 리사이즈 쿠키있으면 실행
    font_resize("container", get_cookie("ck_font_resize_rmv_class"), get_cookie("ck_font_resize_add_class"));
});
</script>


</body>
</html>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
   <script type="text/javascript">
      $(document).ready(function() {

         //When page loads...
         $(".tab_content").hide(); //Hide all content
         $("ul.tabs li:first").addClass("active").show(); //Activate first tab
         $(".tab_content:first").show(); //Show first tab content

         //On Click Event
         $("ul.tabs li").click(function() {

            $("ul.tabs li").removeClass("active"); //Remove any "active" class
            $(this).addClass("active"); //Add "active" class to selected tab
            $(".tab_content").hide(); //Hide all tab content

            var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
            $(activeTab).fadeIn(); //Fade in the active ID content
            return false;
         });

      });
   </script>
