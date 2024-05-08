<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경주시 문화관광 - 식도락</title>
<%@ include file="/head.jsp" %>
<style>
	a {text-decoration:none;}
	#header #hd #gnb a.dp { color:#101010;}
	
	#contents {  margin-bottom:150px; min-width:1200px; box-sizing:border-box;}
	#contents::after { content:""; display:block; width:100%; clear:both; }
	#contents .page { width:1200px; margin:0 auto; margin-top:160px; }
	.page .page-title { margin-top : 2rem; margin-bottom:1.5rem; padding-left:20px; font-family: 'HSBombaram'; font-size:40px; letter-spacing:3px;}
	.page .food-wrap { width:100%;  padding:20px 0; font-family: Noto Sans KR; height }
	.page .food-wrap .food-col1 {width:50%; float:left;}
	.page .food-wrap .food-col1 .fig {display:block; width:540px; height:540px; margin:0 auto;}
	.page .food-wrap .food-col1 .fig img { width:100%; height:100%; object-fit:cover;}
	.page .food-wrap .food-col2 {width:50%; float:right;}
	.page .food-wrap .food-col2 .food-dtl {width:100%; box-sizing:border-box; padding-right:5%; }
	.page .food-wrap .food-col2 .food-dtl .fname { padding:15px 5px; font-family: 'MaruBuri-Regular'; font-size:37px; font-weight:600;}
	.page .food-wrap .food-col2 .food-dtl ul {list-style:none; padding:15px 5px;}
	.page .food-wrap .food-col2 .food-dtl p {padding:15px 5px;}
	
	.page .buttons { clear:both; margin-top:50px; float:right; }
	.page .buttons a { display:inline-block;  border:1px solid #333; text-align:center; padding:7px 14px; border-radius:8px; margin-left:5px;}
</style>
</head>
<body>
<div id="header" class="clr-fix">
 	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page">
		<p class="page-title">식도락</p>
		<hr>
		<div class="food-wrap clr-fix">
			<div class="food-col1">
				<figure class="fig"><img src="${path0 }/upload/food/${food.filename}" alt="식도락${food.fno }"></figure>
			</div>
			<div class="food-col2">
				<div class="food-dtl">
				<p class="fname">${food.fname }</p>
				<hr>
				<ul>
					<li><strong>분류</strong>    ${food.ftype }</li>
					<li><strong>주소</strong>    ${food.faddr }</li>
					<li><strong>연락처</strong>   ${food.ftel }</li>
				</ul>
				<hr>
				<p>${food.fcomm }<p>
				</div>
			</div>
		</div>
		<div class="buttons">
			<a role="button" id="delbtn">삭제</a>
			<a href="${path0 }/FoodUpdate.do?ftype=${ftype }&fno=${food.fno }" role="button">수정</a>
			<a role="button" href="${path0 }/FoodList.do?ftype=${ftype}">목록</a>
			
		</div>
	</section>
</div>
<div class="clr-fix">
 	<%@ include file="/footer.jsp" %>
</div>
<script>
	var delbtn = document.getElementById('delbtn');
	delbtn.addEventListener("click", function() {
		if(confirm("해당 식도락 정보를 삭제하시겠습니까?")) {
			location.replace("${path0 }/FoodDelete.do?ftype=${ftype }&fno=${food.fno }");
		}
	})
</script>
</body>
</html>