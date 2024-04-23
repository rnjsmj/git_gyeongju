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
	
	#contents { }
	#contents::after { content:""; display:block; width:100%; clear:both; height:100vh;}
	#contents .page { width:1200px; margin:0 auto; }
	.page .page-title { margin-top : 2rem; margin-bottom:1.5rem; padding-left:20px; }
	.page .lst-food {width:100%; padding:10px;}
	
	 #footer { width:100%; background-color: #000; height:200px; padding:20px;}
	.temp-footer { width:1200px; height:100%; text-align:left; color:#fff;
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
			
		</div>
	</section>
</div>
<div id="footer">
	<div class="temp-footer">푸터</div>
</div>
</body>
</html>