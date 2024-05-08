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
	.page .lst-place { clear:both; width:1170px; margin:0 auto; min-width:1170px; margin-bottom:50px; }
	.page .lst-place::after { content:""; display:block; width:100%; clear:both; }
    .lst-place .place-div { width: 370px; float:left; padding-bottom:50px; height:485px;
     border-radius:10px 10px 0px 0px; box-shadow:4px 4px 6px #66666625; margin: 20px 10px 0 10px;}
    
    .place-div li {  overflow:hidden; box-sizing:border-box; }
	.lst-place .place-div .fig { display:block; width: 100%; height:auto; aspect-ratio:4/3; overflow:hidden; margin:0 auto;}
	.lst-place .place-div .fig img {width:100%; height:100%; object-fit:cover; transition:0.5s; }
	.lst-place .place-div:hover .fig img {transform:scale(1.1);}
    .lst-place .place-div:hover .item_tit {font-weight:600;}
    
    .lst-place .place-div li span { display:block; padding-left:18px; padding-top: 18px; }
	.lst-place .place-div .item_tit {font-weight:600; font-size:20px;}
	
	.page .buttons { clear:both; margin-top:30px;}
	 #footer { width:100%; background-color: #000; height:200px; padding:20px 0; box-sizing:border-box; min-width:1200px;}
	.temp-footer { width:1200px; height:100%; text-align:left; color:#999;
		display:block; margin: 0 auto; }
	
	
	.place-tab { width:100%; float:left; margin-bottom:20px; }
	.place-tab .placetab-list {width:100%; float:left;}
	.place-tab .placetab-list li {position:relative; float:left; height:48px; line-height:47px;
		text-align:center; border: 1px solid #eaeaee; font-size:15px; width:300px;}
	.place-tab .placetab-list li a {width:100%; height:100%; text-decoration:none; color:#888888;}
	.place-tab .placetab-list li.active {border-top:2px solid #7192d0; background-color:#f7f7f7;}
	
	.emptylist { width:500px; text-align:center; margin:30px auto;}
</style>
<head>
<meta charset="UTF-8">
<title>경주시 문화관광 - 여기어때</title>
<script src="${path0 }/js/jquery-3.2.1.min.js"></script>

</head>
<body>
<div id="header">
	<div class="temp-header">메뉴바</div>
</div>
<div id="contents">
	<section class="page">
		<h2 class="page-title">여기어때</h2>
		<div class="place-tab">
			<ul class="placetab-list">
				<li><a href="${path0 }/PlaceList.do?ptype=all">전체</a></li>
				<li><a href="${path0 }/PlaceList.do?ptype=curtural">문화재</a></li>
				<li><a href="${path0 }/PlaceList.do?ptype=theme">테마파크</a></li>
				<li><a href="${path0 }/PlaceList.do?ptype=beach">해변</a></li>
			</ul>
		</div>
		<hr>
		<div class="lst-place" id="lst-place">
				<c:if test="${ptype.equals('all') }">
					<c:if test="${not empty placeList }">
					<c:forEach var="dto" items="${placeList }">
						<a href="${path0}/GetPlace.do?ptype=all&pno=${dto.pno}">
						<div class="place-div" id="place-div">
							<div class="card-image">
								<figure class="fig"><img src="${path0 }/upload/place/${dto.filename }" alt="여기어때${dto.pno }"></figure>
							</div>
							<div class="card-body">
								<ul class="place-ul">
									<li><span class="item_tit">${dto.pname }</span></li>
									<li><span class="item_type">${dto.ptype }</span></li>
									<li><span class="item_tel">
										<c:if test="${empty dto.ptel }">
											정보 없음
										</c:if>
										<c:if test="${not empty dto.ptel }">
											${dto.ptel }
										</c:if></span></li>
									<li><span class="item_addr">${dto.paddr }</span></li>
								</ul>
							</div>
						</div>
						</a>
					</c:forEach>
					</c:if>
					<c:if test="${empty placeList }">
						<div class="emptylist"><h3>등록된 여기어때 정보가 없습니다.</h3></div>
					</c:if>
				</c:if>
				<c:if test="${ptype.equals('curtural') }">
					<c:if test="${not empty placeList }">
					<c:forEach var="dto" items="${placeList }">
						<a href="${path0}/GetPlace.do?ptype=curtural&pno=${dto.pno}">
						<div class="place-div" id="place-div">
							<div class="card-image">
								<figure class="fig"><img src="${path0 }/upload/place/${dto.filename }" alt="여기어때${dto.pno }"></figure>
							</div>
							<div class="card-body">
								<ul class="place-ul">
									<li><span class="item_tit">${dto.pname }</span></li>
									<li><span class="item_type">${dto.ptype }</span></li>
									<li><span class="item_tel">
										<c:if test="${empty dto.ptel }">
											정보 없음
										</c:if>
										<c:if test="${not empty dto.ptel }">
											${dto.ptel }
										</c:if></span></li>
									<li><span class="item_addr">${dto.paddr }</span></li>
								</ul>
							</div>
						</div>
						</a>
					</c:forEach>
					</c:if>
					<c:if test="${empty placeList }">
						<div class="emptylist"><h3>등록된 여기어때 정보가 없습니다.</h3></div>
					</c:if>
				</c:if>
				<c:if test="${ptype.equals('theme') }">
					<c:if test="${not empty placeList }">
					<c:forEach var="dto" items="${placeList }">
						<a href="${path0}/GetPlace.do?ptype=theme&pno=${dto.pno}">
						<div class="place-div" id="place-div">
							<div class="card-image">
								<figure class="fig"><img src="${path0 }/upload/place/${dto.filename }" alt="여기어때${dto.pno }"></figure>
							</div>
							<div class="card-body">
								<ul class="place-ul">
									<li><span class="item_tit">${dto.pname }</span></li>
									<li><span class="item_type">${dto.ptype }</span></li>
									<li><span class="item_tel">
										<c:if test="${empty dto.ptel }">
											정보 없음
										</c:if>
										<c:if test="${not empty dto.ptel }">
											${dto.ptel }
										</c:if></span></li>
									<li><span class="item_addr">${dto.paddr }</span></li>
								</ul>
							</div>
						</div>
						</a>
					</c:forEach>
					</c:if>
					<c:if test="${empty placeList }">
						<div class="emptylist"><h3>등록된 여기어때 정보가 없습니다.</h3></div>
					</c:if>
				</c:if>
				<c:if test="${ptype.equals('beach') }">
					<c:if test="${not empty placeList }">
					<c:forEach var="dto" items="${placeList }">
						<a href="${path0}/GetPlace.do?ptype=beach&pno=${dto.pno}">
						<div class="place-div" id="place-div">
							<div class="card-image">
								<figure class="fig"><img src="${path0 }/upload/place/${dto.filename }" alt="여기어때${dto.pno }"></figure>
							</div>
							<div class="card-body">
								<ul class="place-ul">
									<li><span class="item_tit">${dto.pname }</span></li>
									<li><span class="item_type">${dto.ptype }</span></li>
									<li><span class="item_tel">
										<c:if test="${empty dto.ptel }">
											정보 없음
										</c:if>
										<c:if test="${not empty dto.ptel }">
											${dto.ptel }
										</c:if></span></li>
									<li><span class="item_addr">${dto.paddr }</span></li>
								</ul>
							</div>
						</div>
						</a>
					</c:forEach>
					</c:if>
					<c:if test="${empty placeList }">
						<div class="emptylist"><h3>등록된 여기어때 정보가 없습니다.</h3></div>
					</c:if>
				</c:if>
				<!-- test list -->
				<c:if test="${ptype.equals('test') }">
					<c:if test="${not empty placeList }">
					<c:forEach var="dto" items="${placeList }">
						<a href="${path0}/GetPlace.do?ptype=test&pno=${dto.pno}">
						<div class="place-div" id="place-div">
							<div class="card-image">
								<figure class="fig"><img src="${path0 }/upload/place/${dto.filename }" alt="여기어때${dto.pno }"></figure>
							</div>
							<div class="card-body">
								<ul class="place-ul">
									<li><span class="item_tit">${dto.pname }</span></li>
									<li><span class="item_type">${dto.ptype }</span></li>
									<li><span class="item_tel">
										<c:if test="${empty dto.ptel }">
											정보 없음
										</c:if>
										<c:if test="${not empty dto.ptel }">
											${dto.ptel }
										</c:if></span></li>
									<li><span class="item_addr">${dto.paddr }</span></li>
								</ul>
							</div>
						</div>
						</a>
					</c:forEach>
					</c:if>
					<c:if test="${empty placeList }">
						<div class="emptylist"><h3>등록된 여기어때 정보가 없습니다.</h3></div>
					</c:if>
				</c:if>
				
		</div>
		<div class="paging">
			<ul class="page-list">
				
			</ul>
		</div>
		<div class="buttons">
			<a role="button" href="${path0 }/place/insertPlace.jsp?ptype=${ptype}">여기어때 등록</a>
		</div>
	</section>
</div>
<div id="footer">
	<div class="temp-footer">푸터</div>
</div>
<script>
	var ptype = "<%=request.getParameter("ptype")%>";
	if (ptype == 'all') {
		document.querySelector(".placetab-list li:nth-child(1)").classList.add('active');
	} else if (ptype == 'curtural') {
		document.querySelector(".placetab-list li:nth-child(2)").classList.add('active');
	} else if (ptype == 'theme') {
		document.querySelector(".placetab-list li:nth-child(3)").classList.add('active');
	} else if (ptype == 'beach') {
		document.querySelector(".placetab-list li:nth-child(4)").classList.add('active');
	} 
</script>
</body>
</html>