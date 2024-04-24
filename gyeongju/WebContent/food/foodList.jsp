<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />    
<!DOCTYPE html>
<html>
<style>
	* {margin:0; padding:0;}
	body { width:100%; overflow-x:hidden;}
	
	.temp-header { width:100%; background-color: #848c45; height:90px; text-align:center; line-height:90px; display:block;}
	#header::after { content:""; display:block; width:100%; clear:both; }
	
	#contents { min-height:100vh; margin-bottom:5rem;}
	#contents::after { content:""; display:block; width:100%; clear:both; }
	#contents .page { width:1200px; margin:0 auto; }
	.page .page-title { margin-top : 2rem; margin-bottom:1.5rem; padding-left:20px;}
	.page .lst-food {padding:10px 0; clear:both;}
    .food-test { width: 33.3%; float:left; }
    .food-test ul {margin:0 auto;}
    .food-test li {  width: 95%; 
        height: 415px; overflow:hidden; box-sizing:border-box;
     border-radius:10px 10px 0px 0px; box-shadow:5px 5px 5px #666; margin:20px auto;}
	.lst-food .food-test li a figure { display:block; width: 100%; height:auto; aspect-ratio:16/9;}
    .lst-food .food-test li span { display:block; padding-left:18px; padding-top: 18px; }
	
	.page .buttons { clear:both;}
	 #footer { width:100%; background-color: #000; height:200px; padding:20px;}
	.temp-footer { width:1200px; height:100%; text-align:left; color:#999;
		display:block; margin: 0 auto;}
	
	
	
</style>
<head>
<meta charset="EUC-KR">
<title>경주시 문화관광 - 식도락</title>
</head>
<body>
<div id="header">
	<div class="temp-header">메뉴바</div>
</div>
<div id="contents">
	<section class="page">
		<h2 class="page-title">식도락</h2>
		<hr>
		<div class="lst-food">
			<c:if test="${not empty foodList }">
			<c:forEach var="dto" items="${foodList }">
				<div class="food-test">
					<ul class="food-ul">
						<li><a href="${path0 }/GetFood.do?ftype=all&fno=${dto.fno}">
						<!-- 사진 위치  -->
						<figure style="background-color:#ebe1e1; text-align:center;">사진</figure>
						<span class="item_tit">${dto.fname }</span></a>
						<span class="item_type">${dto.ftype }</span>
						<span class="item_tel">${dto.ftel }</span>
						<span class="item_addr">${dto.faddr }</span></li>
					</ul>
				</div>
			</c:forEach>
			</c:if>
		</div>
		<div class="buttons">
			<a role="button" href="${path0 }/FoodInsert.do">식도락 등록</a>
		</div>
	</section>
</div>
<div id="footer">
	<div class="temp-footer">푸터</div>
</div>
</body>
</html>