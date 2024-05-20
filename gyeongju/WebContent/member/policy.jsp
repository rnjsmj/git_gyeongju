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
<style>
 #header #hd #gnb a.dp { color:#101010;} 
 
 #contents {margin-top: 200px;}
#contents * {font-family: Noto Sans KR;}
.container { width:1400px}
.page { clear:both; width:1400px; margin:0 auto;}
.page_title { text-align: center; font-size:34px; padding-top:2em; padding-bottom:0.5em;}

.line1 {width: 1400px; margin: 0 auto; padding: 0; margin-top: 100px; border-top: 2px solid #E8E8E8;}
.breadcrumb {width: 1400;  padding-top: 12px;  color: #b8b8b8;}
.breadcrumb a{ color: #666; font-size: 12pt; font-weight: 400;}
.breadcrumb span{ color: #595959; font-size: 12pt; font-weight: 500;}
.form-control {background-color: #FFF; border-radius: 5px; border: 2px solid #DDD; font-size: 13px; font-weight: 500; padding-left: 60px; color: #666;}
.form-check {padding-top:1em; padding-bottom:2em;}
.btn-group {margin: 0 auto; padding: 0 auto; margin-top: 14px; margin-left: 38%; text-align: center;}
.btn1 { font-family: Noto Sans KR; font-size: 14pt; font-weight: 500; color: #FFF; background-color: #488bf8; border-radius: 5px; border: solid #488bf8; padding: 8px 20px; float:left; margin-right: 8px;}
.btn2 { font-family: Noto Sans KR; font-size: 14pt; font-weight: 500; color: #FFF; background-color: #333; border-radius: 5px; border: solid #333; padding: 8px 20px; float:left;}
.btn1:hover { background-color: #3380f3; border: solid #3380f3;}
.btn2:hover { background-color: #222; border: solid #222;}
 </style>
</head>
<body>
<div id="header" class="clr-fix">
	<%@ include file="/header.jsp" %>		
</div>
<div id="contents" class="clr-fix">	
	<section class="page" id="page1">
		<div class="line1"></div>
		<div class="breadcrumb">
            <p>
             <a href="">홈</a> > <a href="">마이페이지</a> > <span>회원약관</span>
            </p>
        </div>
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title">회원약관</h3>
			<textarea class="form-control" rows="55" cols="189" readonly>
			
				경주소개에서 운영하는 경주소개홈페이지는 개인정보 보호법 제30조에 따라 정보주체의 개인정보를 보호 및 권익을 보호하고
			이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 다음과 같이 개인정보 처리지침을 수립하여 공개합니다.

			제1조(개인정보의 처리목적)
			경주소개홈페이지는 개인정보를 다음 목적 이외의 용도로는 이용하지 않으며 이용 목적 등이 변경될 경우에는 동의를 받아 처리하겠습니다.
			비회원 민원신청 및 Q&A : 민원처리, 고객응대
			
			제2조(처리하는 개인정보 항목)
			경주소개홈페이지는 다음의 개인정보 항목을 처리하고 있습니다.
			비회원 민원신청 및 Q&A 관리 - 필수항목 : 성명, 이메일, 연락처
			
			제3조(개인정보의 처리 및 보유기간)
			경주소개홈페이지는 법령에 따른 개인정보 보유 이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의 받은 개인정보 보유 이용기간 내에서 개인정보를 처리보유합니다.
			민원신청 및 Q&A 신청 비회원 정보 : 3년 (전자상거래 등에서의 소비자보호에 관한 법률 및 시행령)
			
			제4조(개인정보의 제3자 제공)
			경주소개홈페이지는 개인정보 처리와 관련한 별도의 제3자 제공이 없음을 알려드립니다.
			
			제5조(개인정보처리의 위탁)
			경주소개홈페이지는 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.
			제공받는 자	제공항목	이용목적	보유 및 이용기간
			(주)월드리서치	성명,이메일,휴대폰번호	고객만족도 조사	위탁계약 종료시까지
			
			제6조(정보주체의 권리의무 및 행사방법)
			정보주체는 경주소개홈페이지에 대해 언제든지 개인정보 열람·정정·삭제·처리정지 요구 등의 권리를 행사할 수 있습니다.
			경주소개홈페이지에 대해 개인정보보호법 시행령 제41조제1항에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며, 경주소개홈페이지는 이에 대해 지체없이 조치하겠습니다.
			정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.
			개인정보 열람 및 처리정지 요구는 개인정보보호법 제35조 제5항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.
			개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.
			한국표준정보망은 정보주체 권리에 따른 열람의 요구, 정정·삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.
			
			제7조(개인정보의 파기)
			경주소개대표홈페이지는 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 다음과 같이 지체없이 해당 개인정보를 파기합니다.
			파기절차 : 불필요한 개인정보 및 개인정보파일은 내부방침 절차에 따라 지체 없이 파기합니다.
			파기방법 : 전자적 형태의 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하며, 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
			
			제8조(개인정보의 안전성 확보조치)
			경주소개대표홈페이지는 「개인정보보호법」제29조에 따라 개인정보의 안전성 확보를 위해 다음과 같은 조치를 취하고 있습니다.
			관리적 조치 : 내부관리계획 수립ㆍ시행, 개인정보 담당자 대상 정기적 직원 교육 등
			기술적 조치 : 개인정보처리시스템 등의 접근권한 관리, 접근통제시스템 설치, 비밀번호 등의 암호화, 보안프로그램 설치
			물리적 조치 : 전산실, 자료보관실 등의 접근통제
			
			제9조(개인정보 보호책임자)
			경주소개대표홈페이지는 개인정보를 보호하고 개인정보와 관련된 사항을 처리하기 위하여 아래와 같이 개인정보보호책임자,
			개인정보보호담당자 및 개인정보 열람청구를 접수ㆍ처리하는 부서 및 담당자를 지정하고 있습니다.
			
			관리적 조치 : 내부관리계획 수립ㆍ시행, 개인정보 담당자 대상 정기적 직원 교육 등
			기술적 조치 : 개인정보처리시스템 등의 접근권한 관리, 접근통제시스템 설치, 비밀번호 등의 암호화, 보안프로그램 설치
			물리적 조치 : 전산실, 자료보관실 등의 접근통제
			
			구분	개인정보보호 책임자	개인정보보호 담당자	개인정보 열람청구 접수ㆍ처리부서
			부서명	경영지원본부	지식정보실	각 부서
			성명	김기태 본부장	KH 위원	각 부서담당자
			전화번호	02-6240-4510	02-6240-4544	-
			
			제10조(권익침해 구제방법)
			정보주체는 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다.
			이 밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.
			
			개인정보 침해신고센터 (한국인터넷진흥원 운영) : (국번없이) 118 (privacy.kisa.or.kr) - 소관업무 : 개인정보 침해사실 신고, 상담 신청
			개인정보 분쟁조정위원회 :(국번없이) 118 (www.kopico.go.kr)- 소관업무 : 개인정보 분쟁조정신청, 집단분쟁조정 (민사적 해결)
			대검찰청 사이버범죄수사단 : (국번없이) 1301 (www.spo.go.kr)
			경찰청 사이버안전국 : (국번없이) 182 (cyberbureau.police.go.kr)
			
			제11조(개인정보 자동 수집 장치의 설치ㆍ운영 및 거부에 관한 사항)
			경주소개홈페이지는 정보주체의 이용정보를 저장하고 수시로 불러오는 '쿠키(cookie)'를 사용하지 않습니다.
			
			제12조(개인정보 처리방침 변경)
			경주소개홈페이지의 개인정보처리방침은 시행일로부터 적용되며, 변경이력 및 내용은 아래에서 확인하실 수 있습니다.
			
			시행일자 : 2021년 07월 16일 (제9조 변경)
			</textarea>
		</div>
	</section>	

</div>
<div id="footer" class="clr-fix">
	<%@ include file="/footer.jsp" %>		
</div>
</body>
</html>