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
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<style>
	* {margin: 0;padding: 0;}
	body,html {width: 100%; overflow-x: hidden;}
	a { text-decoration: none;}
	ol { list-style: none; }
	
	#wrap { width: 100%; height: auto; }
	.head { clear: both; width: 100%; height: 300px; overflow: hidden; }
	#nav { width: 100%; float: left; }
	#title { float:left; text-align: left; margin-top: 3rem; margin-left: 15%; padding-bottom: 1rem; display: flex; align-items: center; }
	.breadcrumb { clear: both; float: right; margin: 15px 30px; }
	.breadcrumb-item { float: left; text-align: left; }
	.breadcrumb-item:after { content: ">"; }
	.breadcrumb-item:last-child:after { content: " "; }
	
	.content { clear: both; width: 100%; height: auto; }
	#table { width: 1200px; text-align: left; margin: 0 auto; padding-top: 10%; line-height: 4rem; }
	#btn_group {  margin: 5% auto; width: 100%; display: block; float: left; }
	.btn-primar, .btn-secondary { }
	
</style>
</head>
<body>
<div id="header" class="clr-fix">
	<%@ include file="/header.jsp" %>		
</div>
<div id="contents" class="clr-fix">	
	<div id="wrap">
			<div class="head">
				<img src="../img/a.jpg" alt="담벼락">
			</div>
		</div>	
	<section id="page">
		<div id="nav">
			<h1 id="title"><i class="xi-forum-o xi-2x"></i>글 작성(임시)</h1>
			<nav aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="#">Home</a></li>
			    <li class="breadcrumb-item"><a href="#">커뮤니티</a></li>
			    <li class="breadcrumb-item active" aria-current="page">담벼락</li>
			  </ol>
			</nav>
		</div>
		<hr>
		<div class="content">
		<form action="${path0 }/QnaInsertPro.do" method="post" enctype="multipart/form-data" >
			<table id="table">
				<tr>
					<th>글 제목 </th>
					<td><input type="text" name="title" id="title" maxlength="100" required placeholder="제목을 입력하세요" /></td>
				</tr>
				<tr>
					<th>글 내용 </th>
					<td><textarea rows="20" cols="100" name="content" required placeholder="내용을 입력하세요"></textarea></td>
				</tr>
				<tr>
					<th>파일 첨부</th>
					<td>
					<input type="file" id="filename" name="filename" accept=".gif, .jpg, .png, .hwp, .doc, .txt, .xls, .xlsx, .ppt, .pptx, .zip"></input>
					</td>
				</tr>
			</table>
		
		
		<div id="btn_group">
			<button type="submit" class="btn btn-primary">등록</button>
			<a href="${path0 }/CommunityList.do" class="btn btn-secondary">취소</a>
		</div>
		</form>
		</div>
		
	</section>
</div>
<div id="footer" class="clr-fix">
	<%@ include file="/footer.jsp" %>		
</div>
</body>
</html>