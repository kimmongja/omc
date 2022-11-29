<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
<title>오늘 뭐 먹지?! 오메추</title>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body class="body-service body-event pc">
	<div class="top_area"></div>
	<div id="wrap">
		<div id="container">
			<div id="contents">
				<!-- 본문 시작 -->
				<div class="location_wrap">
	                <div class="location_cont">
	                    <em><a href="#" class="local_home">HOME</a> &gt; event</em>
	                </div>
            	</div>
            	<!-- location_wrap -->
            	<div class="sub_content">
            		<div class="side_cont">
						<div class="sub_menu_box">
						    <h2>고객센터</h2>
						    <ul class="sub_menu">
						        <li><a href="../service/notice.php">공지사항</a></li>
						        <li><a href="../service/qa.php">1:1문의하기</a></li>
						        <li><a href="../service/faq.php">자주묻는 질문</a></li>
								<li><a href="../board/view.php?=y&amp;bdId=notice&amp;sno=143">처음이용고객안내</a></li>
								<li><a href="../service/event.php" class="active">이벤트</a></li>
								<li><a href="../board/list.php?bdId=winning">당첨자발표</a></li>
								<li><a href="../main/html.php?htmid=service/delivery.html">배송안내</a></li>
								<li><a href="../board/list.php?bdId=IRmychef">IR 공고게시판</a></li>
						    </ul>
						</div>
						<!-- //sub_menu_box -->
						<div class="info_box">
						    <dl>
						        <dt>고객상담센터</dt>
						        <dd>
						            <strong class="info_num">1668-3980</strong><br>
						            <a href="mailto:sales@mychef.kr" class="info_mail_link">sales@mychef.kr</a>
						            <p>MON-FRI       10:00 ~ 17:00<br>
										SAT/SUN/HOLIDAY OFF
									</p>
						        </dd>
						    </dl>
						    <dl>
						       <!-- <dt>은행계좌 안내</dt>
						        <dd>
						            <strong class="info_num">140-011-434930</strong>
						            <p>
						                <em>신한은행</em> <br />
						                <span>[예금주 : 주식회사마이셰프]</span>
						            </p>
						
						        </dd>
						-->
						    </dl>
						</div>
						<!-- //info_box -->
						<script type="text/javascript">
						    // 메뉴 선택
						    //$('.sub_menu li > a[href*="' + document.location.pathname + '"]').addClass('active');
						</script>
					</div>
					<div class="content">
					<div class="board_zone_sec">
						<div class="board_zone_tit">
							<h2>이벤트</h2>
						</div>
						<div class="board_zone_cont">
							<div class="board_zone_list">
								<div class="board_list_event">
									<div class="board_hot_list">
										<ul>
											<li><a href="list.php?bdId=event&amp;period=all"><span>전체(123)</span></a></li>
											<li><a href="list.php?bdId=event&amp;period=current"><span>진행중 이벤트(4)</span></a></li>
											<li><a href="list.php?bdId=event&amp;period=end"><span>종료된 이벤트(119)</span></a></li>
										</ul>
									</div>
									<div class="event_list" align="center" style="width:100%" "="">
										<ul>
											<li style="height:200px">
												<div class="event_cont">
													<div class="board_img">
														<a href="javascript:gd_btn_view('event',197 , 'y')">
															<img src="/data/board/upload/event/2c0880c90b28b350" width="550" height="220" class="js_image_load">
														</a>
													</div>
													<div class="event_info_cont">
					
														<div class="board_tit">
															<a href="javascript:gd_btn_view('event',197 , 'y')">
																<strong>블랙 프라이데이 이벤트</strong>
																<img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_attach_file.png" alt="파일첨부 있음">
																<img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_attach_img.png" alt="이미지첨부 있음">
																<img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_hot.png" alt="인기글">
															</a>
														</div>
														<div class="board_event_day">
															<span><strong>이벤트기간</strong> 2022.11.10 00:00 ~ 2022.11.30 23:59</span>
														</div>
														<div class="board_likeit_hits">
															<span class="board_likeit">추천 1</span>
															<span class="board_hits">조회 25664</span>
														</div>
													</div>
													<!-- //event_info_cont -->
												</div>
												<!-- //event_cont -->
											</li>
											<li style="height:200px">
												<div class="event_cont">
													<div class="board_img">
														<a href="javascript:gd_btn_view('event',196 , 'y')">
															<img src="/data/board/upload/event/10f0b06f46cb8759" width="550" height="220" class="js_image_load">
														</a>
													</div>
													<div class="event_info_cont">
														<div class="board_tit">
															<a href="javascript:gd_btn_view('event',196 , 'y')">
																<strong>11월 특별 신규가입 이벤트</strong>
																<span>(91)</span>
																<img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_attach_file.png" alt="파일첨부 있음">
																<img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_attach_img.png" alt="이미지첨부 있음">
																<img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_hot.png" alt="인기글">
															</a>
														</div>
														<div class="board_event_day">
															<span><strong>이벤트기간</strong> 2022.11.07 00:00 ~ 2022.11.14 23:59</span>
														</div>
														<div class="board_likeit_hits">
															<span class="board_likeit">추천 15</span>
															<span class="board_hits">조회 7319</span>	
														</div>
													</div>
													<!-- //event_info_cont -->
												</div>
												<!-- //event_cont -->
											</li>
											<li style="height:200px">
												<div class="event_cont">
													<div class="board_img">
														<a href="javascript:gd_btn_view('event',195 , 'y')">
															<img src="/data/board/upload/event/b9f981d7e2b49fd2" width="550" height="220" class="js_image_load">
														</a>
													</div>
													<div class="event_info_cont">
														<div class="board_tit">
															<a href="javascript:gd_btn_view('event',195 , 'y')">
																<strong>마이셰프 장보기 지원금 프로모션</strong>
																<span>(1)</span>
																<img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_attach_file.png" alt="파일첨부 있음">
																<img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_attach_img.png" alt="이미지첨부 있음">
																<img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_hot.png" alt="인기글">
															</a>
														</div>
														<div class="board_event_day">
															<span><strong>이벤트기간</strong> 2022.10.18 00:00 ~ 2022.10.31 23:59</span>
														</div>
														<div class="board_likeit_hits">
															<span class="board_likeit">추천 3</span>
															<span class="board_hits">조회 12978</span>
														</div>
													</div>
													<!-- //event_info_cont -->
												</div>
												<!-- //event_cont -->
											</li>
											<li style="height:200px">
												<div class="event_cont">
													<div class="board_img">
														<a href="javascript:gd_btn_view('event',193 , 'y')">
															<img src="/data/board/upload/event/c3be579f090efa22" width="550" height="220" class="js_image_load">
														</a>
													</div>
														<div class="event_info_cont">
															<div class="board_tit">
																<a href="javascript:gd_btn_view('event',193 , 'y')">
																	<strong>[마이셰프X싱가포르관광청] 신제품 출시 기념 이벤트</strong> <span>(5)</span>
																	<img
																	src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_attach_file.png"
																	alt="파일첨부 있음"> <img
																	src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_attach_img.png"
																	alt="이미지첨부 있음"> <img
																	src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_hot.png"
																	alt="인기글">
																</a>
															</div>
															<div class="board_event_day">
																<span><strong>이벤트기간</strong> 2022.10.07 00:00 ~ 2022.11.15 23:59</span>
															</div>
															<div class="board_likeit_hits">
																<span class="board_likeit">추천 0</span>
																<span class="board_hits">조회 15966</span>
															</div>
														</div>
														<!-- //event_info_cont -->
												</div>
												<!-- //event_cont -->
											</li>
											<li style="height:200px">
												<div class="event_cont">
													<div class="board_img">
														<a href="javascript:gd_btn_view('event',192 , 'y')">
															<img src="/data/board/upload/event/3ed5ae3f5dfe40da" width="550" height="220" class="js_image_load">
														</a>
													</div>
														<div class="event_info_cont">

															<div class="board_tit">
																<a href="javascript:gd_btn_view('event',192 , 'y')">
																	<strong>[마이셰프X티아시아] 신제품 출시 기념 이벤트</strong> <img
																	src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_attach_file.png"
																	alt="파일첨부 있음"> <img
																	src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_attach_img.png"
																	alt="이미지첨부 있음"> <img
																	src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_hot.png"
																	alt="인기글">
																</a>
															</div>

															<div class="board_event_day">
																<span><strong>이벤트기간</strong> 2022.09.23 00:00 ~
																	2022.10.07 00:00</span>
															</div>
															<div class="board_likeit_hits">
																<span class="board_likeit">추천 0</span>
																<span class="board_hits">조회 1558</span>
															</div>
														</div>
														<!-- //event_info_cont -->
												</div>
												<!-- //event_cont -->
											</li>
											<li style="height:200px">
												<div class="event_cont">
													<div class="board_img">
														<a href="javascript:gd_btn_view('event',191 , 'y')">
															<img src="/data/board/upload/event/570c9bd0c8af8006" width="550" height="220" class="js_image_load">
														</a>
													</div>
														<div class="event_info_cont">

															<div class="board_tit">
																<a href="javascript:gd_btn_view('event',191 , 'y')">
																	<strong>[마이셰프] 스트레스 확! 날리는 매운맛 기획전</strong> <img
																	src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_attach_file.png"
																	alt="파일첨부 있음"> <img
																	src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_attach_img.png"
																	alt="이미지첨부 있음"> <img
																	src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_hot.png"
																	alt="인기글">
																</a>
															</div>

															<div class="board_event_day">
																<span><strong>이벤트기간</strong> 2022.09.13 00:00 ~
																	2022.09.25 23:59</span>
															</div>
															<div class="board_likeit_hits">
																<span class="board_likeit">추천 0</span>
																<span class="board_hits">조회 2672</span>
															</div>
														</div>
														<!-- //event_info_cont -->
												</div>
												<!-- //event_cont -->
											</li>
											<li style="height:200px">
												<div class="event_cont">
													<div class="board_img">
														<a href="javascript:gd_btn_view('event',190 , 'y')">
															<img src="/data/board/upload/event/8764bc7acfe444f2" width="550" height="220" class="js_image_load">
														</a>
													</div>
														<div class="event_info_cont">
															<div class="board_tit">
																<a href="javascript:gd_btn_view('event',190 , 'y')">
																	<strong>[마이셰프XKB국민카드] (앵콜)KB MYCHEF카드 ...</strong> <img
																	src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_attach_file.png"
																	alt="파일첨부 있음"> <img
																	src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_attach_img.png"
																	alt="이미지첨부 있음"> <img
																	src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/event/img/icon/icon_board_hot.png"
																	alt="인기글">
																</a>
															</div>

															<div class="board_event_day">
																<span><strong>이벤트기간</strong> 2022.09.01 00:00 ~ 2022.09.30 23:59</span>
															</div>
															<div class="board_likeit_hits">
																<span class="board_likeit">추천 0</span>
																<span class="board_hits">조회 502</span>
															</div>
														</div>
														<!-- //event_info_cont -->
												</div>
												<!-- //event_cont -->
											</li>
										</ul>
									</div>
								</div>
								<!-- //board_list_event -->
					
								<div class="pagination">
									<ul>
										<li class="on">
											<span>1</span>
										</li>
										<li>
											<a href="./list.php?page=2&amp;bdId=event&amp;noheader=y">2</a>
										</li>
										<li>
											<a href="./list.php?page=3&amp;bdId=event&amp;noheader=y">3</a>
										</li>
										<li>
											<a href="./list.php?page=4&amp;bdId=event&amp;noheader=y">4</a>
										</li>
										<li class="btn_page btn_page_next">
											<a aria-label="Next" href="./list.php?page=11&amp;bdId=event&amp;noheader=y">
												<img src="/admin/gd_share/img/icon_arrow_page_r.png" class="img-page-arrow">다음</a>
										</li>
										<li class="btn_page btn_page_last">
											<a aria-label="Last" href="./list.php?page=18&amp;bdId=event&amp;noheader=y">
												<img src="/admin/gd_share/img/icon_arrow_page_rr.png" class="img-page-arrow">맨뒤</a>
										</li>
									</ul>
								</div>
								<div class="board_search_box">
									<form name="frmList" id="frmList" action="list.php" method="get">
										<input type="hidden" name="bdId" value="event">
										<input type="hidden" name="memNo" value="">
										<input type="hidden" name="noheader" value="y">
					
										<select class="chosen-select" name="searchField" style="display: none;">
											<option value="subject">제목</option>
											<option value="contents">내용</option>
											<option value="writerNm">작성자</option>
										</select>
										<div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 90px;" title="">
											<a class="chosen-single">
												<span>제목</span>
												<div><b></b></div>
											</a>
											<div class="chosen-drop">
												<div class="chosen-search">
													<input type="text" autocomplete="off" readonly="">
												</div>
												<ul class="chosen-results">
													<li class="active-result result-selected" data-option-array-index="0" style="">제목</li>
													<li class="active-result" data-option-array-index="1" style="">내용</li>
													<li class="active-result" data-option-array-index="2" style="">작성자</li>
												</ul>
											</div>
										</div>
										<input type="text" class="text" name="searchWord" value="">
										<button class="btn_board_search"><em>검색</em></button>
									</form>
								</div>
								<!-- //board_search_box -->
							</div>
							<!-- //board_zone_list -->
						</div>
						<!-- //board_zone_cont -->
					</div>
					<!-- //board_zone_sec -->
					<form id="frmWritePassword">
						<div id="lyPassword" class="dn layer_wrap password_layer" style="height: 226px">
							<div class="layer_wrap_cont">
								<div class="ly_tit">
									<h4>비밀번호 인증</h4>
								</div>
								<div class="ly_cont">
									<div class="scroll_box">
										<p>비밀번호를 입력해 주세요.</p>
										<input type="password" name="writerPw" class="text">
									</div>
									<!-- // -->
									<div class="btn_center_box">
										<button type="button" class="btn_ly_password js_submit"><strong>확인</strong></button>
									</div>
								</div>
								<!-- //ly_cont -->
								<a href="#close" class="ly_close layer_close"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/layer/btn_layer_close.png" alt="닫기"></a>
							</div>
							<!-- //layer_wrap_cont -->
						</div>
						<!-- //layer_wrap -->
					</form>
					
					<div id="layerDim" class="dn">&nbsp;</div>
					<script type="text/javascript" src="/test/resources/js/gd_board_list.js" charset="utf-8"></script>
					<script>
					    $(document).ready(function () {
					        $('img.js_image_load').error(function () {
					            $(this).css('background', 'url("/data/skin/front/udweb_pc_20200903/board/skin/event/img/etc/noimg.png") no-repeat center center');
					            $(this).attr('src', '/data/skin/front/udweb_pc_20200903/img/etc/blank.gif');
					        })
					            .each(function () {
					                $(this).attr("src", $(this).attr("src"));
					            })
					
					        $('.board_hot_list ul li a').on('click', function(){
					            if ($('iframe[name=ifrmBoard]', window.parent.document).length > 0) {
					                var words = $(this).attr('href').split('&');
					                var result = words[1].split('=');
					                var period = result[1];
					
					                if (period == 'all') {
					                    $('iframe[name=ifrmBoard]', window.parent.document).attr('src', '../board/list.php?bdId=event&noheader=y&period=all');
					                } else if (period == 'current') {
					                    $('iframe[name=ifrmBoard]', window.parent.document).attr('src', '../board/list.php?bdId=event&noheader=y&period=current');
					                } else if (period == 'end') {
					                    $('iframe[name=ifrmBoard]', window.parent.document).attr('src', '../board/list.php?bdId=event&noheader=y&period=end');
					                }
					                return false;
					            }
					        })
					    });
					</script>
					</div>
					<!-- //content -->
					<!-- 절대! 지우지마세요 : Start -->
					<iframe name="ifrmProcess" src="/blank.php" style="display:none" width="900" height="500"></iframe>
					<!-- 절대! 지우지마세요 : End -->
				</div>
            </div>
		</div>
	</div>
</body>
</html>