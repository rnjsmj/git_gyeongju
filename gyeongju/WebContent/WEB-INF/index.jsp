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
.clr-fix:after {content:""; display:block; width:100%; clear:both;}
.content_title{ margin: 0 auto; padding: 0; width: 220px;}
.sub_txt1 { color: #FFF; position: absolute; top: 172px; font-family: MaruBuri-Regular; font-weight: SemiBold; font-size: 32px;}
.sub_txt2 { color: #FFF; position: absolute; top: 216px; left: 46%; font-family: HSBombaram; font-weight: Regular; font-size: 120px;}
.sub_txt3 { color: #FFF; position: absolute; top: 75.2%; font-family: Noto Sans KR; font-weight: Regular; font-size: 14pt; text-align: center; margin:0 auto;}
#btn { margin: 0 auto; padding: 0; position: absolute; top: 82.8%; left: 48.3%;}
#btn p a { padding: 4px 12px 6px 12px; border: 1px solid #999; color:#FFF; border-radius:100px; font-family: Noto Sans KR; font-size:15pt; font-weight: 500; }
#btn p a:hover { border: 2px solid #FFF; }
    
#contents { width: 100%; background-repeat: no-repeat; top: 0px; left: 0px; overflow: hidden;}

.con_1 { clear:both; width:1400px; height: auto; margin: 0 auto; overflow: hidden;}
.con_title1 { color: #101010; font-family: Noto Sans KR; font-weight: 600; font-size: 40px; opacity: 1; text-align: left; margin-top: 80px; float: left;}
.con_2 { clear:both; width:1400px; margin: 0 auto; overflow: hidden;}

#btn1 { float:right; margin-top: 90px;}
#btn1 p a { padding: 8px 14px; background-color: #333; color:#FFF; border-radius:100px; font-family: Noto Sans KR; font-size:16pt; font-weight: 500; }
#btn1 p a:hover { background-color: #598ee4; }

.v_1 { width: 456px; height: 538px; background: url("./images/img1.png"); overflow: hidden; margin-top: 40px; margin-right: 16px; float:left;}
.v_2 { width: 456px; height: 538px; background: url("./images/img2.png"); overflow: hidden; margin-top: 40px; margin-right: 16px; float:left;}
.v_3 { width: 456px; height: 538px; background: url("./images/img3.png"); overflow: hidden; margin-top: 40px; float:left;}

.con3_txt { width: 100%; margin: 0 auto; top: 45%; color: #FFF; font-family: HSBomBaram; font-weight: Regular; font-size: 20pt;
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

.top-button { display: none; position: fixed; bottom: 30px; right: 5%; z-index: 999; border: none; background-color: #999999; color: #FFF; margin-bottom: 194px;
    cursor: pointer; padding: 10px 10px 12px 10px; font-size: 12pt; font-family: Noto Sans KR; font-weight: 600;}

.top-button:hover { background-color: #101010; color: #FFF;}


</style>
</head>
<body>
<div id="header" class="clr-fix">
 	<%@ include file="/header.jsp" %>
</div>
<main id="contents">
  <div class="content_title clr-fix">
  <p class="sub_txt1">문화와 역사가 숨쉬는</p>
  <p class="sub_txt2">경주</p>
  <div id="btn">
    <p><a href="${path0 }/intro/sub_history.jsp">자세히 보기</a></p>
  </div>
  <p class="sub_txt3">시간의 선을 넘어 이어온<br>천년의 경주로 여러분을 초대합니다.</p>
  </div>
  <figure id="vs" >
      <ul class="img_box">
          <li>
            <img src="${path0 }/images/main.png" alt="배너">
          </li>
      </ul>
  </figure>
  <div class="con_1">
      <h5 class="con_title1">경주여행 여기어때</h5>
      <div id="btn1">
        <p><a href="${path0 }/PlaceList.do?ptype=all">여기어때 전체보기</a></p>
      </div>
  </div>
  <div class="con_2">
      <a href="http://localhost:8080/gyeongju/GetPlace.do?ptype=all&pno=64"><div class="v_1"></div></a>
      <a href="http://localhost:8080/gyeongju/GetPlace.do?ptype=all&pno=63"><div class="v_2"></div></a>
      <a href="http://localhost:8080/gyeongju/GetPlace.do?ptype=all&pno=62"><div class="v_3"></div></a>
  </div>
  <div class="con3_img">
    <a href="" class="con3_txt">World Cultural Heritage</a>
    <img src="./images/img4.png" alt="">
  </div>
  <div class="con_4">
    <h5 class="con_title4">경주의 정보를 한 눈에!</h5>
    <div id="btn2">
      <p><a href="${path0 }/CommunityList.do">공지사항 전체보기</a></p>
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
<button id="topBtn" class="top-button">TOP</button>
<script src="./js/move-top.js"></script>
<div id="footer" class="clr-fix">
    <%@ include file="/footer.jsp" %>
</div>
</body>
</html>