<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
    <script type="text/javascript">
        var json_locale_data = {"domain":"messages","locale_data":{"messages":{"":{"lang":"ATF","plural-forms":"nplurals=1; plural=0"}}}}
    </script>
    <script type="text/javascript" src="https://pay.kcp.co.kr/plugin/payplus_web.jsp"></script>
    <style type="text/css">
        body {
        }

        /* body > #wrap > #header_warp : 상단 영역 */
        #header_warp {
        }

        /* body > #wrap > #container : 메인 영역 */
        #container {
        }

        /* body > #wrap > #footer_wrap : 하단 영역 */
        #footer_wrap {
        }
    </style>
    <!-- 다음 우편번호 검색 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
<!-- /다음 우편번호 검색 -->
</head>

<body class="body-order body-order pc"  >
    <div id="container">
        <div id="contents">
        <!-- 본문 시작 -->

            <div class="location_wrap">
                <div class="location_cont">
                    <em><a href="#" class="local_home">HOME</a> > 주문서 작성 / 결제</em>
                </div>
            </div>
            <!-- //location_wrap -->

            <div class="sub_content">

                <!-- //side_cont -->

<style>
.bootstrapdatetimepicker .disabled { font-weight: bold; }
.bann_wrap {padding-top: 40px;}
.bann_wrap .slick-slide img {width: 100%;}
</style>
<div class="content_box">
    <form id="frmOrder" name="frmOrder" action="./order_ps.php" method="post" target="ifrmProcess">
        <input type="hidden" name="csrfToken" value="MTY2OTExNTA4MzI3MTU3MDQwMzc4MjMwNzkwMzgxNzY4OTQzOTg1NDI1" />
        <input type="hidden" name="orderChannelFl" value="shop" />
        <input type="hidden" name="orderCountryCode" value="" />
        <input type="hidden" name="orderZipcode" value="" />
        <input type="hidden" name="orderZonecode" value="" />
        <input type="hidden" name="orderState" value="" />
        <input type="hidden" name="orderCity" value="" />
        <input type="hidden" name="orderAddress" value="" />
        <input type="hidden" name="orderAddressSub" value="" />
        <input type="hidden" name="orderPhonePrefixCode" value="kr" />
        <input type="hidden" name="orderPhonePrefix" value="82" />
        <input type="hidden" name="orderCellPhonePrefixCode" value="kr" />
        <input type="hidden" name="orderCellPhonePrefix" value="82" />
        <input type="hidden" name="receiverCountryCode" value="kr" />
        <input type="hidden" name="receiverPhonePrefixCode" value="kr" />
        <input type="hidden" name="receiverPhonePrefix" value="82" />
        <input type="hidden" name="receiverCellPhonePrefixCode" value="kr" />
        <input type="hidden" name="receiverCellPhonePrefix" value="82" />
        <input type="hidden" name="receiverState" value="" />
        <input type="hidden" name="receiverCity" value="" />
        <input type="hidden" name="chooseMileageCoupon" value="y" />
        <input type="hidden" name="chooseCouponMemberUseType" value="all" />
        <input type="hidden" name="totalCouponGoodsDcPrice" value="0" />
        <input type="hidden" name="totalCouponGoodsMileage" value="0" />
        <input type="hidden" name="totalMemberDcPrice" value="0" />
        <input type="hidden" name="totalMemberOverlapDcPrice" value="0" />
        <input type="hidden" name="deliveryFree" value="n" />
        <input type="hidden" name="totalDeliveryFreePrice" value="" />
        <input type="hidden" name="cartGoodsCnt" value="0" />
        <input type="hidden" name="cartAddGoodsCnt" value="0" />
        <input type="hidden" name="productCouponChangeLimitType" value="" />


        <input type="hidden" name="buyType" value=""/>

        <input type="hidden" name="REMOTE_ADDR" value="61.251.231.195"/>

        <div class="order_wrap">
            <div class="order_tit">
                <h2>주문서작성/결제</h2>
                <ol>
                    <li><span>01</span> 장바구니 <span><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/member/icon_join_step_off.png" alt=""></span></li>
                    <li class="page_on"><span>02</span> 주문서작성/결제<span><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/member/icon_join_step_on.png" alt=""></span></li>
                    <li><span>03</span> 주문완료</li>
                </ol>
            </div>
            <!-- //order_tit -->

            <div class="order_cont">

                <div class="cart_cont_list">
                    <div class="order_cart_tit">
                        <h3>주문상세내역</h3>
                    </div>
                    <!-- //order_cart_tit -->

                    <div class="order_table_type">
                        <!-- 장바구니 상품리스트 시작 -->
                        <table>
                            <colgroup>
                                <col>					<!-- 상품명/옵션 -->
                                <col style="width:5%">  <!-- 수량 -->
                                <col style="width:10%"> <!-- 상품금액 -->
                                <col style="width:13%"> <!-- 할인/적립 -->
                                <col style="width:10%"> <!-- 합계금액 -->
                                <col style="width:10%"> <!-- 배송비 -->
                            </colgroup>
                            <thead>
                            <tr>
                                <th>상품/옵션 정보</th>
                                <th>수량</th>
                                <th>상품금액</th>
                                <th>할인/적립</th>
                                <th>합계금액</th>
                                <th>배송비</th>
                            </tr>
                            </thead>
                            <tbody>


                            <tr class="order-goods-layout" data-goodsNo="1000000559">
                                <td class="td_left">
<script>
    if(typeof productList != 'undefined') {
        productList.push({            // Provide product details in an impressionFieldObject.
            'id': '1000000559',                   // Product ID (string).
            'name': '★블프특가 [마이셰프] 밀푀유나베(2인)', // Product name (string).
            'category' : '009083',
            'price' : removeComma("12,900원") / '1',
            'quantity' : '1'
        })
        cookieString += 'id:1000000559,name:★블프특가 [마이셰프] 밀푀유나베(2인),category:009083,price:' +(removeComma("12,900원") / '1') + ',quantity:1!!!!!';
    }
</script>

									
                                    <input type="hidden" name="cartSno[]" value="1244036" />
                                    <input type="hidden" name="memberDcInfo[1000000559][582]" value='' />
                                    <input type="hidden" name="priceInfo[1000000559][582]" value='' />
                                    <input type="hidden" name="mileageInfo[1000000559][582]" value='' />
                                    <input type="hidden" class="delivery-method-fl" value='delivery' />
                                    <input type="hidden" class="visit-address-use-fl" value='' />
                                    <input type="hidden" class="delivery-method-visit-area" value='' />
                                    <div class="pick_add_cont">
                                        <span class="pick_add_img">
                                            <a href="../goods/goods_view.php?goodsNo=1000000559"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/17/03/15/1000000559/1000000559_list_036.jpg" width="40" alt="★블프특가 [마이셰프] 밀푀유나베(2인)" title="★블프특가 [마이셰프] 밀푀유나베(2인)" class="middle" class="imgsize-s" /></a>
                                        </span>
                                        <div class="pick_add_info">


                                            <em><a href="../goods/goods_view.php?goodsNo=1000000559">★블프특가 [마이셰프] 밀푀유나베(2인)</a></em>

                                            <!-- //icon_pick_list -->

                                            <div class="pick_option_box">
                                            </div>

                                            <div class="pick_option_box">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //pick_add_cont -->

                                    <!-- //pick_add_list -->

                                </td>
                                <td class="td_order_amount">
                                    <div class="order_goods_num">
                                        <strong>1개</strong>
                                    </div>
                                </td>
                                <td>
                                    <strong class="order_sum_txt price">12,900원</strong>
                                </td>
                                <td class="td_benefit">
                                    <ul class="benefit_list">
                                        <li class="benefit_mileage js_mileage">
                                            <em>적립</em>
                                            <span>상품 <strong>+120원</strong></span>
                                        </li>
                                    </ul>
                                </td>
                                <td>
                                    <strong class="order_sum_txt">12,900원</strong>
                                </td>
                                <td class="td_delivery" rowspan="2">
                                    택배<br/>
                                    3,000원

                                </td>
                            </tr>
                            <tr class="order-goods-layout" data-goodsNo="1000002386">
                                <td class="td_left">																		
<script>
    if(typeof productList != 'undefined') {
        productList.push({            // Provide product details in an impressionFieldObject.
            'id': '1000002386',                   // Product ID (string).
            'name': '[마이셰프] 나혼자 소고기 부채살 스테이크(1인)', // Product name (string).
            'category' : '026',
            'price' : removeComma("9,900원") / '1',
            'quantity' : '1'
        })
        cookieString += 'id:1000002386,name:[마이셰프] 나혼자 소고기 부채살 스테이크(1인),category:026,price:' +(removeComma("9,900원") / '1') + ',quantity:1!!!!!';
    }
</script>

									
                                    <input type="hidden" name="cartSno[]" value="1243846" />
                                    <input type="hidden" name="memberDcInfo[1000002386][4803]" value='' />
                                    <input type="hidden" name="priceInfo[1000002386][4803]" value='' />
                                    <input type="hidden" name="mileageInfo[1000002386][4803]" value='' />
                                    <input type="hidden" class="delivery-method-fl" value='delivery' />
                                    <input type="hidden" class="visit-address-use-fl" value='' />
                                    <input type="hidden" class="delivery-method-visit-area" value='' />
                                    <div class="pick_add_cont">
                                        <span class="pick_add_img">
                                            <a href="../goods/goods_view.php?goodsNo=1000002386"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/44/1000002386/1000002386_list_015.jpg" width="40" alt="[마이셰프] 나혼자 소고기 부채살 스테이크(1인)" title="[마이셰프] 나혼자 소고기 부채살 스테이크(1인)" class="middle" class="imgsize-s" /></a>
                                        </span>
                                        <div class="pick_add_info">


                                            <em><a href="../goods/goods_view.php?goodsNo=1000002386">[마이셰프] 나혼자 소고기 부채살 스테이크(1인)</a></em>

                                            <!-- //icon_pick_list -->

                                            <div class="pick_option_box">
                                            </div>

                                            <div class="pick_option_box">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //pick_add_cont -->

                                    <!-- //pick_add_list -->

                                </td>
                                <td class="td_order_amount">
                                    <div class="order_goods_num">
                                        <strong>1개</strong>
                                    </div>
                                </td>
                                <td>
                                    <strong class="order_sum_txt price">9,900원</strong>
                                </td>
                                <td class="td_benefit">
                                    <ul class="benefit_list">
                                        <li class="benefit_mileage js_mileage">
                                            <em>적립</em>
                                            <span>상품 <strong>+90원</strong></span>
                                        </li>
                                    </ul>
                                </td>
                                <td>
                                    <strong class="order_sum_txt">9,900원</strong>
                                </td>
                            </tr>


                            </tbody>
                        </table>
                        <!-- 장바구니 상품리스트 끝 -->
                    </div>

                </div>
                <!-- //cart_cont_list -->

                <div class="btn_left_box">
                    <a href="./cart.php" class="shop_go_link"><em>&lt; 장바구니 가기</em></a>
                </div>
               
                <div class="price_sum">
                    <div class="price_sum_cont">
                        <div class="price_sum_list">
                            <dl>
                                <dt>총 <strong>2</strong> 개의 상품금액 </dt>
                                <dd><strong>22,800</strong>원</dd>
                            </dl>
                            <span><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/order/order_price_plus.png" alt="더하기" /></span>
                            <dl>
                                <dt>배송비</dt>
                                <dd><strong>3,000</strong>원</dd>
                            </dl>
                            <span><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/order/order_price_total.png" alt="합계" /></span>
                            <dl class="price_total">
                                <dt>합계</dt>
                                <dd><strong>25,800</strong>원
                                </dd>
                            </dl>
                        </div>
                        <em class="tobe_mileage js_mileage">적립예정 마일리지 : <span>210</span> 원</em>
                    </div>
                    <!-- //price_sum_cont -->
                </div>
                <!-- //price_sum -->                 
                 <br/><div class="btn_center_box">
                             <button class="btn_order_buy order-buy"><em>주문취소</em></button>
                      </div>
                <!-- 주문 간단 가입 시작 -->
                <input type="hidden" name="simpleJoin" value="" />


                <!-- 주문 간단 가입 끝 -->


                <div class="order_view_info">


                    <div class="order_info">
                        <div class="order_zone_tit">
                            <h4>주문자 정보</h4>
                        </div>

                        <div class="order_table_type">
                            <table class="table_left">
                                <colgroup>
                                    <col style="width:15%;">
                                    <col style="width:85%;">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th scope="row"><span class="important">주문하시는 분</span></th>
                                    <td><input type="text" name="orderName" id="orderName" value="홍길동" data-pattern="gdEngKor" maxlength="20"/>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">전화번호</th>
                                    <td>
                                        <input type="text" id="phoneNum" name="orderPhone" value="" maxlength="20" />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">휴대폰 번호</span></th>
                                    <td>
                                        <input type="text" id="mobileNum" name="orderCellPhone" value="010-1234-5678" maxlength="20" />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">이메일</span></th>
                                    <td class="member_email">
                                        <input type="text" name="orderEmail" value="ccc@naver.com" />

                                        <select id="emailDomain" class="chosen-select">
                                            <option value="self">직접입력</option>
                                            <option value="naver.com">naver.com</option>
                                            <option value="daum.net">daum.net</option>
                                            <option value="nate.com">nate.com</option>
                                            <option value="gmail.com">gmail.com</option>
                                        </select>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- //order_info -->

                    <div class="delivery_info">
                        <div class="order_zone_tit">
                            <h4>배송정보</h4>
                        </div>

                        <div class="order_table_type shipping_info">
                            <table class="table_left shipping_info_table">
                                <colgroup>
                                    <col style="width:15%;">
                                    <col style="width:85%;">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th scope="row">배송지 확인</th>
                                    <td>
                                        <div class="form_element" >
                                           
                                                <span>
                                                    <input type="radio" name="shipping" id="shippingBasic">
                                                    <label for="shippingBasic" class="choice_s">기본 배송지</label>
                                                </span>
                                                <span style="margin-left:10px;">
                                                    <input type="radio" name="shipping" id="shippingRecently">
                                                    <label for="shippingRecently" class="choice_s">최근 배송지</label>
                                                </span>
                                                <span style="margin-left:10px;">
                                                    <input type="radio" name="shipping" id="shippingNew">
                                                    <label for="shippingNew" class="choice_s">직접 입력</label>
                                                </span>
                                                <span style="margin-left:10px;">
                                                    <input type="radio" name="shipping" id="shippingSameCheck">
                                                    <label for="shippingSameCheck" class="choice_s">주문자정보와 동일</label>
                                                </span>
                                            
                                            <span class="btn_gray_list"><a href="#myShippingListLayer" class="btn_gray_small btn_open_layer js_shipping"><span>배송지 관리</span></a></span>
                                            <input type="hidden" class="shipping-delivery-visit" value="n" />
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">받으실분</span></th>
                                    <td><input type="text" name="receiverName" data-pattern="gdEngKor" maxlength="20"/></td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">받으실 곳</span></th>
                                      <td class="member_address">
                                          <div class="address_postcode">
                                            <input type="text" id="sample4_postcode" placeholder="우편번호">
                                            <input type="button" class="btn_post_search" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
                                            <span id="guide" style="color:#999;display:none"></span>
                                          </div>
                                          <div class="address_input">
                                            <input type="text" id="sample4_jibunAddress" placeholder="지번주소">                                            
                                            <input type="text" id="sample4_detailAddress" placeholder="상세주소">
					                      </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">전화번호</th>
                                    <td>
                                        <input type="text" id="receiverPhone" name="receiverPhone" />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">휴대폰 번호</span></th>
                                    <td>
                                        <input type="text" id="receiverCellPhone" name="receiverCellPhone"/>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">배달 참고메시지</th>
                                    <td class="td_last_say"><input type="text" name="orderMemo"/></td>
                                </tr>
                    <!-- 배송방법 -->
							</tbody>
						</table>
                    </div>
           
                    <!-- 이용약관 및 주의사항(고객동의) -->
                    <div class="order_zone_tit">
						<h4>이용약관 및 주의사항(고객동의)</h4>
					</div>
                    <div class="order_table_type">
						<table class="table_left">
							<colgroup>
								<col style="width:15%;">
								<col style="width:85%;">
							</colgroup>
							<tbody>
							<tr>
                                <th></th>
                                <td>

                                    <span class="form-element">

                                        <input type="checkbox" name="allAgree" value="y" id="allAgree" class="gd_checkbox_all">
                                        <label for="allAgree" class="check-s">아래 전체 내용을 직접 읽고 확인하고 모두 동의합니다.(확인 필수)</label><br /><br />

                                        <input type="checkbox" name="termAgreeOrder_0" value="y" id="termAgree_order_0" class="checkbox">
                                        <label for="termAgree_order_0" class="check-s">마이셰프의 모든 상품은 음식특성상 식재료 작업(받는날 전날 오전 8시) 이후에는 취소/환불/변경이 불가합니다.</label><br />
                                        <input type="checkbox" name="termAgreeOrder_1" value="y" id="termAgree_order_1" class="checkbox">
                                        <label for="termAgree_order_1" class="check-s">마이셰프는 잘못된 수령정보(받는날,주소,연락처 등)와 배송당일 통화불가로 인한 배송사고의 책임을 지지 않습니다.</label><br />
                                        <input type="checkbox" name="termAgreeOrder_2" value="y" id="termAgree_order_2" class="sp require">
                                        <label for="termAgree_order_2" class="check-s">마이셰프는 새벽배송시 현관비밀번호 오류/미기재로 인한 배송사고의 책임을 지지 않습니다.(사전 안내 없이 반송 처리)</label><br>
                                        <input type="checkbox" name="termAgreeOrder_3" value="y" id="termAgree_order_3" class="checkbox">
                                        <label for="termAgree_order_3" class="check-s">상품의 특성상 단순변심,맛,취향 문제로는 교환(반품)/환불이 불가합니다.</label><br />
                                        <input type="checkbox" name="termAgreeOrder_4" value="y" id="termAgree_order_4" class="checkbox">
                                        <label for="termAgree_order_4" class="check-s">택배는 요청하신 수령일 당일 중 밤 늦게 도착할 수도 있습니다(보통 배송시간 08~20시, 하루전 수령 권장)</label><br /> 
										<input type="checkbox" name="termAgreeOrder_5" value="y" id="termAgree_order_5" class="checkbox">
                                        <label for="termAgree_order_5" class="check-s">코로나19 급증으로 배송희망일을 지정하셔도 원물 입고 및 생산량에 따라 추가 시일이 소요될수 있습니다.</label><br /> 
									
									</span>

                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- // 이용약관 및 주의사항(고객동의) -->

                    <!-- //addition_info -->

                    <div class="payment_info">
                        <div class="order_zone_tit">
                            <h4>결제정보</h4>
                        </div>

                        <div class="order_table_type">
                            <table class="table_left">
                                <colgroup>
                                    <col style="width:15%;">
                                    <col style="width:85%;">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th scope="row">상품 합계 금액</th>
                                    <td>
                                        <strong id="totalGoodsPrice" class="order_payment_sum">22,800원</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">배송비</th>
                                    <td>
                                        <span id="totalDeliveryCharge">3,000</span>원
                                        <span class="multi_shipping_text"></span>
                                    </td>
                                </tr>                              
                                <tr>
                                    <th scope="row">할인 및 적립</th>
                                    <td>
                                        <ul class="order_benefit_list">
                                            <li class="order_benefit_sale">
                                                <em id="saleDefault">
                                                    할인 : <strong>(-) <b class="total-member-dc-price">0</b>원</strong>
                                                    <span>(
                                                    상품 0원
                                                    , 회원 <span class="member-dc-price">0원</span>
                                                    , 쿠폰 <span class="goods-coupon-dc-price">0</span>원
                                                    )</span>
                                                </em>
                                                <em id="saleWithoutMember" class="dn">
                                                    할인 : <strong>(-) <b class="total-member-dc-price-without-member">0</b>원</strong>
                                                    <span>(
                                                    상품 0원
                                                    , 회원 0원
                                                    , 쿠폰 <span class="goods-coupon-dc-price-without-member">0</span>원</span>
                                                    )
                                                </em>
                                            </li>
                                            <li class="order_benefit_mileage js_mileage">
                                                <em id="mileageDefault">
                                                    적립 마일리지 : <strong>(+) <b class="total-member-mileage">210</b>원</strong>
                                                    <span>
                                                        (
                                                        상품 <span class="goods-mileage">210</span>원,
                                                        회원 <span class="member-mileage">0</span>원,
                                                        쿠폰 <span class="goods-coupon-add-mileage">0</span>원
                                                        )
                                                    </span>
                                                </em>
                                                <em id="mileageWithoutMember" class="js_mileage dn">
                                                    적립 마일리지 : <strong>(+) <b class="total-member-mileage-without-member">210</b>원</strong>
                                                    <span>
                                                        (
                                                        상품 210원,
                                                        회원 0원,
                                                        쿠폰 <span class="goods-coupon-add-mileage-without-member">0</span>원
                                                        )
                                                    </span>
                                                </em>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>                               
                                <tr>
                                    <th scope="row">마일리지 사용</th>
                                    <td>
                                        <div class="order_money_use">
                                            <b><input type="text" name="useMileage" onblur="gd_mileage_use_check('y', 'y', 'y');" /> 원</b>
                                            <div class="form_element">
                                                <input type="checkbox" id="useMileageAll" onclick="gd_mileage_use_all();">
                                                <label for="useMileageAll" class="check_s">전액 사용하기</label>
                                                <span class="money_use_sum">(보유 마일리지 : 0 원)</span>
                                            </div>
                                            <em class="money_use_txt js-mileageInfoArea"></em>
                                        </div>
                                    </td>
                                </tr>                              
                                <tr>
                                    <th scope="row">최종 결제 금액</th>
                                    <td>
                                        <input type="hidden" name="settlePrice" value="25800">
                                        <input type="hidden" name="overseasSettlePrice" value="0" />
                                        <input type="hidden" name="overseasSettleCurrency" value="KRW" />
                                        <strong id="totalSettlePrice" class="order_payment_sum">25,800</strong>원
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
</div >
<script src="/data/skin/front/udweb_pc_20200903/js/slider/slick/slick.js" type="text/javascript" charset="utf-8"></script>
					</div>

                    <div class="payment_progress">
                        <div class="order_zone_tit">
                            <h4>결제수단 선택 / 결제</h4>                        
                        </div>

                        <div class="payment_progress_list">
                                <!-- N : 일반결제 시작 -->
                                <div id="settlekind_general" class="general_payment">
                                    <dl>
                                        <dt>일반결제</dt>
                                        <dd>
                                            <div class="form_element">
                                                <ul class="payment_progress_select">
                                                    <li id="settlekindType_pc">
                                                        <input type="radio" id="settleKind_pc" name="settleKind" value="pc"/>
                                                        <label for="settleKind_pc" class="choice_s">신용카드</label>
                                                    </li>
                                                    <li id="settlekindType_pb">
                                                        <input type="radio" id="settleKind_pb" name="settleKind" value="pb"/>
                                                        <label for="settleKind_pb" class="choice_s">계좌이체</label>
                                                    </li>                                                   
                                                    <li id="settlekindType_ph">
                                                        <input type="radio" id="settleKind_ph" name="settleKind" value="ph"/>
                                                        <label for="settleKind_ph" class="choice_s">휴대폰결제</label>
                                                    </li>                                                   
                                                </ul>
                                            </div>
                                          

                                            <!-- 신용카드 컨텐츠 -->
                                            <div class="card" id="settlekind_general_pc"></div>
                                            <!-- //신용카드 컨텐츠 -->

                                            <!-- 계좌이체 컨텐츠 -->
                                            <div class="account-bank" id="settlekind_general_pb"></div>
                                            <!-- //계좌이체 컨텐츠 -->

                                            <!-- 휴대폰 컨텐츠 -->
                                            <div class="cellphone" id="settlekind_general_ph"></div>
                                            <!-- //휴대폰 컨텐츠 -->


                                        </dd>
                                    </dl>
                                </div>
                                <!-- //general_payment -->
                                <!-- N : 일반결제 끝 -->
                            </div>                         
                        <!-- //payment_progress_list -->
                        <div class="payment_final">
                            <div class="payment_final_total">
                                <dl>
                                    <dt>최종 결제 금액</dt>
                                    <dd><span><strong id="totalSettlePriceView">25,800</strong>원</span></dd>
                                </dl>
                            </div>
                            <div class="payment_final_check">
                                <div class="form_element">
                                    <input type="checkbox" id="termAgree_orderCheck" class="require">
                                    <label for="termAgree_orderCheck" class="check_s"><em><b>(필수)</b> 구매하실 상품의 결제정보를 확인하였으며, 구매진행에 동의합니다.</em></label>
                                </div>
                            </div>
                            <div class="btn_center_box">
                                <button class="btn_order_buy order-buy"><em>결제하기</em></button>
                            </div>
                        </div>
                        <!-- //payment_final -->

                    </div>
                    <!-- //payment_progress -->

                </div>
                <!-- //order_view_info -->
            </div>
            <!-- //order_cont -->
        </div>
        <!-- //order_wrap -->
    </form>
</div>




<!-- 나의 배송지 관리 레이어 -->
<div id="myShippingListLayer" class="layer_wrap delivery_add_list_layer dn"></div>

<!-- //나의 배송지 관리 레이어 -->
<!-- 상품 쿠폰 적용하기 레이어 -->
<div id="couponApplyLayer" class="layer_wrap coupon_apply_layer dn"></div>
<!--//상품 쿠폰 적용하기 레이어 -->
<!-- 주문 쿠폰 적용하기 레이어 -->
<div id="couponOrderApplyLayer" class="layer_wrap coupon_apply_layer dn"></div>
<!--//주문 쿠폰 적용하기 레이어 -->
<!-- PG 결제 적용하기 레이어 -->
<div id="pgSettlementApplyLayer" class="layer_wrap pg_layer dn"></div>
<!--//PG 결제 적용하기 레이어 -->

<!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />   -->
<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>   -->

<script type="text/javascript" src="/Mealkit/resources/js/jquery/jquery.textchange.js"></script>
<script type="text/javascript" src="/Mealkit/resources/udweb_pc_20200903/js/jquery/jquery.serialize.object.js"></script>
<script type="text/javascript" src="/Mealkit/resources/js/jquery/validation/additional/businessnoKR.js"></script>


<script type="text/javascript">
   
        if (shippingNo == 0) {
            $('input[name="deliveryVisit"]').val(deliveryVisit);
            $('input[name="visitName"]').val($('input[name="orderName"]').val());
            $('input[name="visitPhone"]').val($('input[name="orderCellPhone"]').val());
        }
        $infoArea.find('.shipping-delivery-visit').val(deliveryVisit);

        return deliveryVisit;
    }

    function set_shipping_btn(shippingNo, deliveryVisit) {

        switch (deliveryVisit) {
            case 'y':
                if (shippingNo == 0) {
                    $('.shipping-add-btn').addClass('dn');
                    $('.shipping-visit-add-btn').removeClass('dn');
                } else {
                    $('.shipping-remove-btn:eq(' + (shippingNo - 1) + ')').addClass('dn');
                    $('.shipping-visit-remove-btn:eq(' + (shippingNo - 1) + ')').removeClass('dn');
                }
                break;
            case 'a':
            case 'n':
                if (shippingNo == 0) {
                    $('.shipping-add-btn').removeClass('dn');
                    $('.shipping-visit-add-btn').addClass('dn');
                } else {
                    $('.shipping-remove-btn:eq(' + (shippingNo - 1) + ')').removeClass('dn');
                    $('.shipping-visit-remove-btn:eq(' + (shippingNo - 1) + ')').addClass('dn');
                }
                break;
        }
    }


	window.onload = function(){
		$('#deliverySno-1').trigger('click');
	}
</script>

            </div>
            <!-- //sub_content -->
        </div>
        <!-- //본문 끝 contents -->
    </div>
    <!-- //container -->


<script type="text/javascript">
		/*
         * 전체 동의 체크박스 이벤트
         */
        $('#allAgree').change(function (e) {
            e.preventDefault();
//          var $target = $(e.target), $checkbox = $(':checkbox'), $label = $checkbox.siblings('label');
            var $target = $(e.target), $checkbox = $('input:checkbox[id*="termAgree_order_"]'), $label = $checkbox.siblings('label');
            if ($target.prop('checked') === true) {
                $checkbox.prop('checked', true).val('y');
                $label.addClass('on');
            } else {
                $checkbox.prop('checked', false).val('n');
                $label.removeClass('on');
            }
        });
		

        /**
         * 기본배송지 가져오기
         */
        function getDefaultShippingAddress()
        {
            return defaultShippingAddress;
        }

        /**
         * 기본배송지 설정하기
         */
        function gd_set_default_shipping_address(data)
        {
            defaultShippingAddress = data;
        }

      

        /**
         * 주문고객 정보와 배송지 정보 동일 처리
         */
        function gd_order_info_same()
        {
            var orderKey = new Array('orderName', 'orderCountryCode', 'orderZonecode', 'orderZipcode', 'orderState', 'orderCity', 'orderAddress', 'orderAddressSub', 'orderPhonePrefixCode', 'orderPhone', 'orderCellPhonePrefixCode', 'orderCellPhone');
            var receiverKey = new Array('receiverName', 'receiverCountryCode', 'receiverZonecode', 'receiverZipcode', 'receiverState', 'receiverCity', 'receiverAddress', 'receiverAddressSub', 'receiverPhonePrefixCode', 'receiverPhone', 'receiverCellPhonePrefixCode', 'receiverCellPhone');
            var sameCheck = $('#shippingSameCheck:checked').val();

            if (sameCheck == 'on') {
                var standardKey = orderKey;
            } else {
                var standardKey = receiverKey;
            }

            for (var i = 0; i < standardKey.length; i++) {
                var orderObj = $('select[name=\''+orderKey[i]+'\']:eq(0), input[name=\''+orderKey[i]+'\']:eq(0)');
                var receiverObj = $('select[name=\''+receiverKey[i]+'\']:eq(0), input[name=\''+receiverKey[i]+'\']:eq(0)');
                if (sameCheck == 'on') {
                    if (_.isUndefined(orderObj.val())) {
                        continue;
                    }

                    // 값 입력
                    receiverObj.val(orderObj.val());

                    // 셀렉트박스 동적 업데이트 처리
                    if (receiverObj[0].tagName == 'SELECT') {
                        receiverObj.trigger("chosen:updated");
                    }

                    if (receiverKey[i] == 'receiverZipcode' && orderObj.val() !='') {
                        $('input[name=receiverZipcode]').val(orderObj.val());
                    }
                } else {
                    if (_.isUndefined(receiverObj.val())) {
                        continue;
                    }

                    // 값 삭제
                    receiverObj.val('');

                    // 셀렉트박스 동적 업데이트 처리
                    if (receiverObj[0].tagName == 'SELECT') {
                        receiverObj.trigger("chosen:updated");
                    }
                }
            }

            // 지역별 배송비 실시간 추가
            $('input[name=receiverAddress], input[name=receiverAddressSub]').trigger('blur');
        }

        /**
         * 배송지관리 주소 가져와 입력하기
         *
         * @param data
         */
        function gd_set_delivery_shipping_address(data, shippingNo)
        {
            if (!_.isUndefined(data.shippingName)) {
                var nameTails = '';
                if (shippingNo > 0) {
                    nameTails = 'Add[' + shippingNo + ']';
                }

                $('input[name="receiverName' + nameTails + '"]').val(data.shippingName);
                $('input[name="receiverZonecode' + nameTails + '"]').val(data.shippingZonecode);
                $('select[name="receiverCountryCode' + nameTails + '"]').val(data.shippingCountryCode).trigger('chosen:updated');
                $('input[name="receiverCity' + nameTails + '"]').val(data.shippingCity);
                $('input[name="receiverState' + nameTails + '"]').val(data.shippingState);
                $('input[name="receiverAddress' + nameTails + '"]').val(data.shippingAddress);
                $('input[name="receiverAddressSub' + nameTails + '"]').val(data.shippingAddressSub);
                $('input[name="receiverPhonePrefixCode' + nameTails + '"]').val(data.shippingPhonePrefixCode).trigger('chosen:updated');
                $('input[name="receiverPhone' + nameTails + '"]').val(data.shippingPhone);
                $('input[name="receiverCellPhonePrefixCode' + nameTails + '"]').val(data.shippingCellPhonePrefixCode).trigger('chosen:updated');
                $('input[name="receiverCellPhone' + nameTails + '"]').val(data.shippingCellPhone);

                if (data.shippingZipcode !='') {
                    $('input[name="receiverZipcode' + nameTails + '"]').val(data.shippingZipcode);
                }

                // 지역별 배송비 실시간 추가
                $('input[name="receiverAddress' + nameTails + '"], input[name="receiverAddressSub' + nameTails + '"]').trigger('blur');
            }
        }
</script>
</body>
</html>