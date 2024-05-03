<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />  
<!DOCTYPE html>
<html>
<style>
	* {margin:0; padding:0; box-sizing:border-box;}
	html, body { width:100%; min-width:100%; box-sizing:border-box; overflow-x:hidden;}
	
	hr { box-sizing:content-box;  }
	
	.temp-header { width:100%; background-color: #848c45; height:90px; text-align:center; 
		line-height:90px; display:block; box-sizing:border-box;}
	#header::after { content:""; display:block; width:100%; clear:both; }
	
	#contents { width:100%; min-height:100vh; margin-bottom:5rem; box-sizing:border-box; }
	#contents::after { content:""; display:block; width:100%; clear:both; }
	#contents .page { clear:both; width:1200px; margin:0 auto;}
	.page .page-title { margin-top : 2rem; margin-bottom:1.5rem; padding-left:20px;}
	.page .lst-food { clear:both; width:1170px; margin:0 auto; min-width:1140px;}
    .lst-food .food-test { width: 370px; float:left; padding-bottom:50px; height:485px;
     border-radius:10px 10px 0px 0px; box-shadow:4px 4px 6px #66666625; margin: 20px 10px 0 10px;}
    /* @media (max-width:1198px) {
    	.food-test {width:617px; float:left;  }
    }
    @media (max-width:798px) {
    	.food-test {width:100%; float:left; min-width:399px;}
    } */
    
    .food-test li {  overflow:hidden; box-sizing:border-box; }
	.lst-food .food-test figure { display:block; width: 100%; height:auto; aspect-ratio:4/3;}
    .lst-food .food-test li span { display:block; padding-left:18px; padding-top: 18px; }
	.lst-food .food-test .item_tit {font-weight:600; font-size:20px;}
	.lst-food .food-test .item_tit:hover {text-decoration:underline;}
	
	.page .buttons { clear:both;}
	 #footer { width:100%; background-color: #000; height:200px; padding:20px; box-sizing:border-box;}
	.temp-footer { width:1200px; height:100%; text-align:left; color:#999;
		display:block; margin: 0 auto; }
	
	
	
</style>
<head>
<meta charset="EUC-KR">
<title>경주시 문화관광 - 식도락</title>
<script src="${path0 }/js/jquery-3.2.1.min.js"></script>

</head>
<body>
<div id="header">
	<div class="temp-header">메뉴바</div>
</div>
<div id="contents">
	<section class="page">
		<h2 class="page-title">식도락</h2>
		<hr>
		<div class="lst-food" id="lst-food">
			<c:if test="${not empty foodList }">
			<c:forEach var="dto" items="${foodList }">
				<a href="${path0 }/GetFood.do?ftype=all&fno=${dto.fno}">
				<div class="food-test" id="food-test">
					<ul class="food-ul">
						<li><!-- 사진 위치  -->
							<figure style="background-color:#ebe1e1; text-align:center;"><p>사진</p></figure>
						</li>
						<li><span class="item_tit">${dto.fname }</span></li>
						<li><span class="item_type">${dto.ftype }</span></li>
						<li><span class="item_tel">${dto.ftel }</span></li>
						<li><span class="item_addr">${dto.faddr }</span></li>
					</ul>
				</div>
				</a>
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
<script>
	
</script>
</body>
</html>