<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" /> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gyeongju</title>
    <%@ include file="/head.jsp" %>
    <style>
#contents { width: 100%; background-repeat: no-repeat; top: 0px; left: 0px; overflow: hidden;}

.con_1 { clear:both; width:1400px; height: auto; margin: 0 auto; overflow: hidden;}
.con_title1 { color: #101010; font-family: Noto Sans KR; font-weight: 600; font-size: 40px; opacity: 1; text-align: left; margin-top: 80px; float: left;}
.con_2 { clear:both; width:1400px; margin: 0 auto; overflow: hidden;}

#btn { float:right; margin-top: 90px;}
#btn p a { padding: 8px 14px; background-color: #333; color:#FFF; border-radius:100px; font-family: Noto Sans KR; font-size:16pt; font-weight: 500; }
#btn p a:hover { background-color: #598ee4; }

.v_1 { width: 456px; height: 538px; background: url("./images/img1.png"); overflow: hidden; margin-top: 40px; margin-right: 16px; float:left;}
.v_2 { width: 456px; height: 538px; background: url("./images/img2.png"); overflow: hidden; margin-top: 40px; margin-right: 16px; float:left;}
.v_3 { width: 456px; height: 538px; background: url("./images/img3.png"); overflow: hidden; margin-top: 40px; float:left;}

.con3_txt { width: 100%; margin: auto; margin-top: 12.6%; color: #FFF; font-family: HSBomBaram; font-weight: Regular; font-size: 20pt;
            text-align: center; position:absolute;}
.con3_img {width: 100%; height: auto; position: absolute; top: 1796px; overflow: hidden;}

.con_4 { clear:both; width:1400px; height: auto; margin: 0 auto; overflow: hidden;}
.con_title4 { color: #101010; font-family: Noto Sans KR; font-weight: 600; font-size: 40px; opacity: 1; text-align: left; margin-top: 754px; float: left;}
.con4_wrap { clear:both; width:1400px; margin: 0 auto; padding-top: 40px;}
.con4_lst1 { width: 279px; height: 262px; background-color: #FA8214; top: 0px; left: 0px; border-radius: 16px; overflow: hidden; 
             padding: 28px; float: left; margin-right: 20px;}
.con4_lst2 { width: 279px; height: 262px; background-color: #C1A483; top: 0px; left: 0px; border-radius: 16px; overflow: hidden;
             padding: 28px; float: left; margin-right: 20px;}
.con4_lst3 { width: 279px; height: 262px; background-color: #F1EEE4; top: 0px; left: 0px; border-radius: 16px; overflow: hidden;
             padding: 28px; float: left; margin-right: 20px;}
.con4_lst4 { width: 279px; height: 262px; background-color: #22333B; top: 0px; left: 0px; border-radius: 16px; overflow: hidden;
             padding: 28px;}

.item_txt1 { color: #FFF; font-family: Noto Sans KR; font-weight: Medium; font-size: 14pt; opacity: 80%; }
.item_txt2 { background-color: #FFE24B; color:#101010; border-radius:100px; width: 50px; height: 26px; padding-left: 10px; padding-bottom: 3px;
             font-family: Noto Sans KR; font-weight: 600; font-size: 14pt; }
.item_tit { color: #FFF; font-family: Noto Sans KR; font-weight: 400; font-size: 19pt; padding-top: 18px;}
.item_tit2 { color: #FFF; font-family: Noto Sans KR; font-weight: 620; font-size: 19pt; padding-bottom: 100px; }
.item_btn { color: #FFF; font-family: Noto Sans KR; font-weight: Medium; font-size: 14pt; opacity: 80%;}

#btn2 { float:right; margin-top: 764px;}
#btn2 p a { padding: 8px 20px; background-color: #333; color:#FFF; border-radius:100px; font-family: Noto Sans KR; font-size:16pt; font-weight: 500; }
#btn2 p a:hover { background-color: #452616;}


</style>
</head>
<body>
<div class="clr-fix">
 	<%@ include file="/header.jsp" %>
</div>
<main id="contents">
  <!--<div class="content_title">
  <p class="sub_txt1">문화와 역사가 숨쉬는</p>
  <p class="sub_txt2">경주</p>
  </div>
  -->
  <figure id="vs">
      <ul class="img_box">
          <li>
            <img src="./images/main1.png" alt="배너">
          </li>
      </ul>
  </figure>
  <div class="con_1">
      <h5 class="con_title1">경주여행 여기어때</h5>
      <div id="btn">
        <p><a href="${path0 }/PlaceList.do?ptype=all">여기어때 전체보기</a></p>
      </div>
  </div>
  <div class="con_2">
      <div class="v_1"></div>
      <div class="v_2"></div>
      <div class="v_3"></div>
  </div>
  <div class="con3_img">
    <a href="" class="con3_txt">World Cultural Heritage</a>
    <img src="./images/img4.png" alt="">
  </div>
  <div class="con_4">
    <h5 class="con_title4">경주의 정보를 한 눈에!</h5>
    <div id="btn2">
      <p><a href="">공지사항 전체보기</a></p>
    </div>
  </div>
  <div class="con4_wrap">
    <ul class="con4_lst1">
      <li>
        <p class="item_txt1">이달의 소식</p>
        <h2 class="item_tit">2024 경주 국악여행</h2>
        <h2 class="item_tit2">국악열전</h2>
        <a href="" class="item_btn">자세히 보기</a>
        <a href="" class="item_icon"><img src="./images/con4_btn.png"></a>
      </li>
    </ul>
    <ul class="con4_lst2">
      <li>
        <p class="item_txt1">이달의 소식</p>
        <h2 class="item_tit">2024 형산강</h2>
        <h2 class="item_tit2">연등문화축제</h2>
        <a href="" class="item_btn">자세히 보기</a>
        <a href="" class="item_icon"><img src="./images/con4_btn.png"></a>
      </li>
    </ul>
    <ul class="con4_lst3">
      <li>
        <p class="item_txt1" style="color: #333; font-weight: 500;">이달의 소식</p>
        <h2 class="item_tit" style="color: #101010;">APEC 경주유치기원</h2>
        <h2 class="item_tit2" style="color: #101010;">경주국제뮤직페스티벌</h2>
        <a href="" class="item_btn" style="color: #333; font-weight: 500;">자세히 보기</a>
        <a href="" class="item_icon"><img src="./images/con4_btn2.png"></a>
      </li>
    </ul>
    <ul class="con4_lst4">
      <li>
        <p class="item_txt1">이달의 소식</p>
        <h2 class="item_tit">2024 형산강</h2>
        <h2 class="item_tit2">연등문화축제</h2>
        <a href="" class="item_btn">자세히 보기</a>
        <a href="" class="item_icon"><img src="./images/con4_btn.png"></a>
      </li>
    </ul>
  </div>
</main>
<div class="clr-fix">
    <%@ include file="/footer.jsp" %>
</div>
</body>
</html>