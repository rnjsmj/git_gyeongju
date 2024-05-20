<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gyeongju</title>
<%@ include file="/head.jsp" %>
<link href="http://apis.map.daum.net/favicon.ico" rel="shortcut icon">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=051be8a0a0d97aac72cd9818f4e664f7"></script>
	<script type="text/javascript" src="http://dmaps.daum.net/map_js_init/v3.js"></script>
	<script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U03/cssjs/jquery/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U0301/cssjs/JSON-js/fc535e9cc8/json2.min.js"></script>
	<script type="text/javascript" src="http://s1.daumcdn.net/svc/attach/U03/cssjs/mapapidoc/1421136453605/service.min.js"></script>
<style>
	#contents a { text-decoration: none;}
	#contents ol, #contents ul { list-style: none; }
	
	#page1 { width: 100%; height: auto; }
	#nav { width: 1200px; height: auto; float: left; margin: 15px 450px; }
	#title { display: block; align-items: center; margin-left: 300px; }
	#container { width: 1200px; padding-left: 400px;  }
	.breadcrumb { clear: both; float: right; margin: 0 auto; padding-right: 50px; }
	.breadcrumb-item { float: left; text-align: left; }
	.breadcrumb-item:after { content: ">"; }
	.breadcrumb-item:last-child:after { content: " "; }

	#page2 { width: 100%; height: auto; }
	h4 { margin-left: 30%; padding-top:50px; line-height: 1rem; }
	#map { width: 1200px; margin-left: 570px; }
	
	#coment { clear: both; width: 100%; padding: 10px auto; text-align: left; margin-left: 570px; }
	#com1 { font-size: 17px; }
	#com2 { font-size: 17px; }
</style>
</head>
<body>
<div id="header" class="clr-fix">
	<%@ include file="/header.jsp" %>		
</div>
<div id="contents" class="clr-fix">	
	<section id="page1">
	<div id="nav">
    <h1 class="title"><i class="xi-map-o xi-2x"></i>  오시는 길 </i></h1>
	    <nav aria-label="breadcrumb">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item"><a href="#">Home</a></li>
		    <li class="breadcrumb-item active" aria-current="page">오시는 길</li>
		  </ol>
		</nav>
    </div>
    <div id="container">
		 <hr>
    </div>
	    <section id="page2">
	    	<div class="wrap">
	    	<h4>경주시청 오시는 길</h4>
			    <div class="map" id="map">
		    		<div class="root_daum_roughmap root_daum_roughmap_landing" id="daumRoughmapContainer1639966341978">&nbsp;</div>
				</div>
			<script class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
			<script charset="UTF-8" src="https://t1.daumcdn.net/kakaomapweb/place/jscss/roughmap/9148b03e/roughmapLander.js"></script>
			<script>
			    new daum.roughmap.Lander({
			        "timestamp" : "1639966341978",
			        "key" : "28hfi",
			        "mapWidth" : "",
			        "mapHeight" : "400"
			    }).render();
			</script>
				<div id="coment">
			        <div id="com1" >
			    		<p><i class="xi-maker-drop xi-2x"></i> [38102] 경상북도 경주시 양정로 260 (동천동, 경주시청) </p>
			    		<p><i class="xi-call xi-2x"></i> 054-779-8585 </p>
			    	</div>
			    	<div id="com2" >
			    		<p><i class="xi-bus xi-2x"></i> 60번, 61번, 70번, 260번 </p>
			    		<p><i class="xi-car xi-2x"></i> 경상북도 경주시 동천동 800번지(지번) </p>
					</div>
				</div>
		    </div>
	    </section>
	</section>
</div>
<div id="footer" class="clr-fix">
	<%@ include file="/footer.jsp" %>		
</div>
</body>
</html>