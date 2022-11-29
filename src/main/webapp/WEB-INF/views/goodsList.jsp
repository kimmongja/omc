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
<body class="body-goods body-goods-list pc">
	<div class="top_area"></div>
	<div id="wrap">
		<div id="container">
			<div id="contents">
				<!-- 본문 시작 -->
				<div id="sub_content">
					<div class="content" style="min-height:500px;">
					    <div class="goods_list_item">
							<div class="goods_list_item_tit">
					            <h2>(이미지)전체상품</h2>
					        </div>
					        <div class="list_item_category">
					            <ul>
					                <li class="">
					                    <a href="?cateCd=016001"><span>전체상품 <em>(전체상품수)</em></span></a>
					                </li>
					            </ul>
					        </div>
					        <div class="goods_pick_list">
					            <span class="pick_list_num">상품 <strong>(전체상품수)</strong> 개</span>
					            <form name="frmList" action="">
					                <input type="hidden" name="cateCd" value="016"> <!-- 카테고리 고유번호? -->
					                <div class="pick_list_box">
					                	<!-- 상품 정렬 -->
					                    <ul class="pick_list">
					                        <li>
					                            <input type="radio" id="sort1" class="radio" name="sort" value="">
					                            <label for="sort1" class="on">추천순</label>
					                        </li>
					                        <li>
					                            <input type="radio" id="sort2" class="radio" name="sort" value="price_asc">
					                            <label for="sort2">낮은가격순</label>
					                        </li>
					                        <li>
					                            <input type="radio" id="sort3" class="radio" name="sort" value="price_dsc">
					                            <label for="sort3">높은가격순</label>
					                        </li>
					                        <li>
					                            <input type="radio" id="sort4" class="radio" name="sort" value="review">
					                            <label for="sort4">리뷰순</label>
					                        </li>
					                        <li>
					                            <input type="radio" id="sort5" class="radio" name="sort" value="date">
					                            <label for="sort5">등록일순</label>
					                        </li>
					                    </ul>
					                    <div class="choice_num_view">
					                    	<!-- 기존 상품 보기 개수 코드 -->
					                        <select class="chosen-select" name="pageNum" style="display: none;">
					                            <option value="24" selected="selected">24개씩보기</option>
					                            <option value="48">48개씩보기</option>
					                            <option value="72">72개씩보기</option>
					                        </select>
					                    <div class="chosen-container chosen-container-single chosen-container-single-nosearch"
											 style="width: 120px;" title="">
											<a class="chosen-single">
												<span>24개씩보기</span>
												<div><b></b></div>
											</a>
											<div class="chosen-drop">
												<div class="chosen-search">
													<input type="text" autocomplete="off" readonly="">
												</div>
												<ul class="chosen-results">
													<!-- 24개씩보기로 선택되어있을 때 -->
													<li class="active-result result-selected" data-option-array-index="0" style="">24개씩보기</li>
													<li class="active-result" data-option-array-index="1" style="">48개씩보기</li>
													<li class="active-result" data-option-array-index="2" style="">72개씩보기</li>
												</ul>
											</div>
										</div>
										<div class="btn-group">
											  <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
											    상품 보기 개수
											  </button>
											  <ul class="dropdown-menu dropdown-bg-color: black">
												<li><a class="dropdown-item" href="#">24개씩보기</a></li>
											    <li><a class="dropdown-item" href="#">48개씩보기</a></li>
											    <li><a class="dropdown-item" href="#">72개씩보기</a></li>
											  </ul>
										</div>
									</div>
					                <!-- //choice_num_view -->
					                </div>
					                <!-- //pick_list_box -->
					            </form>
					        </div>
					        <!-- //goods_pick_list -->
					
					        <div class="goods_list">
					            <div class="goods_list_cont">
					                <!-- 상품 리스트 -->
									<div class="item_basket_type">
									    <ul>
									        <li style="width:25%;">
									            <div class="item_cont">
									                <div class="item_photo_box" data-image-add1="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/1000002400_add1_013.jpg" data-image-add2="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/1000002400_add2_018.jpg" data-image-list="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/1000002400_list_036.jpg" data-image-main="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/1000002400_main_029.jpg" data-image-detail="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/1000002400_detail_069.jpg" data-image-magnify="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/1000002400_magnify_017.jpg">
									                    <a href="/goods/goodsDetail.do">
									                        <img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/1000002400_add2_018.jpg" width="280" alt="심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)" title="심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)" class="middle">
									                    </a>
									                    <div class="item_link">
									                        <button type="button" class="btn_basket_get btn_add_wish_" data-goods-no="1000002400" data-goods-nm="심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)" data-goods-price="23085.00" data-goods-image-src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/1000002400_add2_018.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="" data-fixed-sales="" data-fixed-order-cnt=""><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/goods_icon/icon_basket_get.png" alt=""><span>찜하기</span></button>
									                        <button type="button" id="basketBtn" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000002400"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/goods_icon/icon_basket_cart.png" alt=""><span>장바구니</span></button>
									                    </div>
									                    <!-- //item_link -->
									                </div>
									                <!-- //item_photo_box -->
									                <div class="item_info_cont">
									                    <div class="item_tit_box">
									                        <a href="/goods/goodsDetail.do">
									                            <strong class="item_name">심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)</strong>
									                        </a>
									                    </div>
									                    <!-- //item_tit_box -->
									                    <div class="item_money_box">
															<span class="item_price_rate">SAVE<br>16%</span>
									                        <strong class="item_price">
									                            <span style="">23,085원 </span>
									                        </strong>
									                        <span style="text-decoration: line-through;color:#CECECE;color:#CECECE;font-size:12px;text-decoration:line-through;">27,800원 </span>
									                    </div>
									                    <!-- //item_money_box -->
									                    <!-- //item_number_box -->
									                    <div class="item_icon_box">
									                        
									                    </div>
									                    <!-- //item_icon_box -->
									                </div>
									                <!-- //item_info_cont -->
									            </div>
									            <!-- //item_cont -->
									        </li>
									        <li style="width:25%;">
									            <div class="item_cont">
									                <div class="item_photo_box" data-image-add1="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002399/1000002399_add1_067.jpg" data-image-add2="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002399/1000002399_add2_01.jpg" data-image-list="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002399/1000002399_list_07.jpg" data-image-main="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002399/1000002399_main_083.jpg" data-image-detail="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002399/1000002399_detail_073.jpg" data-image-magnify="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002399/1000002399_magnify_012.jpg">
									                    <a href="../goods/goods_view.php?goodsNo=1000002399">
									                        <img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002399/1000002399_add2_01.jpg" width="280" alt="입맛골인 세트(소고기 중화덮밥+소고기 고추잡채 꽃빵)" title="입맛골인 세트(소고기 중화덮밥+소고기 고추잡채 꽃빵)" class="middle">
									                    </a>
									                    <div class="item_link">
									                        <button type="button" class="btn_basket_get btn_add_wish_" data-goods-no="1000002399" data-goods-nm="입맛골인 세트(소고기 중화덮밥+소고기 고추잡채 꽃빵)" data-goods-price="19760.00" data-goods-image-src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002399/1000002399_add2_01.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="" data-fixed-sales="" data-fixed-order-cnt=""><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/goods_icon/icon_basket_get.png" alt=""><span>찜하기</span></button>
									                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000002399"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/goods_icon/icon_basket_cart.png" alt=""><span>장바구니</span></button>
									                    </div>
									                    <!-- //item_link -->
									                </div>
									                <!-- //item_photo_box -->
									                <div class="item_info_cont">
									                    <div class="item_tit_box">
									                        <a href="../goods/goods_view.php?goodsNo=1000002399">
									                            <strong class="item_name">입맛골인 세트(소고기 중화덮밥+소고기 고추잡채 꽃빵)</strong>
									                        </a>
									                    </div>
									                    <!-- //item_tit_box -->
									                    <div class="item_money_box">
															<span class="item_price_rate">SAVE<br>20%</span>
									                        <strong class="item_price">
									                            <span style="">19,760원 </span>
									                        </strong>
									                        <span style="text-decoration: line-through;color:#CECECE;color:#CECECE;font-size:12px;text-decoration:line-through;">24,800원 </span>
									                    </div>
									                    <!-- //item_money_box -->
									                    <!-- //item_number_box -->
									                    <div class="item_icon_box">
									                        
									                    </div>
									                    <!-- //item_icon_box -->
									                </div>
									                <!-- //item_info_cont -->
									            </div>
									            <!-- //item_cont -->
									        </li>
									        <li style="width:25%;">
									            <div class="item_cont">
									                <div class="item_photo_box" data-image-add1="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002397/1000002397_add1_043.jpg" data-image-add2="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002397/1000002397_add2_051.jpg" data-image-list="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002397/1000002397_list_059.jpg" data-image-main="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002397/1000002397_main_078.jpg" data-image-detail="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002397/1000002397_detail_096.jpg" data-image-magnify="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002397/1000002397_magnify_079.jpg">
									                    <a href="../goods/goods_view.php?goodsNo=1000002397">
									                        <img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002397/1000002397_add2_051.jpg" width="280" alt="[마이셰프] 냄비가득 돼지고기 묵은지찜(1-2인)" title="[마이셰프] 냄비가득 돼지고기 묵은지찜(1-2인)" class="middle">
									                    </a>
									                    <div class="item_link">
									                        <button type="button" class="btn_basket_get btn_add_wish_" data-goods-no="1000002397" data-goods-nm="[마이셰프] 냄비가득 돼지고기 묵은지찜(1-2인)" data-goods-price="10900.00" data-goods-image-src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002397/1000002397_add2_051.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="" data-fixed-sales="" data-fixed-order-cnt=""><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/goods_icon/icon_basket_get.png" alt=""><span>찜하기</span></button>
									                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000002397"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/goods_icon/icon_basket_cart.png" alt=""><span>장바구니</span></button>
									                    </div>
									                    <!-- //item_link -->
									                </div>
									                <!-- //item_photo_box -->
									                <div class="item_info_cont">
									                    <div class="item_tit_box">
									                        <a href="../goods/goods_view.php?goodsNo=1000002397">
									                            <strong class="item_name">[마이셰프] 냄비가득 돼지고기 묵은지찜(1-2인)</strong>
									                        </a>
									                    </div>
									                    <!-- //item_tit_box -->
									                    <div class="item_money_box">
									                        <strong class="item_price">
									                            <span style="">10,900원 </span>
									                        </strong>
									                    </div>
									                    <!-- //item_money_box -->
									                    <!-- //item_number_box -->
									                    <div class="item_icon_box">
									                        
									                    </div>
									                    <!-- //item_icon_box -->
									                </div>
									                <!-- //item_info_cont -->
									            </div>
									            <!-- //item_cont -->
									        </li>
									        <li style="width:25%;">
									            <div class="item_cont">
									                <div class="item_photo_box" data-image-add1="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/45/1000002395/1000002395_add1_074.jpg" data-image-add2="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/45/1000002395/1000002395_add2_087.jpg" data-image-list="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/45/1000002395/1000002395_list_022.jpg" data-image-main="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/45/1000002395/1000002395_main_052.jpg" data-image-detail="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/45/1000002395/1000002395_detail_041.jpg" data-image-magnify="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/45/1000002395/1000002395_magnify_056.jpg">
									                    <a href="../goods/goods_view.php?goodsNo=1000002395">
									                        <img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/45/1000002395/1000002395_add2_087.jpg" width="280" alt="[마이셰프] 든든한 장어구이(2인)" title="[마이셰프] 든든한 장어구이(2인)" class="middle">
									                    </a>
									                    <div class="item_link">
									                        <button type="button" class="btn_basket_get btn_add_wish_" data-goods-no="1000002395" data-goods-nm="[마이셰프] 든든한 장어구이(2인)" data-goods-price="19900.00" data-goods-image-src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/45/1000002395/1000002395_add2_087.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="" data-fixed-sales="" data-fixed-order-cnt=""><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/goods_icon/icon_basket_get.png" alt=""><span>찜하기</span></button>
									                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000002395"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/goods_icon/icon_basket_cart.png" alt=""><span>장바구니</span></button>
									                    </div>
									                    <!-- //item_link -->
									                </div>
									                <!-- //item_photo_box -->
									                <div class="item_info_cont">
									                    <div class="item_tit_box">
									                        <a href="../goods/goods_view.php?goodsNo=1000002395">
									                            <strong class="item_name">[마이셰프] 든든한 장어구이(2인)</strong>
									                        </a>
									                    </div>
									                    <!-- //item_tit_box -->
									                    <div class="item_money_box">
									                        <strong class="item_price">
									                            <span style="">19,900원 </span>
									                        </strong>
									                    </div>
									                    <!-- //item_money_box -->
									                    <!-- //item_number_box -->
									                    <div class="item_icon_box">
									                        
									                    </div>
									                    <!-- //item_icon_box -->
									                </div>
									                <!-- //item_info_cont -->
									            </div>
									            <!-- //item_cont -->
									        </li>
									        <li style="width:25%;">
									            <div class="item_cont">
									                <div class="item_photo_box" data-image-add1="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/44/1000002386/1000002386_add1_084.jpg" data-image-add2="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/44/1000002386/1000002386_add2_051.jpg" data-image-list="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/44/1000002386/1000002386_list_015.jpg" data-image-main="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/44/1000002386/1000002386_main_094.jpg" data-image-detail="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/44/1000002386/1000002386_detail_047.jpg" data-image-magnify="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/44/1000002386/1000002386_magnify_024.jpg">
									                    <a href="../goods/goods_view.php?goodsNo=1000002386">
									                        <img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/44/1000002386/1000002386_add2_051.jpg" width="280" alt="[마이셰프] 나혼자 소고기 부채살 스테이크(1인)" title="[마이셰프] 나혼자 소고기 부채살 스테이크(1인)" class="middle">
									                    </a>
									                    <div class="item_link">
									                        <button type="button" class="btn_basket_get btn_add_wish_" data-goods-no="1000002386" data-goods-nm="[마이셰프] 나혼자 소고기 부채살 스테이크(1인)" data-goods-price="9900.00" data-goods-image-src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/44/1000002386/1000002386_add2_051.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="" data-fixed-sales="" data-fixed-order-cnt=""><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/goods_icon/icon_basket_get.png" alt=""><span>찜하기</span></button>
									                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000002386"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/goods_icon/icon_basket_cart.png" alt=""><span>장바구니</span></button>
									                    </div>
									                    <!-- //item_link -->
									                </div>
									                <!-- //item_photo_box -->
									                <div class="item_info_cont">
									                    <div class="item_tit_box">
									                        <a href="../goods/goods_view.php?goodsNo=1000002386">
									                            <strong class="item_name">[마이셰프] 나혼자 소고기 부채살 스테이크(1인)</strong>
									                        </a>
									                    </div>
									                    <!-- //item_tit_box -->
									                    <div class="item_money_box">
									                        <strong class="item_price">
									                            <span style="">9,900원 </span>
									                        </strong>
									                    </div>
									                    <!-- //item_money_box -->
									                    <!-- //item_number_box -->
									                    <div class="item_icon_box">
									                        
									                    </div>
									                    <!-- //item_icon_box -->
									                </div>
									                <!-- //item_info_cont -->
									            </div>
									            <!-- //item_cont -->
									        </li>
									        <li style="width:25%;">
									            <div class="item_cont">
									                <div class="item_photo_box" data-image-add1="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/43/1000002381/1000002381_add1_012.jpg" data-image-add2="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/43/1000002381/1000002381_add2_043.jpg" data-image-list="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/43/1000002381/1000002381_list_0100.jpg" data-image-main="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/43/1000002381/1000002381_main_024.jpg" data-image-detail="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/43/1000002381/1000002381_detail_061.jpg" data-image-magnify="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/43/1000002381/1000002381_magnify_012.jpg">
									                    <a href="../goods/goods_view.php?goodsNo=1000002381">
									                        <img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/43/1000002381/1000002381_add2_043.jpg" width="280" alt="[마이셰프] 알찬 돼지고기 김치찜(2-3인)" title="[마이셰프] 알찬 돼지고기 김치찜(2-3인)" class="middle">
									                    </a>
									                    <div class="item_link">
									                        <button type="button" class="btn_basket_get btn_add_wish_" data-goods-no="1000002381" data-goods-nm="[마이셰프] 알찬 돼지고기 김치찜(2-3인)" data-goods-price="11900.00" data-goods-image-src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/43/1000002381/1000002381_add2_043.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="" data-fixed-sales="" data-fixed-order-cnt=""><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/goods_icon/icon_basket_get.png" alt=""><span>찜하기</span></button>
									                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000002381"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/goods_icon/icon_basket_cart.png" alt=""><span>장바구니</span></button>
									                    </div>
									                    <!-- //item_link -->
									                </div>
									                <!-- //item_photo_box -->
									                <div class="item_info_cont">
									                    <div class="item_tit_box">
									                        <a href="../goods/goods_view.php?goodsNo=1000002381">
									                            <strong class="item_name">[마이셰프] 알찬 돼지고기 김치찜(2-3인)</strong>
									                        </a>
									                    </div>
									                    <!-- //item_tit_box -->
									                    <div class="item_money_box">
									                        <strong class="item_price">
									                            <span style="">11,900원 </span>
									                        </strong>
									                    </div>
									                    <!-- //item_money_box -->
									                    <!-- //item_number_box -->
									                    <div class="item_icon_box">
									                        
									                    </div>
									                    <!-- //item_icon_box -->
									                </div>
									                <!-- //item_info_cont -->
									            </div>
									            <!-- //item_cont -->
									        </li>
									        <li style="width:25%;">
									            <div class="item_cont">
									                <div class="item_photo_box" data-image-add1="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/42/1000002379/1000002379_add1_040.jpg" data-image-add2="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/42/1000002379/1000002379_add2_088.jpg" data-image-list="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/42/1000002379/1000002379_list_040.jpg" data-image-main="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/42/1000002379/1000002379_main_048.jpg" data-image-detail="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/42/1000002379/1000002379_detail_025.jpg" data-image-magnify="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/42/1000002379/1000002379_magnify_072.jpg">
									                    <a href="../goods/goods_view.php?goodsNo=1000002379">
									                        <img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/42/1000002379/1000002379_add2_088.jpg" width="280" alt="홈자카야 세트(해물 오코노미야끼+소고기 야끼우동)" title="홈자카야 세트(해물 오코노미야끼+소고기 야끼우동)" class="middle">
									                    </a>
									                    <div class="item_link">
									                        <button type="button" class="btn_basket_get btn_add_wish_" data-goods-no="1000002379" data-goods-nm="홈자카야 세트(해물 오코노미야끼+소고기 야끼우동)" data-goods-price="20520.00" data-goods-image-src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/42/1000002379/1000002379_add2_088.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="" data-fixed-sales="" data-fixed-order-cnt=""><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/goods_icon/icon_basket_get.png" alt=""><span>찜하기</span></button>
									                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000002379"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/goods_icon/icon_basket_cart.png" alt=""><span>장바구니</span></button>
									                    </div>
									                    <!-- //item_link -->
									                </div>
									                <!-- //item_photo_box -->
									                <div class="item_info_cont">
									                    <div class="item_tit_box">
									                        <a href="../goods/goods_view.php?goodsNo=1000002379">
									                            <strong class="item_name">홈자카야 세트(해물 오코노미야끼+소고기 야끼우동)</strong>
									                        </a>
									                    </div>
									                    <!-- //item_tit_box -->
									                    <div class="item_money_box">
															<span class="item_price_rate">SAVE<br>13%</span>
									                        <strong class="item_price">
									                            <span style="">20,520원 </span>
									                        </strong>
									                        <span style="text-decoration: line-through;color:#CECECE;color:#CECECE;font-size:12px;text-decoration:line-through;">23,800원 </span>
									                    </div>
									                    <!-- //item_money_box -->
									                    <!-- //item_number_box -->
									                    <div class="item_icon_box">
									                        
									                    </div>
									                    <!-- //item_icon_box -->
									                </div>
									                <!-- //item_info_cont -->
									            </div>
									            <!-- //item_cont -->
									        </li>
									        <li style="width:25%;">
									            <div class="item_cont">
									                <div class="item_photo_box" data-image-add1="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/42/1000002376/1000002376_add1_067.jpg" data-image-add2="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/42/1000002376/1000002376_add2_028.jpg" data-image-list="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/42/1000002376/1000002376_list_01.jpg" data-image-main="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/42/1000002376/1000002376_main_084.jpg" data-image-detail="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/42/1000002376/1000002376_detail_048.jpg" data-image-magnify="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/42/1000002376/1000002376_magnify_073.jpg">
									                    <a href="../goods/goods_view.php?goodsNo=1000002376">
									                        <img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/42/1000002376/1000002376_add2_028.jpg" width="280" alt="[마이셰프] 제주식 딱새우 해물탕(2-3인)" title="[마이셰프] 제주식 딱새우 해물탕(2-3인)" class="middle">
									                    </a>
									                    <div class="item_link">
									                        <button type="button" class="btn_basket_get btn_add_wish_" data-goods-no="1000002376" data-goods-nm="[마이셰프] 제주식 딱새우 해물탕(2-3인)" data-goods-price="14900.00" data-goods-image-src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/10/42/1000002376/1000002376_add2_028.jpg" data-optionfl="n" data-min-order-cnt="1" data-option-sno="" data-goods-image="" data-sales-unit="" data-fixed-sales="" data-fixed-order-cnt=""><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/goods_icon/icon_basket_get.png" alt=""><span>찜하기</span></button>
									                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000002376"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/goods_icon/icon_basket_cart.png" alt=""><span>장바구니</span></button>
									                    </div>
									                    <!-- //item_link -->
									                </div>
									                <!-- //item_photo_box -->
									                <div class="item_info_cont">
									                    <div class="item_tit_box">
									                        <a href="../goods/goods_view.php?goodsNo=1000002376">
									                            <strong class="item_name">[마이셰프] 제주식 딱새우 해물탕(2-3인)</strong>
									                        </a>
									                    </div>
									                    <!-- //item_tit_box -->
									                    <div class="item_money_box">
									                        <strong class="item_price">
									                            <span style="">14,900원 </span>
									                        </strong>
									                    </div>
									                    <!-- //item_money_box -->
									                    <!-- //item_number_box -->
									                    <div class="item_icon_box">
									                        
									                    </div>
									                    <!-- //item_icon_box -->
									                </div>
									                <!-- //item_info_cont -->
									            </div>
									            <!-- //item_cont -->
									        </li>
									    </ul>
									</div>
									<!-- //item_basket_type -->
					<!-- Modal -->
					<div class="modal fade" id="basketModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-lg" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">옵션 선택</h5>
									<button class="close" id="close" type="button" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">X(이미지로 변경)</span>
									</button>
								</div>
								<div class="modal-body">
									<div class="option_layer_scroll">
							            <div class="option_tit_box">
							                <dl>
							                    <dt><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/t50_1000002400_detail_069.jpg" width="68" alt="심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)" title="심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)" class="middle"></dt>
							                    <dd>
							                        <strong>심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)</strong>
							
							                        <dl class="item_delivery">
							                            <dt>배송비</dt>
							                            <dd>
							                            <strong>3,000원</strong>
							                            <span class="btn_layer">
							                                <span class="btn_gray_list"><a href="#lyDelivery" class="btn_delivery btn_gray_small"><em>조건별배송</em></a></span>
							                                <div id="lyDelivery" class="layer_area" style="display:none;">
							                                    <div class="ly_wrap delivery_layer">
							                                        <div class="ly_tit">금액별배송비</div>
							                                        <div class="ly_cont">
							                                            <div class="delivery_list">
							                                                <ul>
							                                                    <li>
							                                                        0원 이상 ~ 40,000원 미만
							                                                        <span>
							                                                            3,000원
							                                                        </span>
							                                                    </li>
							                                                    <li>
							                                                        40,000원 이상
							                                                        <span>
							                                                            0원
							                                                        </span>
							                                                    </li>
							                                                </ul>
							                                            </div>
							                                            <p class="chk_none">
							                                                배송비 계산 기준 : 판매가
							                                                + 옵션가
							                                                + 추가상품가
							                                                + 텍스트옵션가
							                                                - 상품할인가
							                                                - 상품쿠폰할인가
							                                            </p>
							                                        </div>
							                                        <!-- //ly_cont -->
							                                        <a href="#close" class="ly_close"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/layer/btn_layer_close.png" alt="닫기"></a>
							                                    </div>
							                                </div>
							                            </span>
							                            <span class="btn_layer">
							                                <span class="btn_gray_list"><a href="#lyDeliveryZone" class="btn_delivery btn_gray_small"><em>지역별추가배송비</em></a></span>
							                                <div id="lyDeliveryZone" class="layer_area" style="display:none;">
							                                    <div class="ly_wrap delivery_zone_layer">
							                                        <div class="ly_tit"><strong>지역별배송비</strong></div>
							                                        <div class="ly_cont">
							                                            <div class="delivery_list">
							                                                <ul>
							                                                    <li>
							                                                        제주특별자치도 서귀포시
							                                                        <span>500,000원</span>
							                                                    </li>
							                                                    <li>
							                                                        제주특별자치도 제주시
							                                                        <span>500,000원</span>
							                                                    </li>
							                                                    <li>
							                                                        경상북도 울릉군
							                                                        <span>500,000원</span>
							                                                    </li>
							                                                </ul>
							                                            </div>
							                                        </div>
							                                        <!-- //ly_cont -->
							                                        <a href="#close" class="ly_close"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/layer/btn_layer_close.png" alt="닫기"></a>
							                                    </div>
							                                    <!-- //ly_wrap -->
							                                </div>
							                            <!-- //layer_area -->
							                        </span>
							                        <style>
							                            div.delivery_list ul li {margin:0; display: list-item; text-align:left;}
							                        </style>
							                        <div class="delivery-detail">
							                            <input type="hidden" name="deliveryMethodFl" value="delivery">
							                            <div class="delivery-division">택배</div>
							
							
							                            <div class="js-deliveryMethodVisitArea dn">
							                                방문 수령지 : 경기도 성남시 중원구  순환로 214번길 15 
							                            </div>
							                        </div>
							                        </dd>
							                        </dl>
							                    </dd>
							                </dl>
							            </div>
							            <!-- //option_tit_box -->
							            <div class="option_select_box">
							                <div class="option_chosen">
							                    <!-- //option_chosen (d) -->
							                    <!-- //option_chosen (optionText) -->
							                </div>
							                <!-- //option_chosen (addGoods) -->
							                <div class="item_choice_list option_list">
							                    <table class="option_display_area" border="0" cellspacing="0" cellpadding="0">
							                        <colgroup>
							                            <col width="380px">
							                            <col>
							                            <col width="80px">
							                            <col width="40px">
							                        </colgroup>
							                        <tbody id="option_display_item_0" class="option_display_item_0">
							                            <tr class="check optionKey_0">
							                                <td class="cart_prdt_name">
							                                	<!-- 상품 번호 -->
							                                    <input type="hidden" name="goodsNo[]" value="1000002400">
							                                    <input type="hidden" name="optionSno[]" value="4817">
							                                    <!-- 상품 합계 -->
							                                    <input type="hidden" name="goodsPriceSum[]" value="23085">
							                                    <input type="hidden" name="addGoodsPriceSum[]" value="0">
							                                    <div class="cart_tit_box"><strong class="cart_tit"><span>심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)</span></strong></div>
							                                    <span id="option_text_display_0"></span>
							                                </td>
							                                <td>
							                                	<!-- 상품 수량 변경 -->
							                                    <span class="count">
							                                        <span class="goods_qty">
							                                            <input type="text" name="goodsCnt[]" class="text goodsCnt_0" title="수량" value="1" data-value="1" data-stock="0" data-key="0" onchange="goodsViewLayerController.input_count_change(this, '1');return false;">
							                                            <span>
							                                                <button type="button" class="up goods_cnt" title="증가" value="up^|^0">증가</button>
							                                                <button type="button" class="down goods_cnt" title="감소" value="dn^|^0">감소</button>
							                                            </span>
							                                        </span>
							                                    </span>
							                                </td>
							                                <td class="item_choice_price">
							                                    <input type="hidden" name="optionPriceSum[]" value="0">
							                                    <input type="hidden" name="option_price_0" value="0.00">
							                                    <strong class="option_price_display_0">23,085</strong>원
							                                </td>
							                                <td></td>
							                            </tr>
							                        </tbody>
							                    </table>
							                </div>
							                <!-- //option_list -->
							            </div>
							            <!-- //option_select_box -->
							        </div>
							        <!-- //option_layer_scroll -->
								</div>
								<div class="modal-footer">
									<!-- <a class="btn" id="modalY" href="#">확인</a> -->
									<div class=" col text-center">
										<button class="btn" id="close" type="button" class="btn btn-light" data-dismiss="modal">취소</button>
										<button type="button" class="btn btn-dark">확인</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- //Modal -->
					<script>
						$('#basketBtn').click(function(e){
							e.preventDefault();
							$('#basketModal').modal("show");
						});
						
						$('#close').click(function(e){
							e.preventDefault();
							$('#basketModal').modal("hide");
						});
					</script>
					<!-- 장바구니 클릭시 노출, optionViewLayer class="layer_wrap" 로 바뀜 -->
					<!-- option layer -->
					<div id="optionViewLayer" class="layer_wrap dn">
					<style>
					    .chosen-container .chosen-results {
					        max-height:100px;
					    }
					</style>
					<script type="text/javascript" src="/data/skin/front/udweb_pc_20200903/js/gd_goods_view.js"></script>
					<script type="text/javascript">
					    var goodsViewLayerController = new gd_goods_view();
					    $(document).on('keydown focusout', 'input[name^=goodsCnt]', function(e){
					        $(this).val($(this).val().replace(/[^0-9\-]/g,""));
					    });
					</script>
					
					<div class="option_layer_cont" style="position: absolute; margin: 0px; top: 201.5px; left: 361.5px;">
					    <form name="frmViewLayer" id="frmViewLayer" method="post">
					        <input type="hidden" name="brandCd" value="">
					        <input type="hidden" name="cateCd" value="009085">
					        <input type="hidden" name="cartMode" value="">
					        <input type="hidden" name="goodsDiscount" value="0.00">
					        <input type="hidden" name="goodsDiscountFl" value="n">
					        <input type="hidden" name="goodsDiscountUnit" value="percent">
					        <input type="hidden" id="goodsOptionCnt" value="1">
					        <input type="hidden" name="mileageFl" value="c">
					        <input type="hidden" name="mileageGoods" value="0.00">
					        <input type="hidden" name="mileageGoodsUnit" value="percent">
					        <input type="hidden" name="scmNo" value="1">
					        <input type="hidden" name="selectGoodsFl" value="">
					        <input type="hidden" id="set_add_goods_price" name="set_add_goods_price" value="0">
					        <input type="hidden" name="set_coupon_dc_price" value="23085.00">
					        <input type="hidden" id="set_dc_price" value="0">
					        <input type="hidden" id="set_goods_price" name="set_goods_price" value="23085">
					        <input type="hidden" id="set_goods_fixedPrice" name="set_goods_fixedPrice" value="27800.00">
					        <input type="hidden" name="set_goods_mileage" value="0">
					        <input type="hidden" name="set_goods_stock" value="∞">
					        <input type="hidden" id="set_goods_total_price" name="set_goods_total_price" value="0">
					        <input type="hidden" id="set_option_price" name="set_option_price" value="0">
					        <input type="hidden" id="set_option_text_price" name="set_option_text_price" value="0">
					        <input type="hidden" id="set_total_price" name="set_total_price" value="23085">
					        <input type="hidden" name="taxFreeFl" value="t">
					        <input type="hidden" name="taxPercent" value="10.0">
					        <input type="hidden" name="orderPossible" value="y">
					        <input type="hidden" name="useBundleGoods" value="1">
					        <input type="hidden" name="goodsDeliveryFl" value="y">
					        <input type="hidden" name="sameGoodsDeliveryFl" value="n">
					        <input type="hidden" name="mainSno" value="">
					        <input type="hidden" name="deliveryCollectFl" value="pre">
					
					        <h4>옵션선택</h4>
					        <div class="option_layer_scroll">
					            <div class="option_tit_box">
					                <dl>
					                    <dt><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/t50_1000002400_detail_069.jpg" width="68" alt="심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)" title="심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)" class="middle"></dt>
					                    <dd>
					                        <strong>심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)</strong>
					
					                        <dl class="item_delivery">
					                            <dt>배송비</dt>
					                            <dd>
					                            <strong>3,000원</strong>
					                            <span class="btn_layer">
					                                <span class="btn_gray_list"><a href="#lyDelivery" class="btn_delivery btn_gray_small"><em>조건별배송</em></a></span>
					                                <div id="lyDelivery" class="layer_area" style="display:none;">
					                                    <div class="ly_wrap delivery_layer">
					                                        <div class="ly_tit">금액별배송비</div>
					                                        <div class="ly_cont">
					                                            <div class="delivery_list">
					                                                <ul>
					                                                    <li>
					                                                        0원 이상 ~ 40,000원 미만
					                                                        <span>
					                                                            3,000원
					                                                        </span>
					                                                    </li>
					                                                    <li>
					                                                        40,000원 이상
					                                                        <span>
					                                                            0원
					                                                        </span>
					                                                    </li>
					                                                </ul>
					                                            </div>
					                                            <p class="chk_none">
					                                                배송비 계산 기준 : 판매가
					                                                + 옵션가
					                                                + 추가상품가
					                                                + 텍스트옵션가
					                                                - 상품할인가
					                                                - 상품쿠폰할인가
					                                            </p>
					                                        </div>
					                                        <!-- //ly_cont -->
					                                        <a href="#close" class="ly_close"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/layer/btn_layer_close.png" alt="닫기"></a>
					                                    </div>
					                                </div>
					                            </span>
					                            <span class="btn_layer">
					                                <span class="btn_gray_list"><a href="#lyDeliveryZone" class="btn_delivery btn_gray_small"><em>지역별추가배송비</em></a></span>
					                                <div id="lyDeliveryZone" class="layer_area" style="display:none;">
					                                    <div class="ly_wrap delivery_zone_layer">
					                                        <div class="ly_tit"><strong>지역별배송비</strong></div>
					                                        <div class="ly_cont">
					                                            <div class="delivery_list">
					                                                <ul>
					                                                    <li>
					                                                        제주특별자치도 서귀포시
					                                                        <span>500,000원</span>
					                                                    </li>
					                                                    <li>
					                                                        제주특별자치도 제주시
					                                                        <span>500,000원</span>
					                                                    </li>
					                                                    <li>
					                                                        경상북도 울릉군
					                                                        <span>500,000원</span>
					                                                    </li>
					                                                </ul>
					                                            </div>
					                                        </div>
					                                        <!-- //ly_cont -->
					                                        <a href="#close" class="ly_close"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/layer/btn_layer_close.png" alt="닫기"></a>
					                                    </div>
					                                    <!-- //ly_wrap -->
					                                </div>
					                            <!-- //layer_area -->
					                        </span>
					                        <style>
					                            div.delivery_list ul li {margin:0; display: list-item; text-align:left;}
					                        </style>
					                        <div class="delivery-detail">
					                            <input type="hidden" name="deliveryMethodFl" value="delivery">
					                            <div class="delivery-division">택배</div>
					
					
					                            <div class="js-deliveryMethodVisitArea dn">
					                                방문 수령지 : 경기도 성남시 중원구  순환로 214번길 15 
					                            </div>
					                        </div>
					                        </dd>
					                        </dl>
					                    </dd>
					                </dl>
					            </div>
					            <!-- //option_tit_box -->
					            <div class="option_select_box">
					                <div class="option_chosen">
					                    <!-- //option_chosen (d) -->
					                    <!-- //option_chosen (optionText) -->
					                </div>
					                <!-- //option_chosen (addGoods) -->
					                <div class="item_choice_list option_list">
					                    <table class="option_display_area" border="0" cellspacing="0" cellpadding="0">
					                        <colgroup>
					                            <col width="380px">
					                            <col>
					                            <col width="80px">
					                            <col width="40px">
					                        </colgroup>
					                        <tbody id="option_display_item_0" class="option_display_item_0">
					                            <tr class="check optionKey_0">
					                                <td class="cart_prdt_name">
					                                	<!-- 상품 번호 -->
					                                    <input type="hidden" name="goodsNo[]" value="1000002400">
					                                    <input type="hidden" name="optionSno[]" value="4817">
					                                    <!-- 상품 합계 -->
					                                    <input type="hidden" name="goodsPriceSum[]" value="23085">
					                                    <input type="hidden" name="addGoodsPriceSum[]" value="0">
					                                    <div class="cart_tit_box"><strong class="cart_tit"><span>심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)</span></strong></div>
					                                    <span id="option_text_display_0"></span>
					                                </td>
					                                <td>
					                                	<!-- 상품 수량 변경 -->
					                                    <span class="count">
					                                        <span class="goods_qty">
					                                            <input type="text" name="goodsCnt[]" class="text goodsCnt_0" title="수량" value="1" data-value="1" data-stock="0" data-key="0" onchange="goodsViewLayerController.input_count_change(this, '1');return false;">
					                                            <span>
					                                                <button type="button" class="up goods_cnt" title="증가" value="up^|^0">증가</button>
					                                                <button type="button" class="down goods_cnt" title="감소" value="dn^|^0">감소</button>
					                                            </span>
					                                        </span>
					                                    </span>
					                                </td>
					                                <td class="item_choice_price">
					                                    <input type="hidden" name="optionPriceSum[]" value="0">
					                                    <input type="hidden" name="option_price_0" value="0.00">
					                                    <strong class="option_price_display_0">23,085</strong>원
					                                </td>
					                                <td></td>
					                            </tr>
					                        </tbody>
					                    </table>
					                </div>
					                <!-- //option_list -->
					            </div>
					            <!-- //option_select_box -->
					        </div>
					        <!-- //option_layer_scroll -->
					        <div class="btn_box">
					            <button type="button" class="btn_cancel"><span>취소</span></button>
					            <button type="button" class="btn_confirm js_btn_cart"><span>확인</span></button>
					        </div>
					        <!-- //btn_box -->
					        <span class="layer_close"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/layer/btn_layer_close.png" alt="닫기"></span>
					    </form>
					    <!-- //frmViewLayer -->
					</div>
					<!-- //option_layer_cont -->
					
					<style>
					    .option_tit_box dl{overflow:visible;}
					</style>
					<script type="text/javascript" src="/data/skin/front/udweb_pc_20200903/js/jquery/chosen-imageselect/src/ImageSelect.jquery.js"></script>
					<link type="text/css" rel="stylesheet" href="/data/skin/front/udweb_pc_20200903/js/jquery/chosen-imageselect/src/ImageSelect.css">
					<script type="text/javascript">
					    <!--
					    var goodsTotalCnt;
					    var goodsOptionCnt = [];
					    $(document).ready(function() {
					        var parameters = {
					            'setTemplate' : 'Layer',
					            'setControllerName' : goodsViewLayerController,
					            'setOptionFl' : 'n',
					            'setOptionTextFl' : 'n',
					            'setOptionDisplayFl' : 's',
					            'setAddGoodsFl'	: 'n',
					            'setIntDivision' : '||',
					            'setStrDivision' : '^|^',
					            'setMileageUseFl' : '',
					            'setCouponUseFl' : '',
					            'setMinOrderCnt' : '1',
					            'setMaxOrderCnt' : '0',
					            'setStockFl' : 'n',
					            'setSalesUnit' : '1',
					            'setDecimal' : '',
					            'setGoodsPrice' : '23085.00',
					            'setGoodsNo' : '1000002400',
					            'setMileageFl' : ' c',
					            'setGoodsNm': "심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)",
					            'setImage': "https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/1000002400_detail_069.jpg",
					            'setFixedSales' : "option",
					            'setFixedOrderCnt' : "option",
					            'setOptionPriceFl' : 'y',
					            'setStockCnt' : '∞'
					        };
					
					        goodsViewLayerController.init(parameters);
					
					        goodsViewLayerController.goods_calculate('#frmViewLayer', 1, 0, "1");
					
					        $('#frmViewLayer button.goods_cnt').on('click', function() {
					            goodsViewLayerController.count_change(this, 1);
					        });
					
					        $('button.add_goods_cnt').on('click', function() {
					            goodsViewLayerController.count_change(this);
					        });
					
					        $('.btn_delivery').click(function(e){
					            var tg = $(this).attr('href');
					            if(tg.substr(0, 1) == '#'){
					                e.preventDefault();
					                if($(tg).css('display') == 'none'){
					                    $(tg).show();
					                    $(tg).find('.ly_close').attr('href',tg);
					                }else{
					                    $(tg).hide();
					                }
					            }
					        });
					        $('.ly_close').click(function(){
					            var tg = $(this).attr('href');
					            if (tg.substr(0, 1) == '#') {
					                $(tg).hide();
					            }
					        });
					
					        var salesUnit = parseInt("1");
					        var minOrderCnt = parseInt("1");
					        var maxOrderCnt = parseInt("0");
					        $('.js_btn_cart').on('click', function() {
					            if (typeof aCounterPageScriptCart === "function") { aCounterPageScriptCart(parameters); setTimeout(function() {}, 200); }
					            var goodsInfo = $('#frmViewLayer input[name="optionSnoInput"]').val();
					
					            if (goodsInfo == '') {
					                alert("가격 정보가 없거나 옵션이 선택되지 않았습니다!");
					                return false;
					            }
					
					
					
					            var submitFl = true;
					            if (isNaN(goodsTotalCnt)) goodsTotalCnt = 0;
					            for (i in goodsOptionCnt) {
					                if (isNaN(goodsOptionCnt[i])) goodsOptionCnt[i] = 0;
					                var perSalesCnt = goodsOptionCnt[i] % salesUnit;
					
					                if (perSalesCnt !== 0) {
					                    alert(__('%s개 단위로 묶음 주문 상품입니다.', salesUnit));
					                    submitFl = false;
					                    break;
					                }
					            }
					
					            if (submitFl == true) {
					                var fixedAlertString = '옵션당';
					
					                for (i in goodsOptionCnt) {
					                    if (isNaN(goodsOptionCnt[i])) goodsOptionCnt[i] = 0;
					                    var perSalesCnt = goodsOptionCnt[i] % salesUnit;
					
					                    if (minOrderCnt > 1 && goodsOptionCnt[i] < minOrderCnt) {
					                        alert(__('최소 구매 수량 미달 : ' + fixedAlertString + ' 최소 %s개 이상 구매가능합니다.', minOrderCnt));
					                        submitFl = false;
					                        break;
					                    } else if (maxOrderCnt > 0 && goodsOptionCnt[i] > maxOrderCnt) {
					                        alert(__('최대 구매 수량 초과 : ' + fixedAlertString + ' 최대 %s개 이하 구매가능합니다.', maxOrderCnt));
					                        submitFl = false;
					                        break;
					                    }
					                }
					            }
					
					            $('#optionViewLayer').find("input[name='goodsNo[]']").val("1000002400");
					
					            gd_goods_option_view_result($("#frmViewLayer").serialize(), "");
					
					        });
					
					    });
					
					    /**
					     * 총 합산
					     */
					    function gd_total_calculate() {
					        var goodsPrice = parseFloat($('#frmViewLayer input[name="set_goods_price"]').val());
					
					        //총합계 계산
					        goodsTotalCnt = 0;
					        goodsOptionCnt = [];
					        $('#frmViewLayer input[name*="goodsCnt[]"]').each(function (index) {
					            goodsTotalCnt += parseFloat($(this).val());
					            goodsOptionCnt[index] = parseFloat($(this).val());
					        });
					        var goodsTotalPrice = goodsPrice * goodsTotalCnt;
					        var setOptionPrice = 0;
					
					        $('#frmViewLayer input[name*="optionPriceSum[]"]').each(function () {
					            setOptionPrice += parseFloat($(this).val());
					        });
					
					        var setOptionTextPrice = 0;
					        $('#frmViewLayer input[name*="optionTextPriceSum[]"]').each(function () {
					            setOptionTextPrice += parseFloat($(this).val());
					        });
					
					        var setAddGoodsPrice = 0;
					        $('#frmViewLayer input[name*="add_goods_total_price["]').each(function () {
					            setAddGoodsPrice += parseFloat($(this).val());
					        });
					
					        $('#set_option_price').val(setOptionPrice);
					        $('#set_option_text_price').val(setOptionTextPrice);
					        $('#set_add_goods_price').val(setAddGoodsPrice);
					
					        var totalGoodsPrice = (goodsTotalPrice + setOptionPrice + setOptionTextPrice + setAddGoodsPrice).toFixed();
					        $('#frmViewLayer input[name="set_total_price"]').val(totalGoodsPrice);
					        $('button.goods_cnt').attr('disabled', false);
					        $('button.add_goods_cnt').attr('disabled', false);
					    }
					    //-->
					</script>
					<%-- <script type="text/html" id="optionTemplateLayer">
				    <tbody id="option_display_item_<%=displayOptionkey%>">
				        <tr class="check optionKey_<%=optionSno%>">
				            <td class="cart_prdt_name">
				                <input type="hidden" name="goodsNo[]" value="1000002400" />
				                <input type="hidden" name="optionSno[]" value="<%=optionSno%>" />
				                <input type="hidden" name="goodsPriceSum[]" value="0" />
				                <input type="hidden" name="addGoodsPriceSum[]" value="0" />
				                <input type="hidden" name="displayOptionkey[]" value="<%=displayOptionkey%>" />
				                <div class="cart_tit_box">
				                    <strong class="cart_tit">
				                        <span><%=optionName%><%=optionSellCodeValue%><%=optionDeliveryCodeValue%></span>
				                        <span id="option_text_display_<%=displayOptionkey%>"></span>
				                    </strong>
				                </div>
				            </td>
				            <td>
				                <span class="count">
				                    <span class="goods_qty">
				                        <input type="text" name="goodsCnt[]" class="text goodsCnt_<%=displayOptionkey%>" title="수량" value="1" data-value="1"  data-stock="<%=optionStock%>" data-key="<%=displayOptionkey%>" onchange="goodsViewLayerController.input_count_change(this, '1');return false;" />
				                        <span>
				                            <button type="button" class="up goods_cnt" title="증가" value="up^|^<%=displayOptionkey%>">증가</button>
				                            <button type="button" class="down goods_cnt" title="감소" value="dn^|^<%=displayOptionkey%>">감소</button>
				                        </span>
				                    </span>
				                </span>
				            </td>
				            <td class="item_choice_price">
				                <input type="hidden" name="option_price_<%=displayOptionkey%>" value="<%=optionPrice%>" />
				                <input type="hidden" name="optionPriceSum[]" value="0" />
				                <strong class="option_price_display_<%=displayOptionkey%>"><%=optionPrice%></strong>원
				            </td>
				            <td>
				                <button class="delete_goods" data-key="option_display_item_<%=displayOptionkey%>"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/layer/btn_opt_del.png" alt="삭제"/></button>
				            </td>
				        </tr>
				    </tbody>
					</script>
									<script type="text/html" id="addGoodsTemplateLayer">
				    <tr id="add_goods_display_item_<%=displayOptionkey%>_<%=displayAddGoodsKey%>" class="check item_choice_divide">
				        <td class="cart_prdt_name">
				            <div class="cart_tit_box">
				                <input type="hidden" name="addGoodsNo[<%=optionIndex%>][]" value="<%=optionSno%>" data-group="<%=addGoodsGroup%>" />
				                <strong class="item_choice_tit">
				                    <em class="item_choice_photo"><%=addGoodsimge%></em><span><%=addGoodsName%></span>
				                </strong>
				            </div>
				        </td>
				        <td>
				            <span class="count">
				                <span class="goods_qty">
				                    <input type="text" name="addGoodsCnt[<%=optionIndex%>][]" class="text addGoodsCnt_<%=displayOptionkey%>_<%=displayAddGoodsKey%>" title="수량" value="1" data-key="<%=displayOptionkey%>||<%=displayAddGoodsKey%>" data-stock-fl="<%=addGoodsStockFl%>" data-stock="<%=addGoodsStock%>" onchange="goodsViewLayerController.input_count_change(this);return false;" />
				                    <span>
				                        <button type="button" class="up add_goods_cnt" title="증가" value="up^|^<%=displayOptionkey%>||<%=displayAddGoodsKey%>">증가</button>
				                        <button type="button" class="down add_goods_cnt" title="감소" value="dn^|^<%=displayOptionkey%>||<%=displayAddGoodsKey%>">감소</button>
				                    </span>
				                </span>
				            </span>
				        </td>
				        <td class="item_choice_price">
				            <input type="hidden" name="add_goods_price_<%=displayOptionkey%>_<%=displayAddGoodsKey%>" value="<%=addGoodsPrice%>" />
				            <input type="hidden" name="add_goods_total_price[<%=optionIndex%>][]" value="" />
				            <strong class="add_goods_price_display_<%=displayOptionkey%>_<%=displayAddGoodsKey%>"></strong>원
				        </td>
				        <td>
				            <button class="delete_add_goods" data-key="<%=displayOptionkey%>-<%=displayAddGoodsKey%>"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/layer/btn_opt_del.png" alt="삭제"/></button>
				        </td>
				    </tr>
					</script> --%>
					</div>
									<!-- 장바구니 담기 후 옵션 선택해서 확인 눌렀을 때 뜨는 창 -->
									<!-- //option layer -->
									<div id="addCartLayer" class="layer_wrap dn">
									    <div class="box add_cart_layer" style="position: absolute; margin: 0px; top: 279.5px; left: 651px;">
									        <div class="view">
									            <h2>장바구니 담기</h2>
									            <div class="scroll_box">
									                <p class="success"><strong>상품이 장바구니에 담겼습니다.</strong><br>바로 확인하시겠습니까?</p>
									            </div>
									            <div class="btn_box">
									                <button class="btn_cancel"><span>취소</span></button>
									                <button class="btn_confirm btn_move_cart"><span>확인</span></button>
									            </div>
									            <!-- //btn_box -->
									            <button title="닫기" class="close" type="button">닫기</button>
									        </div>
									    </div>
									</div>
									<!-- 찜하기 후 뜨는 창 -->
									<div id="addWishLayer" class="layer_wrap dn">
									    <div class="box add_wish_layer" style="position: absolute; margin: 0px; top: 279.5px; left: 651px;">
									        <div class="view">
									            <h2>찜 리스트 담기</h2>
									            <div class="scroll_box">
									                <p class="success"><strong>상품이 찜 리스트에 담겼습니다.</strong><br>바로 확인하시겠습니까?</p>
									            </div>
									            <div class="btn_box">
									                <button class="btn_cancel"><span>취소</span></button>
									                <button class="btn_confirm btn_move_wish"><span>확인</span></button>
									            </div>
									            <!-- //btn_box -->
									            <button title="닫기" class="close layer_close" type="button">닫기</button>
									        </div>
									    </div>
									</div>
									<!-- //layer_wrap -->
									<!-- wish template -->
									<form id="frmWishTemplateView" method="post">
									    <input type="hidden" name="mode" value="wishIn">
									    <input type="hidden" name="cartMode" value="">
									    <input type="hidden" name="optionFl" value="">
									</form>
									<!-- //cart template -->
									<script type="text/javascript">
									    <!--
									    $(document).ready(function(){
									        $('.item_photo_box').on('click', '.btn_add_wish_', function(){
									            alert("로그인하셔야 본 서비스를 이용하실 수 있습니다.");
									            document.location.href = "../member/login.php";
									            return false;
									        });
									
									        $('.item_photo_box').on('click', '.btn_add_cart_', function(){
									            if($(this).data('mode') == 'cartIn') {
									                var params = {
									                    page: 'goods',
									                    type: 'goods',
									                    goodsNo: $(this).data('goods-no'),
									                    mainSno : '',
									                };
									
									                $.ajax({
									                    method: "POST",
									                    cache: false,
									                    url: "../goods/layer_option.php",
									                    data: params,
									                    success: function (data) {
									                        
									                        $('#optionViewLayer').empty().append(data);
									                        $('#optionViewLayer').find('>div').center();
									                    },
									                    error: function (data) {
									                        alert(data.message);
									                    }
									                });
									            }
									        });
									
									        $('.layer-cartaddconfirm').click(function(){
									            location.href = '../order/cart.php';
									        });
									
									        $('.btn_move_cart').click(function() {
									            location.href = '../order/cart.php';
									        });
									
									        $('.btn_move_wish').click(function() {
									            location.href = '../mypage/wish_list.php';
									        });
									
									    });
									
									    function gd_goods_option_view_result(params) {
									        params += "&mode=cartIn";
									        $.ajax({
									            method: "POST",
									            cache: false,
									            url: "../order/cart_ps.php",
									            data: params,
									            success: function (data) {
									                $("#optionViewLayer").addClass('dn');
									                $("#addCartLayer").removeClass('dn');
									                $('#layerDim').removeClass('dn');
									                $("#addCartLayer").find('> div').center();
									            },
									            error: function (data) {
									                alert(data.message);
									            }
									        });
									    }
									    //-->
									</script>
					                <!-- //상품 리스트 -->
					            </div>
					        </div>
					
					        <div class="pagination">
					            <div class="pagination">
					            	<ul>
					            		<li class="on"><span>1</span></li>
					            		<li><a href="./goods_list.php?page=2&amp;cateCd=016">2</a></li>
					            		<li><a href="./goods_list.php?page=3&amp;cateCd=016">3</a></li>
					            		<li><a href="./goods_list.php?page=4&amp;cateCd=016">4</a></li>
					            		<li><a href="./goods_list.php?page=5&amp;cateCd=016">5</a></li>
					            	</ul>
					            </div>
					        </div>
					    </div>
					    <!-- //goods_list_item -->
						<script type="text/javascript">
							$(document).ready(function () {
					
								$('form[name=frmList] select[name=pageNum]').change(function() {
									$('form[name=frmList]').get(0).submit();
								});
					
								$('form[name=frmList] input[name=sort]').click(function() {
									$('form[name=frmList]').get(0).submit();
								});
								
								$(':radio[name="sort"][value=""]').prop("checked","checked")
								$(':radio[name="sort"][value=""]').next().addClass('on');
							});
						</script>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>