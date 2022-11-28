 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 화면 상단에 포함이 되어야할 리소스를 선언할 파일 -->
<!-- 화면의 메타정보, 스타일 시트 및 화면 호출이 완료되기 전에 가져와야하는 스크립트 등이 선언이 된다. -->

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>헤더</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>bloggers</title> -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- 페이징 태그를 작성하기 위해서 JSP에서는 전자정부 태그 라이브러리를 추가 -->
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %> 
 <%@ include file="/WEB-INF/include/include-header.jspf" %>  
 <!-- jQuery -->
<%-- <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/js/common.js'/>" charset="utf-8"></script>
<meta charset="UTF-8"> 
 --%><header id="header">
	<div id="header_warp">
		<script>
		$(document).ready(function() {
		$(".header_slideBanner").css("display","inline-block");
		});
	</script>
		<div id="header">
			<div class="header_top">
				<!-- 멀티상점 선택 -->

				<!-- 멀티상점 선택 -->

				<div class="header_top_cont">
					<div style="float: left;"></div>

					<ul class="top_member_box" style="float: right;">
						<li><a href="../member/login.php">LOGIN</a><span
							class="txt_bar"></span></li>
						<li><a href="../member/join_method.php">JOIN</a><span
							class="txt_bar"></span></li>
						<li>
							<div class="top_mypage_cont">
								<span class="top_mypage_tit"><a
									href="../mypage/index.php">MYPAGE</a></span>
								<ul style="display: none;">
									<li><a href="../mypage/order_list.php">주문조회</a></li>
									<li><a href="../mypage/my_page_password.php">내정보수정</a></li>
									<li><a href="../mypage/wish_list.php">찜 리스트</a></li>
									<li><a href="../mypage/mypage_qa.php">1:1 문의</a></li>
								</ul>
							</div> <span class="txt_bar"></span>
						</li>
						<li><a href="../order/cart.php">CART 0</a></li>
						<li>
							<div class="top_search_mouse">
								<i class="xi-search"></i>
								<!-- 검색 폼 -->
								<div class="top_search">
									<form name="frmSearchTop" id="frmSearchTop"
										action="../goods/goods_search.php" method="get"
										novalidate="novalidate">
										<fieldset>
											<legend>검색폼</legend>
											<div class="top_search_cont">

												<div class="top_text_cont">
													<input type="text" id="search_form" name="keyword"
														class="top_search_text" title="" placeholder=""
														autocomplete="off">
													<button type="submit" id="btnSearchTop"
														class="btn_top_search">
														<i class="xi-search"></i>
													</button>

													<div class="search_cont" style="display: none;">
														<input type="hidden" name="recentCount" value="10">


														<!-- //recom_box -->

														<div class="latest_search_tab">
															<ul>
																<li class="on">최근검색어</li>
																<li>인기검색어</li>
															</ul>
														</div>
														<div class="latest_search_box on">
															<div class="recent_box">
																<dl class="js_recent_area">
																	<dd>최근 검색어가 없습니다.</dd>
																</dl>
															</div>
															<!-- //recent_box -->
															<div class="seach_top_all">
																<button type="button" class="btn_top_search_close">
																	<strong>닫기</strong>
																</button>
															</div>
															<!-- //seach_top_all -->
														</div>

														<div class="latest_search_box">
															<div class="top_search_keyword">
																<ul>
																	<li><a
																		href="../goods/goods_search.php?keyword=%EA%B0%90%EB%B0%94%EC%8A%A4">감바스</a></li>
																	<li><a
																		href="../goods/goods_search.php?keyword=%EC%9B%94%EB%82%A8%EC%8C%88">월남쌈</a></li>
																	<li><a
																		href="../goods/goods_search.php?keyword=%EC%8A%A4%ED%85%8C%EC%9D%B4%ED%81%AC">스테이크</a></li>
																	<li><a
																		href="../goods/goods_search.php?keyword=%EB%A7%88%EB%9D%BC">마라</a></li>
																	<li><a
																		href="../goods/goods_search.php?keyword=%EB%B0%80%ED%91%80%EC%9C%A0">밀푀유</a></li>
																	<li><a
																		href="../goods/goods_search.php?keyword=%EB%82%98%EB%B2%A0">나베</a></li>
																	<li><a
																		href="../goods/goods_search.php?keyword=%EC%96%91%EC%9E%A5%ED%94%BC">양장피</a></li>
																	<li><a
																		href="../goods/goods_search.php?keyword=%EC%9E%A1%EC%B1%84">잡채</a></li>
																</ul>
															</div>

															<div class="seach_top_all">
																<button type="button" class="btn_top_search_close">
																	<strong>닫기</strong>
																</button>
															</div>
															<!-- //seach_top_all -->
														</div>

													</div>
													<!-- //search_cont -->

												</div>
												<!-- //top_text_cont -->




											</div>
											<!-- //top_search_cont -->
										</fieldset>
									</form>
								</div>
								<!-- //top_search -->
								<!-- 검색 폼 -->
							</div>
						</li>
					</ul>
				</div>
				<!-- //header_top_cont -->
			</div>
			<!-- //header_top -->


			<div class="header_search">
				<div class="header_search_cont">

					<div class="h1_logo">
						<a href="../main/index.php"><img src="../css/OMC.png"
							alt="상단 로고" title="상단 로고"></a>
					</div>

					<div class="header_gnb">
						<div class="sub_menu_box_all">
							<div class="sub_menu_box_all_btn">
								<a href=""><i class="xi-bars"></i> 전체카테고리</a>
							</div>
							<!-- 사이드 카테고리 출력 시작 -->
							<div class="sub_menu_box side_type" style="z-index: 100;">
								<!-- N : 레이어 타입 : layer_type 추가, 트리형 타입 tree_type 추가 -->
								<ul class="sub_depth0 sub_menu0">
									<li><a href="../goods/goods_list.php?cateCd=016">전체상품</a>
										<ul class="sub_depth1">
											<li><a href="../goods/goods_list.php?cateCd=016001">전체상품</a>
											</li>
										</ul></li>
									<li><a href="../goods/goods_list.php?cateCd=017">밀키트</a>
										<ul class="sub_depth1">
											<li><a href="../goods/goods_list.php?cateCd=017009">전체</a>
											</li>
											<li><a href="../goods/goods_list.php?cateCd=017002">한식</a>
											</li>
											<li><a href="../goods/goods_list.php?cateCd=017003">양식</a>
											</li>
											<li><a href="../goods/goods_list.php?cateCd=017004">중식·일식</a>
											</li>
											<li><a href="../goods/goods_list.php?cateCd=017005">동남아</a>
											</li>
											<li><a href="../goods/goods_list.php?cateCd=017014">채소가든</a>
											</li>
											<li><a href="../goods/goods_list.php?cateCd=017016">프리미엄</a>
											</li>
											<li><a href="../goods/goods_list.php?cateCd=017015">에어라인</a>
											</li>
											<li><a href="../goods/goods_list.php?cateCd=017012">세트상품</a>
											</li>
										</ul></li>
									<li><a href="../goods/goods_list.php?cateCd=021">교육체험용키트</a>
									</li>
									<li><a href="../goods/goods_list.php?cateCd=030">BESPOKE
											큐커 밀키트</a></li>
									<li><a href="../goods/goods_list.php?cateCd=023">콜라보
											밀키트</a>
										<ul class="sub_depth1">
											<li><a href="../goods/goods_list.php?cateCd=023019">티아시아
													밀키트</a></li>
											<li><a href="../goods/goods_list.php?cateCd=023018">이비가짬뽕</a>
											</li>
											<li><a href="../goods/goods_list.php?cateCd=023017">빨간내복야코
													밀키트</a></li>
											<li><a href="../goods/goods_list.php?cateCd=023016">우정분식
													밀키트</a></li>
											<li><a href="../goods/goods_list.php?cateCd=023002">허챠밍
													밀키트</a></li>
											<li><a href="../goods/goods_list.php?cateCd=023015">밀슐랭
													가이드</a>
												<ul class="sub_depth2">
													<li><a href="../goods/goods_list.php?cateCd=023015001">일호식</a>
													</li>
													<li><a href="../goods/goods_list.php?cateCd=023015002">큰기와집</a>
													</li>
												</ul></li>
											<li><a href="../goods/goods_list.php?cateCd=023001">제주항공
													밀키트</a></li>
											<li><a href="../goods/goods_list.php?cateCd=023007">준식이
													밀키트</a></li>
											<li><a href="../goods/goods_list.php?cateCd=023012">동원F&amp;B
													밀키트</a></li>
											<li><a href="../goods/goods_list.php?cateCd=023011">싱가포르관광청
													밀키트</a></li>
											<li><a href="../goods/goods_list.php?cateCd=023010">이금기
													밀키트</a></li>
											<li><a href="../goods/goods_list.php?cateCd=023008">카카오프렌즈
													밀키트</a></li>
											<li><a href="../goods/goods_list.php?cateCd=023006">EBS
													최요비 밀키트</a></li>
											<li><a href="../goods/goods_list.php?cateCd=023004">오뚜기
													밀키트</a></li>
										</ul></li>
									<li><a href="../goods/goods_list.php?cateCd=028">베스트</a></li>
									<li><a href="../goods/goods_list.php?cateCd=009">특가/기획전</a>
										<ul class="sub_depth1">
											<li><a href="../goods/goods_list.php?cateCd=009071">위클리
													특가</a></li>
											<li><a href="../goods/goods_list.php?cateCd=009083">블랙프라이데이</a>
											</li>
											<li><a href="../goods/goods_list.php?cateCd=009085">월드컵
													기획전</a></li>
										</ul></li>
									<li><a href="../goods/goods_list.php?cateCd=026">신상품</a></li>
									<li><a href="../goods/goods_list.php?cateCd=027">선물세트</a>
									</li>
								</ul>
							</div>
							<!-- //sub_menu_box -->
							<!-- 사이드 카테고리 출력 끝 -->
						</div>
						<div class="gnb">
							<div class="gnb_menu_box">
								<ul class="depth0 gnb_menu0"
									style="overflow: visible; height: 100%;">
									<li><a href="../goods/goods_list.php?cateCd=026">신상품</a></li>
									<li><a href="../goods/goods_list.php?cateCd=009071">특가/기획전</a></li>
									<li><a href="../board/list.php?&amp;bdId=event">이벤트</a></li>
									<li><a href="../mypage/chef_benefit.php">커뮤니티</a></li>
									<li><a href="../board/list.php?bdId=gift">공지사항</a></li>
								</ul>
							</div>
						</div>
						<!-- //gnb -->
					</div>
					<!-- //header_gnb -->
				</div>
				<!-- //header_search_cont -->
			</div>
			<!-- //header_search -->

		</div>
		<!-- //header -->
	</div>
</header>