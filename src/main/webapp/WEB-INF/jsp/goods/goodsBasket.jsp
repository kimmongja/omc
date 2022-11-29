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
<body class="body-order body-cart pc">
	<div class="top_area"></div>
		<div id="wrap">
			<div id="container">
				<!-- 본문 시작 -->
				<div class="location_wrap">
					<div class="location_cont">
						<em><a href="#" class="local_home">HOME</a> &gt; 장바구니</em>
					</div>
				</div>
				<!-- //location_wrap -->
				<div class="sub_content">
					<!-- //side_cont -->
					<div class="content_box">
						<div class="order_wrap">
							<div class="order_tit">
								<h2>장바구니</h2>
								<ol>
									<li class="page_on"><span>01</span> 장바구니 <span><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com./resources/img/member/icon_join_step_on.png" alt=""></span></li>
									<li><span>02</span> 주문서작성/결제<span><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com./resources/img/member/icon_join_step_off.png" alt=""></span></li>
									<li><span>03</span> 주문완료</li>
								</ol>
							</div>
							<!-- //order_tit -->

							<div class="cart_cont">

								<form id="frmCart" name="frmCart" method="post" target="ifrmProcess">
									<input type="hidden" name="mode" value=""> <input type="hidden" name="cart[cartSno]" value=""> <input type="hidden" name="cart[goodsNo]" value=""> <input type="hidden" name="cart[goodsCnt]" value=""> <input type="hidden" name="cart[addGoodsNo]" value=""> <input type="hidden" name="cart[addGoodsCnt]" value=""> <input type="hidden" name="cart[couponApplyNo]" value=""> <input type="hidden" name="useBundleGoods" value="1">
									<!-- 장바구니 상품리스트 시작 -->

									<div class="cart_cont_list">
										<div class="order_cart_tit"></div>
										<!-- //order_cart_tit -->

										<div class="order_table_type">
											<table>
												<colgroup>
													<col style="width: 3%">
													<!-- 체크박스 -->
													<col>
													<!-- 상품명/옵션 -->
													<col style="width: 10%">
													<!-- 수량 -->
													<col style="width: 10%">
													<!-- 상품금액 -->
													<col style="width: 13%">
													<!-- 할인/적립 -->
													<col style="width: 10%">
													<!-- 합계금액 -->
													<col style="width: 10%">
													<!-- 배송비 -->
												</colgroup>
												<thead>
													<tr>
														<th>
															<div class="form_element">
																<input type="checkbox" id="allCheck1" class="gd_select_all_goods" data-target-id="cartSno1_" data-target-form="#frmCart" checked="checked">
																<label for="allCheck1" class="check_s on"></label>
															</div>
														</th>
														<th>상품/옵션 정보</th>
														<th>수량</th>
														<th>상품금액</th>
														<th>할인/적립</th>
														<th>합계금액</th>
														<th>배송비</th>
													</tr>
												</thead>
												<tbody>

													<tr>
														<td class="td_chk">
															<div class="form_element">
																<input type="checkbox" id="cartSno1_1248101" name="cartSno[]" value="1248101" checked="checked" data-price="19900" data-mileage="190" data-goodsdc="0" data-memberdc="0" data-coupondc="0" data-possible="y" data-goods-key="" data-goods-no="1000002155" data-goods-nm="[마이셰프x동원F&amp;B] 맵칼 낙골새(2인)" data-option-nm="" data-fixed-sales="" data-sales-unit="1" data-fixed-order-cnt="" data-min-order-cnt="1" data-max-order-cnt="0" data-default-goods-cnt="1"> <label for="cartSno1_1248101" class="check_s on"></label>
															</div>
														</td>
														<td class="td_left">
															<div class="pick_add_cont">
																<span class="pick_add_img"> <a href="../goods/goods_view.php?goodsNo=1000002155"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/02/08/1000002155/1000002155_list_074.jpg" width="40" alt="[마이셰프x동원F&amp;B] 맵칼 낙골새(2인)" title="[마이셰프x동원F&amp;B] 맵칼 낙골새(2인)" class="middle"></a>
																</span>
																<div class="pick_add_info">

																	<div id="coupon_apply_1248101" class="pick_btn_box">
																		<a href="#" class="btn_alert_login"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com./resources/img/common/btn/btn_coupon_apply.png" alt="쿠폰적용"></a>
																	</div>

																	<em><a href="../goods/goods_view.php?goodsNo=1000002155">[마이셰프x동원F&amp;B]
																			맵칼 낙골새(2인)</a></em>

																	<!-- //icon_pick_list -->

																	<div class="pick_option_box"></div>

																	<div class="pick_option_box"></div>
																</div>
															</div> <!-- //pick_add_cont --> <!-- //pick_add_list -->

														</td>
														<td class="td_order_amount"><input type="hidden" name="maxOrderCnt[]" id="maxOrderCnt[1000002155]" value="0"> <input type="text" name="goodsCnt[]" value="1" title="수량" class="text" data-stock-fl="n" data-total-stock="0" data-min-order-cnt="1" data-max-order-cnt="0" data-sales-unit="1" data-change-before-value="1" data-default-goods-cnt="1" data-goods-key="" data-goods-no="1000002155" data-goods-nm="[마이셰프x동원F&amp;B] 맵칼 낙골새(2인)" data-option-nm="" data-fixed-sales="" data-fixed-order-cnt="" onchange="input_count_change(this,'1');return false;">
															<button type="button" class="normal-btn small1 js-goods-cnt-change" data-sno="1248101" data-goodsno="1000002155" style="height: 26px; background: url(./resources/img/etc/btn-small1-bg.png) repeat-x left top; font-size: 11px !important; line-height: 22px; width: auto; padding: 0 10px !important; border: 1px solid #dbdbdb; color: #6c6c6c; text-align: center; vertical-align: top; box-sizing: border-box; cursor: pointer;">
																<em>수정</em>
															</button> <!--수량 변경 불가--></td>
														<td><strong class="order_sum_txt price">19,900원</strong>
															<p class="add_currency"></p></td>
														<td class="td_benefit">
															<ul class="benefit_list">
															</ul>
														</td>
														<td><strong class="order_sum_txt">19,900원</strong>
															<p class="add_currency"></p></td>
														<td class="td_delivery" rowspan="1">택배<br>
															3,000원

														</td>
													</tr>

												</tbody>


											</table>
										</div>

									</div>
									<!-- //cart_cont_list -->
									<!-- 장바구니 상품리스트 끝 -->
								</form>
								<div class="btn_left_box">
									<a href="https://mychef.kr:443/goods/goods_list.php?cateCd=023012" class="shop_go_link"><em>&lt; 쇼핑 계속하기</em></a>
								</div>
								<div class="price_sum">
									<div class="price_sum_cont">
										<div class="price_sum_list">
											<dl>
												<dt>
													총 <strong id="totalGoodsCnt">1</strong> 개의 상품금액
												</dt>
												<dd>
													<strong id="totalGoodsPrice">19,900</strong>원
												</dd>
											</dl>
											<span><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com./resources/img/order/order_price_plus.png" alt="더하기"></span>
											<dl>
												<dt>배송비</dt>
												<dd>
													<strong id="totalDeliveryCharge">3,000</strong>원
												</dd>
											</dl>
											<span><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com./resources/img/order/order_price_total.png" alt="합계"></span>
											<dl class="price_total">
												<dt>합계</dt>
												<dd>
													<strong id="totalSettlePrice">22,900</strong>원
												</dd>
											</dl>
										</div>
										<em id="deliveryChargeText" class="tobe_mileage"></em>
									</div>
									<!-- //price_sum_cont -->
								</div>
								<!-- //price_sum -->
								<div class="btn_order_box">
									<span class="btn_left_box">
										<button type="button" class="btn_order_choice_del" onclick="gd_cart_process('cartDelete');">선택 상품 삭제</button>
										<button type="button" class="btn_order_choice_wish" onclick="gd_cart_process('cartToWish');">선택 상품 찜</button>
									</span> <span class="btn_right_box">
										<button type="button" class="btn_order_choice_buy" onclick="gd_cart_process('orderSelect');">선택 상품 주문</button>
										<button type="button" class="btn_order_whole_buy" onclick="gd_order_all();">전체 상품 주문</button>
									</span>
								</div>
								<!-- //btn_order_box -->
								<em class="chk_none">주문서 작성단계에서 할인/마일리지 적용을 하실 수 있습니다.</em>
								<div class="pay_box">
									<div class="payco_pay"></div>
									<div class="naver_pay"></div>
								</div>
								<!-- //pay_box -->
							</div>
							<!-- //cart_cont -->
						</div>
						<!-- //order_wrap -->
					</div>
					<!-- //content_box -->

					<!-- 쿠폰 적용하기 레이어 -->
					<div id="couponApplyLayer" class="layer_wrap coupon_apply_layer dn"></div>
					<!--//쿠폰 적용하기 레이어 -->

					<!-- 옵션 변경하기 레이어 -->
					<div id="optionViewLayer" class="layer_wrap dn"></div>
					<!-- 옵션 변경하기 레이어 -->

					<script type="text/javascript">
					    <!--
					    $(document).ready(function () {
					        $('.js_impossible_layer').on('click', function(){
					            $(".nomal_layer").addClass('dn');
					            if ($(".nomal_layer").is(":hidden")) {
					                $(this).next(".nomal_layer").removeClass('dn');
					            }
					        });
					
					        // 쿠폰 적용/변경 레이어
					        $('.btn_open_layer').bind('click', function(e){
					            if($(this).attr('href') == '#couponApplyLayer') {
					                var params = {
					                    mode: 'coupon_apply',
					                    cartSno: $(this).data('cartsno'),
					                };
					                $.ajax({
					                    method: "POST",
					                    cache: false,
					                    url: "../order/layer_coupon_apply.php",
					                    data: params,
					                    success: function (data) {
					                        $('#couponApplyLayer').empty().append(data);
					                        $('#couponApplyLayer').find('>div').center();
					                    },
					                    error: function (data) {
					//                        console.log(data);
					                        alert(data);
					                    }
					                });
					            }
					        });
					        // 쿠폰 취소
					        $('.js_btn_coupon_cancel').bind('click', function(e){
					            var cartSno = $(this).data('cartsno');
					            $('[name="cart[cartSno]"]').val(cartSno);
					            $('#frmCart input[name=\'mode\']').val('couponDelete');
					            $('#frmCart').attr('method', 'post');
					            $('#frmCart').attr('target', 'ifrmProcess');
					            $('#frmCart').attr('action', '../order/cart_ps.php');
					            $('#frmCart').submit();
					
					            return false;
					        });
					        // 숫자 체크
					        //$('input[name*=\'goodsCnt\']').number_only();
					
					
					        var totalDeliveryCharge = numeral().unformat($('#totalDeliveryCharge').text());
					        // 선택한 상품에 따른 금액 계산
					        $('#frmCart input:checkbox[name="cartSno[]"], .gd_select_all_goods').click(function () {
					            // 체크박스 전체 선택상태에 따른 체크박스 변경처리
					            var checkedCount = 0;
					            var $eachCheckBox = $(this).closest('table').find('tbody input[name="cartSno[]"]:checkbox');
					            // 전체 및 개별 상품 선택 처리
					            if ($(this).hasClass('gd_select_all_goods')) {
					                var allCheckFl = $(this).prop('checked');
					                $eachCheckBox.each(function(){
					                    $(this).prop('checked', allCheckFl);
					                    if (allCheckFl) {
					                        $('label[for=' + $(this).attr('id') + ']').addClass('on');
					                    } else {
					                        $('label[for=' + $(this).attr('id') + ']').removeClass('on');
					                    }
					                });
					            } else {
					                $eachCheckBox.each(function(idx){
					                    if ($(this).prop('checked') === true) {
					                        checkedCount++;
					                    }
					                });
					                if ($eachCheckBox.length == checkedCount) {
					                    $(this).closest('table').find('thead > tr > th:first-child input[id*=allCheck]').prop('checked', true);
					                    $(this).closest('table').find('thead > tr > th:first-child label[for*=allCheck]').addClass('on');
					                } else {
					                    $(this).closest('table').find('thead > tr > th:first-child input[id*=allCheck]').prop('checked', false);
					                    $(this).closest('table').find('thead > tr > th:first-child label[for*=allCheck]').removeClass('on');
					                }
					            }
					
					            window.setTimeout(function(){
					                $.ajax({
					                    method: "POST",
					                    cache: false,
					                    url: "../order/cart_ps.php",
					                    data: "mode=cartSelectCalculation&" + $('#frmCart input:checkbox[name="cartSno[]"]:checked').serialize(),
					                    dataType: 'json',
					                    beforeSend: function(){
					                        $('input[name="cartSno[]"], .gd_select_all_goods').prop('disabled', true);
					                    }
					                }).success(function (data) {
					                    $('#totalGoodsCnt').html(numeral(data.cartCnt).format('0,0'));
					                    $('#totalGoodsPrice').html(gd_money_format(data.totalGoodsPrice));
					                    $('#totalGoodsDcPrice').html(gd_money_format(data.totalGoodsDcPrice));
					                    $('#totalMinusMember').html(gd_money_format(data.totalMemberDcPrice));
					                    $('#totalCouponGoodsDcPrice').html(gd_money_format(data.totalCouponGoodsDcPrice));
					                    $('#totalMyappDcPrice').html(gd_money_format(data.totalMyappDcPrice));
					                    $('#totalSettlePrice').html(gd_money_format(data.totalSettlePrice));
					                    $('#totalSettlePriceAdd').html(gd_add_money_format(data.totalSettlePrice));
					                    $('#totalGoodsMileage').html(numeral(data.totalMileage).format());
					                    $('#deliveryChargeText').html('');
					                    $('#totalDeliveryCharge').html(gd_money_format(data.totalDeliveryCharge));
					                    $('input[name="cartSno[]"], .gd_select_all_goods').prop('disabled', false);
					                }).error(function (e) {
					                    alert(e);
					                    $('input[name="cartSno[]"], .gd_select_all_goods').prop('disabled', false);
					                });
					            }, 200);
					
					
					        });
					
					
					
					        $('.btn_open_layer').bind('click', function(e){
					            if($(this).attr('href') == '#optionViewLayer') {
					                if($(this).data('coupon') == 'use') {
					                    alert("쿠폰 적용 취소 후 옵션 변경 가능합니다.");
					                    return false;
					                } else {
					                    var params = {
					                        type : 'cart',
					                        sno: $(this).data('sno'),
					                        goodsNo: $(this).data('goodsno')
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
					
					            }
					        });
					
					
					
							// 상품 수량 변경
					        $('.js-goods-cnt-change').click(function (e) {
					            var $target = $(e.target);
					            var cartSno = $(this).data('sno');
					            var goodsNo = $(this).data('goodsno');
					            var goodsCnt = $target.closest('td').find('input:text[name="goodsCnt[]"]').val();
					            var addGoodsNo = $(this).data('addgoodsno');
					            var addGoodsCnt = $target.closest('td').find('input:text[name="addGoodsCnt[]"]').val();
					
					
								//var maxOrderCnt = $(this).data('maxOrderCnt');
					
								//console.log(goodsNo);
					
								var elem = document.getElementById("maxOrderCnt["+goodsNo+"]");
					
								//console.log(elem.value);
								//console.log(goodsCnt);
								
					
					            if (typeof goodsCnt == 'undefined') {
					                goodsCnt = '';
					            }
					            if (typeof addGoodsNo == 'undefined') {
					                addGoodsNo = '';
					            }
					            if (typeof addGoodsCnt == 'undefined') {
					                addGoodsCnt = '';
					            }
								console.log(elem.value);
								console.log(goodsCnt);
								if( elem.value >= goodsCnt ){
									
									if( goodsCnt != 0 ){
										
										$('[name="cart[cartSno]"]').val(cartSno);
										$('[name="cart[goodsNo]"]').val(goodsNo);
										$('[name="cart[goodsCnt]"]').val(goodsCnt);
										$('[name="cart[addGoodsNo]"]').val(addGoodsNo);
										$('[name="cart[addGoodsCnt]"]').val(addGoodsCnt);
					
										$('#frmCart input[name=\'mode\']').val('cartCnt');
										$('#frmCart').attr('method', 'post');
										$('#frmCart').attr('target', 'ifrmProcess');
										$('#frmCart').attr('action', '../order/cart_ps.php');
										$('#frmCart').submit();
									}
									else{
										alert("0이상 입력해주세요");
										window.location.reload();
									}
					
								
								}
								else if (elem.value == 0){
									$('[name="cart[cartSno]"]').val(cartSno);
										$('[name="cart[goodsNo]"]').val(goodsNo);
										$('[name="cart[goodsCnt]"]').val(goodsCnt);
										$('[name="cart[addGoodsNo]"]').val(addGoodsNo);
										$('[name="cart[addGoodsCnt]"]').val(addGoodsCnt);
					
										$('#frmCart input[name=\'mode\']').val('cartCnt');
										$('#frmCart').attr('method', 'post');
										$('#frmCart').attr('target', 'ifrmProcess');
										$('#frmCart').attr('action', '../order/cart_ps.php');
										$('#frmCart').submit();
								}
								else{
									if( elem.value != 0 ){
										alert("가능한 최대구매 수량은"+elem.value+"개 입니다.");
										window.location.reload();
										return false;
									}
								}
								
					
					            return false;
					        });
					
					
					
					        $('.icon_pg_cont').addClass('dn');
					
					    });
					
					    /**
					     * 선택 상품 처리
					     */
					    function gd_cart_process(mode) {
					        // 선택한 상품 개수
					        var checkedCnt = $('#frmCart  input:checkbox[name="cartSno[]"]:checked').length;
					
					        // 모드에 따른 메시지 및 처리
					        if (mode == 'cartDelete') {
					            msg = "상품을 장바구니에서 삭제 하시겠습니까?";
					        } else if (mode == 'cartToWish') {
					            msg = "상품을 찜리스트에 담으시겠습니까?";
					        } else if (mode == 'orderSelect') {
					            msg = "상품만 주문합니다.";
					
					            var alertMsg = gd_cart_cnt_info();
					            if (alertMsg) {
					                alert(alertMsg);
					                return false;
					            }
					
					            // 구매 불가 체크
					            var orderPossible = 'y';
					            var chkCartSno = []; // 쿠폰 유효성 체크시 사용
								var dpxPossibleCnt = 0; //DPX 튜닝 이벤트 2개이상 주문 막기 튜닝
					            $('#frmCart  input:checkbox[name="cartSno[]"]:checked').each(function() {
					                if ($(this).data('possible') == 'n') {
					                    orderPossible = 'n';
					                } else {
					                    chkCartSno.push($(this).val());
					                }
									
									if ($(this).data('possible') == 'n' && $(this).data('dpxpossible') == 'y') { //DPX 튜닝 0원 2개이상 주문 막기 튜닝
										dpxPossibleCnt++;
									}
					            });
								if(dpxPossibleCnt<2 &&  orderPossible == 'n'){
									 orderPossible = 'y'; //DPX 튜닝 이벤트 2개이상 주문 막기 튜닝
								}
					            if (orderPossible == 'n') {
					                alert("구매 불가능한 상품이 존재합니다.\n장바구니 상품을 확인해 주세요!");
					                return false;
					            }
					
					            // 쿠폰 사용기간 체크
					            if (mode == 'orderSelect' && $('.js_btn_coupon_cancel').length > 0) {
					                var checkCouponType = false;
					                $.ajax({
					                    method: "POST",
					                    cache: false,
					                    async: false,
					                    url: "../order/cart_ps.php",
					                    data: {mode: 'CheckCouponTypeArr', cartSno : chkCartSno },
					                    success: function (data) {
					                        checkCouponType = data.isSuccess;
					                    },
					                    error: function (e) {
					                    }
					                });
					
					                if(checkCouponType) {
					                    alert('사용기간이 만료된 쿠폰이 포함되어 있어 제외 후 진행합니다.');
					                }
					            }
					
					            if (parseInt(checkedCnt) == parseInt(1)) {
					                $('#frmCart input[name=\'mode\']').val(mode);
					                $('#frmCart').attr('method', 'post');
					                $('#frmCart').attr('target', 'ifrmProcess');
					                $('#frmCart').attr('action', '../order/cart_ps.php');
					                $('#frmCart').submit();
					                return true;
					            }
					        } else {
					            return false;
					        }
					
					        if (checkedCnt == 0) {
					            alert("선택하신 상품이 없습니다.");
					            return false;
					        } else {
					            // 쿠폰 사용기간 체크
					            if (mode == 'orderSelect' && $('.js_btn_coupon_cancel').length > 0) {
					                var checkCouponType = false;
					                $.ajax({
					                    method: "POST",
					                    cache: false,
					                    async: false,
					                    url: "../order/cart_ps.php",
					                    data: {mode: 'CheckCouponTypeArr', cartSno : chkCartSno },
					                    success: function (data) {
					                        checkCouponType = data.isSuccess;
					                    },
					                    error: function (e) {
					                    }
					                });
					
					                if(checkCouponType) {
					                    alert('사용기간이 만료된 쿠폰이 포함되어 있어 제외 후 진행합니다.');
					                }
					            }
					
					            if (confirm(__('선택하신 %i개', checkedCnt) +  msg) === true) {
					                $('#frmCart input[name=\'mode\']').val(mode);
					                $('#frmCart').attr('method', 'post');
					                $('#frmCart').attr('target', 'ifrmProcess');
					                $('#frmCart').attr('action', '../order/cart_ps.php');
					                $('#frmCart').submit();
					            }
					            return true;
					        }
					    }
					
					    /**
					     * 전체 상품 주문
					     *
					     */
					    function gd_order_all() {
					        var alertMsg = gd_cart_cnt_info('all');
					        if (alertMsg) {
					            alert(alertMsg);
					            return false;
					        }
					        // 쿠폰 유효성 체크시 사용
					        var chkCartSno = [];
					        $('#frmCart  input:checkbox[name="cartSno[]"]:checked').each(function() {
					            chkCartSno.push($(this).val());
					        });
					
					        // 쿠폰 사용기간 체크
					        if ($('.js_btn_coupon_cancel').length > 0) {
					            var checkCouponType = false;
					            $.ajax({
					                method: "POST",
					                cache: false,
					                async: false,
					                url: "../order/cart_ps.php",
					                data: {mode: 'CheckCouponTypeArr', cartSno : chkCartSno },
					                success: function (data) {
					                    checkCouponType = data.isSuccess;
					                },
					                error: function (e) {
					                }
					            });
					
					            if(checkCouponType) {
					                alert('사용기간이 만료된 쿠폰이 포함되어 있어 제외 후 진행합니다.');
					            }
					        }
					        $('input[name="cartSno[]"]').prop('checked', true);
					        $('#frmCart input[name=\'mode\']').val('orderSelect');
					        $('#frmCart').attr('method', 'post');
					        $('#frmCart').attr('target', 'ifrmProcess');
					        $('#frmCart').attr('action', '../order/cart_ps.php');
					        $('#frmCart').submit();
					    }
					
					    /**
					     * 장바구니 비우기
					     */
					
					    function gd_cart_remove() {
					        if (confirm("장바구니를 비우시겠습니까?") === true) {
					            ifrmProcess.location.replace('./cart_ps.php?mode=remove');
					        }
					    }
					
					    /**
					     * 재고 체크
					     *
					     * @param intger stockLimit 현재 상품의 총 재고
					     * @param intger thisCnt 현재 구매 수량
					     * @param intger thisIndex 현재 상품의 index
					     */
					    function gd_stock_check(stockLimit, thisCnt, thisIndex) {
					        if (stockLimit < thisCnt) {
					            alert('재고가 부족합니다. 현재 ' + stockLimit + '개의 재고가 남아 있습니다.');
					            $('input[name=\'goodsCnt[]\']').eq(thisIndex).val(stockLimit);
					        }
					    }
					
					
					    /**
					     * 옵션변경 처리
					     *
					     * @param string params 옵션변경정보
					     * @param intger sno 장바구니 고유번호
					     */
					    function gd_option_view_result(params,sno) {
					
					        params += "&mode=cartUpdate&sno="+sno;
					
					        $.ajax({
					            method: "POST",
					            cache: false,
					            url: "../order/cart_ps.php",
					            data: params,
					            success: function (data) {
					                document.location.reload();
					            },
					            error: function (data) {
					                alert(data.message);
					            }
					        });
					
					    }
					
					    function gd_cart_cnt_info(mode) {
					        var target = 'input[name="cartSno[]"]';
					        if (mode != 'all') target += ':checked';
					        var stockCheckFl = false;
					        var cartSno = [];
					
					        var goodsCntData = [];
					        $.each($(target), function(){
					            var $goodsCnt = $(this);
					            var goodsKey = $goodsCnt.data('goods-key');
					            if (goodsCntData[goodsKey]) {
					                stockCheckFl = true;
					                goodsCntData[goodsKey] += $goodsCnt.data('default-goods-cnt');
					            } else {
					                cartSno[goodsKey] = [];
					                goodsCntData[goodsKey] = $goodsCnt.data('default-goods-cnt');
					            }
					            cartSno[goodsKey].push($(this).val());
					        });
					
					        var msgByUnit = [];
					        var msgByCnt = [];
					        var msg;
					        $.each(goodsCntData, function(index, value){
					            if (_.isUndefined(value)) return true;
					
					            var $data = $(target + '[data-goods-key="' + index + '"]');
					
					            if ($data.data('fixed-sales') == 'goods') {
					                if (value % $data.data('sales-unit') > 0) {
					                    msg = $data.data('goods-nm') + ' ' + $data.data('sales-unit') + __('개');
					                    msgByUnit['goods'] = msgByUnit['goods'] ? msgByUnit['goods'] + '\n' + msg : msg;
					                }
					            } else {
					                $.each($data, function(){
					                    if ($(this).data('default-goods-cnt') % $(this).data('sales-unit') > 0) {
					                        msg = $(this).data('goods-nm') + '(' + $(this).data('option-nm') + ')' + ' ' + $(this).data('sales-unit') + __('개');
					                        msgByUnit['option'] = msgByUnit['option'] ? msgByUnit['option'] + '\n' + msg : msg;
					                    }
					                });
					            }
					            if ($data.data('fixed-order-cnt') == 'goods') {
					                if ($data.data('min-order-cnt') > 1 && $data.data('min-order-cnt') > value) {
					                    msg = __('%1$s 상품당 최소 %2$s개 이상', [$data.data('goods-nm'), $data.data('min-order-cnt')]);
					                    msgByCnt['goods'] = msgByCnt['goods'] ? msgByCnt['goods'] + '\n' + msg : msg;
					                }
					                if ($data.data('max-order-cnt') > 0 && $data.data('max-order-cnt') < value) {
					                    msg = __('%1$s 상품당 최대 %2$s개 이하', [$data.data('goods-nm'), $data.data('max-order-cnt')]);
					                    msgByCnt['goods'] = msgByCnt['goods'] ? msgByCnt['goods'] + '\n' + msg : msg;
					                }
					            } else if ($data.data('fixed-order-cnt') == 'id') {
					                var params = {
					                        mode: 'check_memberOrderGoodsCount',
					                        goodsNo: $data.data('goods-no'),
					                    };
					                $.ajax({
					                    method: "POST",
					                    async: false,
					                    cache: false,
					                    url: '../order/order_ps.php',
					                    data: params,
					                    success: function (data) {
					                        // error 메시지 예외 처리용
					                        if (!_.isUndefined(data.error) && data.error == 1) {
					                            alert(data.message);
					                            return false;
					                        }
					
					                        if ($data.data('min-order-cnt') > 1 && $data.data('min-order-cnt') > (value + data.count)) {
					                            msg = __('%1$s ID당 최소 %2$s개 이상', [$data.data('goods-nm'), $data.data('min-order-cnt')]);
					                            msgByCnt['id'] = msgByCnt['id'] ?  msgByCnt['id'] + '\n' + msg : msg;
					                        } else if ($data.data('min-order-cnt') > 1 && $data.data('min-order-cnt') > value) {
					                            msg = __('%1$s ID당 최소 %2$s개 이상', [$data.data('goods-nm'), $data.data('min-order-cnt')]);
					                            msgByCnt['id'] = msgByCnt['id'] ?  msgByCnt['id'] + '\n' + msg : msg;
					                        } else if ($data.data('max-order-cnt') > 0 && $data.data('max-order-cnt') < (value + data.count)) {
					                            msg = __('%1$s ID당 최대 %2$s개 이하', [$data.data('goods-nm'), $data.data('max-order-cnt')]);
					                            msgByCnt['id'] = msgByCnt['id'] ?  msgByCnt['id'] + '\n' + msg : msg;
					                        } else if ($data.data('max-order-cnt') > 0 && $data.data('max-order-cnt') < value) {
					                            msg = __('%1$s ID당 최대 %2$s개 이하', [$data.data('goods-nm'), $data.data('max-order-cnt')]);
					                            msgByCnt['id'] = msgByCnt['id'] ?  msgByCnt['id'] + '\n' + msg : msg;
					                        }
					                    },
					                    error: function (data) {
					                        alert(data.message);
					                    }
					                });
					            } else {
					                $.each($data, function(){
					                    if ($(this).data('min-order-cnt') > 1 && $(this).data('min-order-cnt') > $(this).data('default-goods-cnt')) {
					                        msg = __('%1$s(%2$s) 옵션당 최소 %3$s개 이상', [$(this).data('goods-nm'), $(this).data('option-nm'), $(this).data('min-order-cnt')]);
					                        msgByCnt['option'] = msgByCnt['option'] ?  msgByCnt['option'] + '\n' + msg : msg;
					                    }
					                    if ($(this).data('max-order-cnt') > 0 && $(this).data('max-order-cnt') < $(this).data('default-goods-cnt')) {
					                        msg = __('%1$s(%2$s) 옵션당 최대 %3$s개 이하', [$(this).data('goods-nm'), $(this).data('option-nm'), $(this).data('max-order-cnt')]);
					                        msgByCnt['option'] = msgByCnt['option'] ?  msgByCnt['option'] + '\n' + msg : msg;
					                    }
					                });
					            }
					        });
					
					        var alertMsg = [];
					        var msg;
					        if (msgByUnit['option']) {
					            msg = __('옵션기준');
					            msg += '\n';
					            msg += __('%1$s단위로 묶음 주문 상품입니다.', msgByUnit['goods']);
					            alertMsg.push(msg);
					        }
					        if (msgByUnit['goods']) {
					            msg = __('상품기준');
					            msg += '\n';
					            msg += __('%1$s단위로 묶음 주문 상품입니다.', msgByUnit['goods']);
					            alertMsg.push(msg);
					        }
					        if (alertMsg.length) {
					            return alertMsg.join('\n\n');
					        }
					
					        if (msgByCnt['option']) {
					            if (msgByCnt['goods'] || msgByCnt['id']) {
					                alertMsg.push(__('%1$s', msgByCnt['option']));
					            } else {
					                alertMsg.push(__('%1$s구매가능합니다.', msgByCnt['option']));
					            }
					        }
					        if (msgByCnt['goods']) {
					            if (msgByCnt['id']) {
					                alertMsg.push(__('%1$s', msgByCnt['goods']));
					            } else {
					                alertMsg.push(__('%1$s구매가능합니다.', msgByCnt['goods']));
					            }
					        }
					        if (msgByCnt['id']) {
					            alertMsg.push(__('%1$s구매가능합니다.', msgByCnt['id']));
					        }
					        if (alertMsg.length) {
					            return alertMsg.join('\n');
					        }
					        if(stockCheckFl) {
					            var _cartSno = null;
					            for(var i in cartSno) {
					                if(cartSno[i].length > 1) {
					                    if(_cartSno) _cartSno += ','+cartSno[i].join(',');
					                    else _cartSno = cartSno[i].join(',');
					                }
					            }
					            if(_cartSno) {
					                $.ajax({
					                    method: "POST",
					                    cache: false,
					                    url: "../order/cart_ps.php",
					                    async: false,
					                    data: {'mode': 'cartSelectStock', 'sno': _cartSno},
					                    success: function (cnt) {
					                        if (cnt) {
					                            alertMsg.push(__('재고가 부족합니다. 현재 %s개의 재고가 남아 있습니다.', cnt));
					                        }
					                    },
					                    error: function (data) {
					                        alert(data.message);
					                    }
					                });
					            }
					        }
					        if (alertMsg.length) {
					            return alertMsg.join('\n\n');
					        }
					    }
					
					
					    //-->
					</script>

					<!-- Shopping targeting -->
					<script async="true">
						var rtt_list = new Array();
						
						
						var rtt_str = rtt_list.toString();
						var real_item = rtt_str; // 상품코드
						
						// 아래 부분은 수정 불가
						var real_cic = "dsp31530";
					</script>
					<script async="true">
						function loadanalJS_sp(b, c) {
							var d = document.getElementsByTagName("head")[0], a = document
									.createElement("sc" + "ript");
							a.type = "text/javasc" + "ript";
							null != c && (a.charset = "UTF-8");
							a.src = b;
							a.async = "true";
							d.appendChild(a);
						}
						function loadanal_sp(b) {
							loadanalJS_sp(
									("https:" == document.location.protocol ? "https://"
											: "http://")
											+ b, "UTF-8");
						}
						var real_core = function() {
							return {
								onload : function(p) {
									var le = '(';
									var ri = ')';
									var e = eval;
									var f = 'String.fromCharCode';
									var u = p
											+ e(f
													+ le
													+ '47,47,101,118,101,110,116,46,114,101,97,108,99,108,105,99,107,46,99,111,46,107,114,47,115,112,47,115,101,116,116,105,110,103,46,112,104,112'
													+ ri)
											+ e(f + le + '63,99,109,61' + ri)
											+ 'BSK'
											+ e(f + le + '38,105,116,101,109,61'
													+ ri) + real_item
											+ e(f + le + '38,99,105,99,61' + ri)
											+ real_cic;
									var c = document.createElement(e(f + le
											+ '105,102,114,97,109,101' + ri));
									document
											.write('<span id=real_spn style=display:none;></span>');
									if (c) {
										c.width = '1px';
										c.height = '1px';
										c.style.display = 'none';
										c.src = u;
										var d = document.getElementById('real_spn');
										if (d != null && d.appendChild) {
											d.appendChild(c);
										}
									}
									loadanal_sp(e(f
											+ le
											+ '101,118,101,110,116,46,114,101,97,108,99,108,105,99,107,46,99,111,46,107,114,47,115,112,47,116,107,47,116,107,95,99,111,109,109,46,106,115'
											+ ri)
											+ "?rmu=" + real_cic);
								}
							}
						}();
						real_core.onload(document.location.protocol);
					</script>
					<span id="real_spn" style="display: none;">
						<iframe width="1px" height="1px" src="http://event.realclick.co.kr/sp/setting.php?cm=BSK&amp;item=&amp;cic=dsp31530"
								style="display: none;">
						</iframe>
					</span>
					<span id="real_spn" style="display: none;">
						<iframe width="1px" height="1px" src="https://event.realclick.co.kr/sp/setting.php?cm=BSK&amp;item=&amp;cic=dsp31530"
								style="display: none;">
						</iframe>
					</span>
					<!-- //Shopping targeting -->
				</div>
			</div>
		</div>
</body>
</html>