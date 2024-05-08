<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경주시 문화관광 - 여기어때</title>
<style>
	* {margin:0; padding:0;}
	html, body { width:100%; box-sizing:border-box; }
	a {text-decoration:none;}
	
	.temp-header { width:100%; background-color: #848c45; height:90px; text-align:center; line-height:90px; display:block; min-width:1200px;}
	#header::after { content:""; display:block; width:100%; clear:both; }
	
	#contents { min-height:100vh; margin-bottom:5rem; min-width:1200px;}
	#contents::after { content:""; display:block; width:100%; clear:both; }
	#contents .page { width:1200px; margin:0 auto; }
	.page .page-title { margin-top : 2rem; margin-bottom:1.5rem; padding-left:20px;}
	.page .place-wrap { width:100%; box-sizing:border-box; padding:20px 0;}
	.page .place-wrap .place-col1 {width:50%; float:left;}
	.page .place-wrap .place-col1 .fig {display:block; width:90%; height:auto; aspect-ratio:16/9; margin:0 auto;}
	.page .place-wrap .place-col1 .fig img {width:100%; height:auto;}
	.page .place-wrap .place-col2 {width:50%; float:right;}
	.page .place-wrap .place-col2 .place-dtl {width:100%; box-sizing:border-box; padding-right:5%; }
	.page .place-wrap .place-col2 .place-dtl h3 {box-sizing:border-box; padding:15px 5px;}
	.page .place-wrap .place-col2 .place-dtl ul {box-sizing:border-box; list-style:none; padding:15px 5px;}
	.page .place-wrap .place-col2 .place-dtl p {box-sizing:border-box; padding:15px 5px;}
	
	
	.page .buttons { clear:both;}
	 #footer { width:100%; background-color: #000; height:200px; padding:20px 0; min-width:1200px;}
	.temp-footer { width:1200px; height:100%; text-align:left; color:#999;
		display:block; margin: 0 auto; }
</style>
</head>
<body>
<div id="header">
	<div class="temp-header">메뉴바</div>
</div>
<div id="contents">
	<section class="page">
		<h2 class="page-title">여기어때 상세보기</h2>
		<hr>
		<div class="place-wrap">
			<div class="place-col1">
				<figure class="fig"><img src="${path0 }/upload/place/${place.filename}" alt="여기어때${place.pno }"></figure>
			</div>
			<div class="place-col2">
				<div class="place-dtl">
				<h3>${place.pname }</h3>
				<hr>
				<ul>
					<li><strong>분류</strong>    ${place.ptype }</li>
					<li><strong>주소</strong>    ${place.paddr }</li>
					<li><strong>연락처</strong>   ${place.ptel }</li>
				</ul>
				<hr>
				<p>${place.pcomm }<p>
				</div>
		</div>
		</div>
		<div class="buttons">
			<a role="button" id="delbtn">삭제</a>
			<a href="${path0 }/PlaceUpdate.do?ptype=${ptype }&pno=${place.pno }" role="button">수정</a>
			<a role="button" href="${path0 }/PlaceList.do?ptype=${ptype}">목록</a>
			
		</div>
	</section>
</div>
<div id="footer">
	<div class="temp-footer">푸터</div>
</div>
<script>
	var delbtn = document.getElementById('delbtn');
	delbtn.addEventListener("click", function() {
		if(confirm("해당 여기어때 정보를 삭제하시겠습니까?")) {
			location.replace("${path0 }/PlaceDelete.do?ptype=${ptype }&pno=${place.pno }");
		}
	})
</script>
</body>
</html>