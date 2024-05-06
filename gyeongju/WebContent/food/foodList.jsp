<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" /> 
<!DOCTYPE html>
<html>
<style>
	* {margin:0; padding:0; box-sizing:border-box; list-style:none;}
	html, body { width:100%; box-sizing:border-box; }
	ul {list-style:none;}
	
	hr { box-sizing:content-box;  }
	
	.temp-header { width:100%; background-color: #848c45; height:90px; text-align:center; 
		line-height:90px; display:block; box-sizing:border-box; min-width:1200px;}
	#header::after { content:""; display:block; width:100%; clear:both; }
	
	#contents { width:100%; min-height:100vh; margin-bottom:5rem; box-sizing:border-box; min-width:1200px;}
	#contents::after { content:""; display:block; width:100%; clear:both; }
	#contents .page { clear:both; width:1200px; margin:0 auto;}
	.page .page-title { margin-top : 2rem; margin-bottom:1.5rem; padding-left:20px;}
	.page .lst-food { clear:both; width:1170px; margin:0 auto; min-width:1170px; margin-bottom:50px; }
	.page .lst-food::after { content:""; display:block; width:100%; clear:both; }
    .lst-food .food-div { width: 370px; float:left; padding-bottom:50px; height:485px;
     border-radius:10px 10px 0px 0px; box-shadow:4px 4px 6px #66666625; margin: 20px 10px 0 10px;}
    /* @media (max-width:1198px) {
    	.food-div {width:617px; float:left;  }
    }
    @media (max-width:798px) {
    	.food-div {width:100%; float:left; min-width:399px;}
    } */
    
    .food-div li {  overflow:hidden; box-sizing:border-box; }
	.lst-food .food-div .fig { display:block; width: 100%; height:auto; aspect-ratio:4/3; overflow:hidden; margin:0 auto;}
	.lst-food .food-div .fig img {width:100%; height:100%; object-fit:cover; transition:0.5s; }
	.lst-food .food-div:hover .fig img {transform:scale(1.1);}
	.lst-food .food-div:hover .item_tit {font-weight: 600;}
	
    .lst-food .food-div li span { display:block; padding-left:18px; padding-top: 18px; }
	.lst-food .food-div .item_tit {font-weight:500; font-size:20px;}
	
	.page .buttons { clear:both; margin-top:30px;}
	 #footer { width:100%; background-color: #000; height:200px; padding:20px 0; box-sizing:border-box; min-width:1200px;}
	.temp-footer { width:1200px; height:100%; text-align:left; color:#999;
		display:block; margin: 0 auto; }
	
	
	.food-tab { width:100%; float:left; margin-bottom:20px; }
	.food-tab .foodtab-list {width:100%; float:left;}
	.food-tab .foodtab-list li {position:relative; float:left; height:48px; line-height:47px;
		text-align:center; border: 1px solid #eaeaee; font-size:15px; width:300px;}
	.food-tab .foodtab-list li a {width:100%; height:100%; text-decoration:none; color:#888888;}
	.food-tab .foodtab-list li.active {border-top:2px solid #7192d0; background-color:#f7f7f7;}
	
	.emptylist { width:500px; text-align:center; margin:30px auto;}
</style>
<head>
<meta charset="UTF-8">
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
		<div class="food-tab">
			<ul class="foodtab-list">
				<li><a href="${path0 }/FoodList.do?ftype=all">전체</a></li>
				<li><a href="${path0 }/FoodList.do?ftype=rest">음식점</a></li>
				<li><a href="${path0 }/FoodList.do?ftype=cafe">카페</a></li>
				<li><a href="${path0 }/FoodList.do?ftype=etc">기타</a></li>
			</ul>
		</div>
		<hr>
		<div class="lst-food" id="lst-food">
				<c:if test="${ftype.equals('all') }">
					<c:if test="${not empty foodList }">
					<c:forEach var="dto" items="${foodList }">
						<a href="${path0}/GetFood.do?ftype=all&fno=${dto.fno}">
						<div class="food-div" id="food-div">
							<div class="card-image">
								<figure class="fig"><img src="${path0 }/upload/food/${dto.filename}" alt="식도락${dto.fno }"></figure>
							</div>
							<div class="card-body">
							<ul class="food-ul">
								<li><span class="item_tit">${dto.fname }</span></li>
								<li><span class="item_type">${dto.ftype }</span></li>
								<li><span class="item_tel">${dto.ftel }</span></li>
								<li><span class="item_addr">${dto.faddr }</span></li>
							</ul>
							</div>
						</div>
						</a>
					</c:forEach>
					</c:if>
					<c:if test="${empty foodList }">
						<div class="emptylist"><h3>등록된 식도락 정보가 없습니다.</h3></div>
					</c:if>
				</c:if>
				<c:if test="${ftype.equals('rest') }">
					<c:if test="${not empty foodList }">
					<c:forEach var="dto" items="${foodList }">
						<a href="${path0}/GetFood.do?ftype=rest&fno=${dto.fno}">
						<div class="food-div" id="food-div">
							<div class="card-image">
								<figure class="fig"><img src="${path0 }/upload/food/${dto.filename}" alt="식도락${dto.fno }"></figure>
							</div>
							<div class="card-body">
							<ul class="food-ul">
								<li><span class="item_tit">${dto.fname }</span></li>
								<li><span class="item_type">${dto.ftype }</span></li>
								<li><span class="item_tel">${dto.ftel }</span></li>
								<li><span class="item_addr">${dto.faddr }</span></li>
							</ul>
							</div>
						</div>
						</a>
					</c:forEach>
					</c:if>
					<c:if test="${empty foodList }">
						<div class="emptylist"><h3>등록된 식도락 정보가 없습니다.</h3></div>
					</c:if>
				</c:if>
				<c:if test="${ftype.equals('cafe') }">
					<c:if test="${not empty foodList }">
					<c:forEach var="dto" items="${foodList }">
						<a href="${path0}/GetFood.do?ftype=cafe&fno=${dto.fno}">
						<div class="food-div" id="food-div">
							<div class="card-image">
								<figure class="fig"><img src="${path0 }/upload/food/${dto.filename}" alt="식도락${dto.fno }"></figure>
							</div>
							<div class="card-body">
							<ul class="food-ul">
								<li><span class="item_tit">${dto.fname }</span></li>
								<li><span class="item_type">${dto.ftype }</span></li>
								<li><span class="item_tel">${dto.ftel }</span></li>
								<li><span class="item_addr">${dto.faddr }</span></li>
							</ul>
							</div>
						</div>
						</a>
					</c:forEach>
					</c:if>
					<c:if test="${empty foodList }">
						<div class="emptylist"><h3>등록된 식도락 정보가 없습니다.</h3></div>
					</c:if>
				</c:if>
				<c:if test="${ftype.equals('etc') }">
					<c:if test="${not empty foodList }">
					<c:forEach var="dto" items="${foodList }">
						<a href="${path0}/GetFood.do?ftype=etc&fno=${dto.fno}">
						<div class="food-div" id="food-div">
							<div class="card-image">
								<figure class="fig"><img src="${path0 }/upload/food/${dto.filename}" alt="식도락${dto.fno }"></figure>
							</div>
							<div class="card-body">
							<ul class="food-ul">
								<li><span class="item_tit">${dto.fname }</span></li>
								<li><span class="item_type">${dto.ftype }</span></li>
								<li><span class="item_tel">${dto.ftel }</span></li>
								<li><span class="item_addr">${dto.faddr }</span></li>
							</ul>
							</div>
						</div>
						</a>
					</c:forEach>
					</c:if>
					<c:if test="${empty foodList }">
						<div class="emptylist"><h3>등록된 식도락 정보가 없습니다.</h3></div>
					</c:if>
				</c:if>
				<!-- test list -->
				<c:if test="${ftype.equals('test') }">
					<c:if test="${not empty foodList }">
					<c:forEach var="dto" items="${foodList }">
						<a href="${path0}/GetFood.do?ftype=test&fno=${dto.fno}">
						<div class="food-div" id="food-div">
							<div class="card-image">
								<figure class="fig"><img src="${path0 }/upload/food/${dto.filename}" alt="식도락${dto.fno }"></figure>
							</div>
							<div class="card-body">
							<ul class="food-ul">
								<li><span class="item_tit">${dto.fname }</span></li>
								<li><span class="item_type">${dto.ftype }</span></li>
								<li><span class="item_tel">${dto.ftel }</span></li>
								<li><span class="item_addr">${dto.faddr }</span></li>
							</ul>
							</div>
						</div>
						</a>
					</c:forEach>
					</c:if>
					<c:if test="${empty foodList }">
						<div class="emptylist"><h3>등록된 식도락 정보가 없습니다.</h3></div>
					</c:if>
				</c:if>
				
		</div>
		<div class="buttons">
			<a role="button" href="${path0 }/food/insertFood.jsp?ftype=${ftype}">식도락 등록</a>
		</div>
	</section>
</div>
<div id="footer">
	<div class="temp-footer">푸터</div>
</div>
<script>
	var ftype = "<%=request.getParameter("ftype")%>";
	if (ftype == 'all') {
		document.querySelector(".foodtab-list li:nth-child(1)").classList.add('active');
	} else if (ftype == 'rest') {
		document.querySelector(".foodtab-list li:nth-child(2)").classList.add('active');
	} else if (ftype == 'cafe') {
		document.querySelector(".foodtab-list li:nth-child(3)").classList.add('active');
	} else if (ftype == 'etc') {
		document.querySelector(".foodtab-list li:nth-child(4)").classList.add('active');
	} 
</script>
</body>
</html>