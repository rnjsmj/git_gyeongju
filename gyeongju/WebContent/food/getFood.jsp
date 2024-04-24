<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���ֽ� ��ȭ���� - �ĵ���</title>
<style>
	* {margin:0; padding:0;}
	body { width:100%; overflow-x:hidden;}
	
	.temp-header { width:100%; background-color: #848c45; height:90px; text-align:center; line-height:90px; display:block;}
	#header::after { content:""; display:block; width:100%; clear:both; }
	
	#contents { min-height:100vh; margin-bottom:5rem;}
	#contents::after { content:""; display:block; width:100%; clear:both; }
	#contents .page { width:1200px; margin:0 auto; }
	.page .page-title { margin-top : 2rem; margin-bottom:1.5rem; padding-left:20px;}
	.page .food-wrap { width:100%; box-sizing:border-box; padding:20px 0;}
	.page .food-wrap .food-col1 {width:50%; float:left;}
	.page .food-wrap .food-col1 figure {display:block; width:90%; height:auto; aspect-ratio:16/9; margin:0 auto;}
	.page .food-wrap .food-col2 {width:50%; float:right;}
	.page .food-wrap .food-col2 .food-dtl {width:100%; box-sizing:border-box; padding-right:5%; }
	.page .food-wrap .food-col2 .food-dtl h3 {box-sizing:border-box; padding:15px 5px;}
	.page .food-wrap .food-col2 .food-dtl ul {box-sizing:border-box; list-style:none; padding:15px 5px;}
	.page .food-wrap .food-col2 .food-dtl p {box-sizing:border-box; padding:15px 5px;}
	
	
	.page .buttons { clear:both;}
	 #footer { width:100%; background-color: #000; height:200px; padding:20px;}
	.temp-footer { width:1200px; height:100%; text-align:left; color:#999;
		display:block; margin: 0 auto;}
</style>
</head>
<body>
<div id="header">
	<div class="temp-header">�޴���</div>
</div>
<div id="contents">
	<section class="page">
		<h2 class="page-title">�ĵ��� �󼼺���</h2>
		<hr>
		<div class="food-wrap">
			<div class="food-col1">
				<figure style="background-color:#ebe1e1; text-align:center;">����</figure>
			</div>
			<div class="food-col2">
				<div class="food-dtl">
				<h3>${food.fname }</h3>
				<hr>
				<ul>
					<li><strong>�з�</strong>    ${food.ftype }</li>
					<li><strong>�ּ�</strong>    ${food.faddr }</li>
					<li><strong>����ó</strong>   ${food.ftel }</li>
				</ul>
				<hr>
				<p>${food.fcomm }<p>
				</div>
		</div>
		</div>
		<div class="buttons">
			<c:if test="${ftype.equals('all')}">
				<a role="button" href="${path0 }/FoodList.do">���</a>
			</c:if>
			<c:if test="${ftype.equals('rest')}" >
				<a role="button" href="${path0 }/fRestList.do">���</a>
			</c:if>
			<c:if test="${ftype.equals('cafe') }">
				<a role="button" href="${path0 }/fCafeList.do">���</a>
			</c:if>
			<c:if test="${ftype.equals('etc') }">
				<a role="button" href="${path0 }/fEtcList.do">���</a>
			</c:if>
		</div>
	</section>
</div>
<div id="footer">
	<div class="temp-footer">Ǫ��</div>
</div>
</body>
</html>