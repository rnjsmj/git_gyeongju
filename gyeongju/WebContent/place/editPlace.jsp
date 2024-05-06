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
	hr { box-sizing:content-box; margin-bottom:30px; }
	
	.temp-header { width:100%; background-color: #848c45; height:90px; text-align:center; 
		line-height:90px; display:block; box-sizing:border-box; min-width:1200px;}
	#header::after { content:""; display:block; width:100%; clear:both; }
	
	#contents { width:100%; min-height:100vh;  box-sizing:border-box; min-width:1200px;}
	#contents::after { content:""; display:block; width:100%; clear:both; }
	#contents .page { clear:both; width:1200px; margin:0 auto;}
	.page .page-title { margin-top : 2rem; margin-bottom:1.5rem; padding-left:20px;}
	
	.updForm {width:1000px; margin:0 auto;}
	.updForm .tr-pno {display:none;}
	.updForm td {padding-bottom:10px; }
	.updForm .td-ptype {width:200px; padding-right:5px;}
	.updForm .td-ptype select {width:100%; height:40px; }
	.updForm input {width:100%; height:40px; padding:10px; }
	.updForm .td-pcomm textarea {width:100%; height:200px; resize:none; padding:10px;}
	.updForm .td-pfile .btn-upload {width:100px; text-align:center; padding:5px; display:inline-block;
		border:1px solid #6b717b; border-radius:3px;}
	.updForm .td-pfile #pfile {width:800px;}
	.updForm .td-pfile #pfile::file-selector-button {display:none;}
	.updForm .td-submit .btn-group { width:300px; margin:0 auto; text-align:center;}
	.updForm .td-submit #submit {width:100px; padding:10px 20px; display:inline-block;  }
	.updForm .td-submit .btn-back {width:100px; padding:10px 20px; display:inline-block; background-color:#747a86; border:1px solid #6b717b;
		text-align:center; color:white; text-decoration:none;}
	
	 #footer { width:100%; background-color: #000; height:200px; padding:20px 0; box-sizing:border-box; min-width:1200px;}
	.temp-footer { width:1200px; height:100%; text-align:left; color:#999;
		display:block; margin: 0 auto; }
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
		<hr>
		<form action="${path0 }/PlaceUpdatePro.do?ptype=<%=request.getParameter("ptype") %>" method="post" onsubmit="return typeCheck(this)" >
			<table class="updForm">
				<tbody>
					<tr class="tr-pno">
						<td>
							<input type="text" name="pno" id="pno" class="form-control" value="${place.pno }" >
						</td>
					</tr>
					<tr>
						<td class="td-ptype">
							<select name="ptypeval" id="ptypeval">
								<option >분류</option>
								<option>문화재</option>
								<option>테마파크</option>
								<option>해변</option>
							</select>
						</td>
						<td class="td-pname">
							<input type="text" name="pname" id="pname" maxlength="40" placeholder="이름" required
								value="${place.pname }">
						</td>
					</tr>	
					<tr>
						<td colspan="2" class="td-paddr">
							<input type="text" name="paddr" id="paddr" maxlength="50" placeholder="주소" required
								value="${place.paddr }">
						</td>
					</tr>
					<tr>
						<td colspan="2" class="td-ptel">
							<input type="tel" name="ptel" id="ptel" maxlength="20" placeholder="연락처"
								value="${place.ptel }">
						</td>
					</tr>
					<tr>
						<td colspan="2" class="td-pcomm">
							<textarea name="pcomm" id="pcomm" maxlength="2000">${place.pcomm }</textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2" class="td-pfile">
							<label for="pfile">
								<div class="btn-upload">사진 첨부</div>
							</label>
							<input type="file" name="pfile" id="pfile">
						</td>
					</tr>
					<tr>
						<td colspan="2" class="td-submit">
							<div class="btn-group">
								<a class="btn-back" href="${path0 }/GetPlace.do?ptype=${ptype}&pno=${place.pno}">취소</a>
								<input id="submit" type="submit" value="등록" >
							</div>
							
						</td>
					</tr>
				</tbody>
				
			</table>
		</form>
		
	</section>
</div>
<div id="footer">
	<div class="temp-footer">푸터</div>
</div>
<script>
	function typeCheck(f) {
		if(f.ptypeval.value=='분류') {
			alert("분류를 선택하시오.");
			return false;
		}
	}
	
	var ptypeOp = '<%=request.getAttribute("ptypeOp")%>';
	if(ptypeOp == '문화재') {
		document.querySelector('#ptypeval option:nth-child(2)').selected = true;
	} else if(ptypeOp == '테마파크') {
		document.querySelector('#ptypeval option:nth-child(3)').selected = true;
	} else if(ptypeOp == '해변') {
		document.querySelector('#ptypeval option:nth-child(4)').selected = true;
	} else {
		document.querySelector('#ptypeval option:nth-child(1)').selected = true;
	}
</script>
</body>
</html>