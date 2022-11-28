<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>푸터</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>bloggers</title>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!-- 페이징 태그를 작성하기 위해서 JSP에서는 전자정부 태그 라이브러리를 추가 -->
<%-- <%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %> --%>
<%@ include file="/WEB-INF/include/include-header.jspf" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/js/common.js'/>" charset="utf-8"></script>
    <meta charset="UTF-8">
    <div id="footer">
	<div class="content_info_wrap">
		<div class="content_info">
			<div class="footer_left">
				<div class="foot_list">
					<ul>
						<li><a href="../service/company.php">회사소개</a><span class="txt_bar"></span></li>
						<li><a href="../service/agreement.php">이용약관</a><span class="txt_bar"></span></li>
						<li><a href="../service/private.php"><strong>개인정보처리방침</strong></a><span class="txt_bar"></span></li>
						<li><a href="../service/guide.php">이용안내</a></li>
					</ul>
				</div><!-- //foot_list -->
				<div class="foot_cont">
					<div class="foot_info">
						<div class="foot_info_list">
							<dl>
								<dt>상호 :</dt>
								<dd>주식회사 오메추</dd>
							</dl>
							<dl>
								<dt>대표 :</dt>
								<dd>오메추</dd>
							</dl>
							<dl>
								<dt>사업자등록번호 :</dt>
								<dd>555-55-55555</dd>
							</dl>
							<dl>
								<dt>통신판매업신고번호 :</dt>
								<dd>제2022-오메추-0555호</dd>
							</dl>
							<dl>
								<dt> <a href="#" class="btn_licensee_info" onclick="gd_popup_bizInfo('7258800354'); return false;">[사업자정보확인]</a></dt>
								<dd></dd>
							</dl>
						</div>
						<div class="foot_info_list">
							<dl>
								<dt>대표번호 :</dt>
								<dd>5555-5555</dd>
							</dl>
							<dl>
								<dt>팩스번호 :</dt>
								<dd>555-555-5555</dd>
							</dl>
							<!-- <dl>
								<dt>메일 :</dt>
								<dd><a href="mailto:godo@godo.co.kr" class="btn_email">sales@mychef.kr</a></dd>
							</dl>-->
							<dl>
								<dt>OEM,입점 문의 :</dt>
								<dd><a href="mailto:sales@mychef.kr" class="btn_email">omc@omc.kr</a></dd>
							</dl>
							<dl>
								<dt>광고 마케팅 문의 :</dt>
								<dd><a href="mailto:mkt@mychef.kr" class="btn_email">omc@omc.kr</a></dd>
							</dl>
							
						</div>
						<div class="foot_info_list">
							<dl>
								<dt>주소 :</dt>
								<dd>서울특별시 종로구 미려빌딩</dd>
							</dl>
							<dl>
								<dt>개인정보관리자 :</dt>
								<dd>오메추</dd>
							</dl>
						</div>
						<div class="foot_info_list">
							<dl>
								<dt>호스팅제공 : 오메추(주)</dt>
							</dl>
						</div>
						<!-- // -->
						<p class="copyright">copyright (c) mychef.kr all rights reserved.</p>
					</div>
					<!-- //foot_info -->
				</div> 
			
			</div>
			<div class="footer_right">
				<div class="cs_center">
					<h3>고객센터</h3>
					<strong>1555.5555</strong>
					<p>MON-FRI       10:00 ~ 17:00<br>
SAT/SUN/HOLIDAY OFF</p>
				</div>
				<!-- //cs_center --><br>
				<div class="bank_info">
					<!-- <h3>입금계좌안내</h3>
					<p>
						<strong>140-011-434930</strong><br/>
						<em>신한은행</em> (예금주 : 주식회사마이셰프)
					</p> -->				
				</div>
				<!-- //bank_info -->
			</div>
			
		</div>
	</div>
	
   
    <div class="foot_certify">
        <span></span>
        <span></span>
    </div>
    <!-- //foot_certify -->
</div>