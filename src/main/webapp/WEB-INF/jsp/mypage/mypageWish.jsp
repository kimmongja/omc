<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 위시리스트</title>
</head>

    <link type="text/css" rel="stylesheet" href="../css/mypage.css">
    <link type="text/css" rel="stylesheet" href="../css/button.css">
    <link type="text/css" rel="stylesheet" href="../css/common.css">
    <link type="text/css" rel="stylesheet" href="../css/custom.css">
    <link type="text/css" rel="stylesheet" href="../css/layer.css">
    <link type="text/css" rel="stylesheet" href="../css/layout.css">
    <link type="text/css" rel="stylesheet" href="../css/list.css">
    <link type="text/css" rel="stylesheet" href="../css/reset.css">
    <link type="text/css" rel="stylesheet" href="../css/chosen.css">
    <link type="text/css" rel="stylesheet" href="../css/footer.css">
    <link type="text/css" rel="stylesheet" href="../css/header.css">
    <link type="text/css" rel="stylesheet" href="../css/member.css">
    <link type="text/css" rel="stylesheet" href="../css/player.css">
    <link type="text/css" rel="stylesheet" href="../css/seum.css">
    <link type="text/css" rel="stylesheet" href="../css/ui.css">
    <link type="text/css" rel="stylesheet" href="../css/udweb_color.css">
    <link type="text/css" rel="stylesheet" href="../css/udweb.css">
    <link type="text/css" rel="stylesheet" href="../css/xeicon.css">
    
    <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=AW-621481013&amp;l=dataLayer&amp;cx=c"></script>
    <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-WCTBWG99XY&amp;l=dataLayer&amp;cx=c"></script>
    <script async="" defer="" src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_godomall_self.min.js"></script>
    <script src="https://cr.acecounter.com/Web/AceCounter_AW.js?gc=BS4A44784584568&amp;py=0&amp;gd=gtc9&amp;gp=8080&amp;up=NaPm_Ncisy&amp;rd=1669303511296"></script>
    <script src="https://connect.facebook.net/signals/config/890148974663335?v=2.9.89&amp;r=stable" async=""></script>
    <script src="https://connect.facebook.net/signals/config/385926439883523?v=2.9.89&amp;r=stable" async=""></script>
    <script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script><script type="text/javascript">
        var json_locale_data = {"domain":"messages","locale_data":{"messages":{"":{"lang":"ATF","plural-forms":"nplurals=1; plural=0"}}}}
    </script>
    <script type="text/javascript" src="../js/gd_gettext.js"></script>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/underscore-min.js"></script>
    <script type="text/javascript" src="../js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="../js/additional-methods.min.js"></script>
    <script type="text/javascript" src="../js/numeral.min.js"></script>
    <script type="text/javascript" src="../js/accounting.min.js"></script>
    <script type="text/javascript" src="../js/money.min.js"></script>
    <script type="text/javascript" src="../js/chosen.jquery.min.js"></script>
    <script type="text/javascript" src="../js/placeholders.jquery.min.js"></script>
    <!--[if gt IE 8]-->
    <script type="text/javascript" src="../js/clipboard.min.js"></script>
    <!--[endif]-->
    <script type="text/javascript" src="../js/jquery.vticker.js"></script>
    <script type="text/javascript" src="../js/gd_ui.js"></script>
	
	<script type="text/javascript" src="../js/imagesloaded.pkgd.min.js"></script>
	<script type="text/javascript" src="../js/jquery.masonry.min.js"></script>
	<script type="text/javascript" src="../js/js.cookie.js"></script>
	<script type="text/javascript" src="../js/jquery.cookie.js"></script>
	<script type="text/javascript" src="../js/ud_common.js"></script>
    

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

</head>
       
       
 <body class = "body-mypage body-wish-list pc" style="overflow:hidden;">
       
     
    <div id="container">
        <div id="contents">
        <!-- 본문 시작 -->

            <div class="location_wrap">
                <div class="location_cont">
                    <em><a href="#" class="local_home">HOME</a> &gt; 마이페이지 &gt; 찜리스트</em>
                </div>
            </div>
            <!-- //location_wrap -->

            <div class="sub_content">

                <div class="side_cont">
<div class="sub_menu_box">
       <h2>마이페이지</h2>
    <ul class="sub_menu_mypage">
        <li>쇼핑정보
            <ul class="sub_depth1">
                <li><a href="mypageOrder.omc">- 주문목록/배송조회</a></li>
                <li><a href="mypageReturn.omc">- 취소/반품/교환 내역</a></li>
                <li><a href="mypageWish.omc">- 찜리스트</a></li>
            </ul>
        </li>
        <li>회원정보
            <ul class="sub_depth1">
                <li><a href="mypageModify.omc">- 회원정보 변경</a></li>
                <li><a href="mypageAddress.omc">- 배송지 관리</a></li>
            </ul>
        </li>
        <li>나의 게시글 관리
            <ul class="sub_depth1">
                <li><a href="mypageReview.omc">- 내가 쓴 리뷰</a></li>
                <li><a href="mypageBoard.omc">- 내가 쓴 게시글</a></li>
                <li><a href="mypageQNA.omc">- 내가 쓴 문의</a></li>
            </ul>
        </li>
        <li>고객센터
            <ul class="sub_depth1">
                <li><a href="mypage11.omc">- 1:1 문의</a></li>
            </ul>
        </li>
    </ul>
</div>
<!-- //sub_menu_box -->
<script type="text/javascript">
    // 메뉴 선택
    $('.sub_menu_mypage li > a[href*="' + document.location.pathname + '"]').addClass('active');
</script>
                </div>
                <!-- //side_cont -->

<div class="content">
    <div class="mypage_cont">

        <!-- 마이페이지 회원 요약정보 -->
        <div class="seum_kcp">
    <div>
<div class="mypage_top_info">
    <div class="mypage_top_txt">
        <div class="grade_txt">
            <p>박채영님의</p><p> 회원등급은 <span>화이트등급</span> 입니다.
            </p><div class="btn_layer">
                <span class="btn_gray_list"><a href="#lyGrade" class="btn_gray_small"><em>등급혜택보기</em></a></span>

                <!-- N : 회원등급혜택 레이어 시작 -->
                <div id="lyGrade" class="layer_area" style="display:none;">
                    <div class="ly_wrap grade_layer">
                        <div class="ly_tit">
                          <strong>등급혜택 안내</strong>
                        </div>
                        <div class="ly_cont">
                            <div class="grade_list">
                                <dl>
                                    <dt>회원 등급</dt>
                                    <dd>화이트등급</dd>
                                </dl>
                                <dl>
                                    <dt>추가 할인</dt>
                                    <dd><strong>0원이상 구매시 상품 판매금액의 0.0% 추가 할인</strong></dd>
                                </dl>
                                <dl>
                                    <dt>중복 할인</dt>
                                    <dd><strong>0원이상 구매시 상품 판매금액의 0.0% 추가 할인</strong></dd>
                                </dl>
                                <dl>
                                    <dt>추가  적립</dt>
                                    <dd>0원이상 구매 시 구매금액당 0.0% 추가 적립</dd>
                                </dl>
                            </div>
                        </div>
                        <!-- //ly_cont -->
                        <a href="#lyGrade" class="ly_close"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/layer/btn_layer_close.png" alt="닫기"></a>
                    </div>
                    <!-- //ly_wrap -->
                </div>
                <!-- N : 회원등급혜택 레이어 끝 -->

            </div>
        </div>
        <!-- //grade_txt -->
    </div>
    <!-- //mypage_top_txt -->

    <div class="mypage_top_wallet">
        <ul>
            <li>
                <span><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/mypage/icon_coupon.png" alt=""></span>
                <span><em>쿠폰</em><a href="../mypage/coupon.php"><strong>1</strong></a>장</span>
            </li>
            <li>
                <span><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/mypage/icon_mileage.png" alt=""></span>
                <span><em>적립금</em><a href="../mypage/mileage.php"><strong>0</strong></a>원</span>
            </li>
            
           
        </ul>
    </div>
    <!-- //mypage_top_wallet -->

</div>
<!-- //mypage_top_info -->
</div>
</div>
       <!-- 마이페이지 회원 요약정보 -->

        <div class="mypage_wish_list">
            <div class="mypage_zone_tit">
                <h3>찜리스트</h3>
            </div>

            <div class="mypage_table_type">
                <form id="frmWish" name="frmWish" method="post" target="ifrmProcess">
                    <input type="hidden" name="mode" value="">
                    <input type="hidden" name="isCart" value="false">
                    <span style="display: none;" name="wp_detection" tag="i">1000002405</span><span style="display: none;" name="wp_detection" tag="i">1000001153</span><table>
                        <colgroup>
                            <col style="width:8%">	<!-- 선택 -->
                            <col>					<!-- 상품명/옵션 -->
                            <col style="width:15%">	<!-- 상품금액/수량 -->
                            <col style="width:15%">	<!-- 혜택 -->
                            <col style="width:10%">	<!-- 합계 -->
                        </colgroup>
                        <thead>
                        <tr>
                            <th>
                                <div class="form_element">
                                    <input type="checkbox" id="allCheck" name="allCheck" class="gd_checkbox_all" data-target-name="sno[]" data-target-form="#frmWish">
                                    <label for="allCheck" class="check_s"></label>
                                </div>
                            </th>
                            <th>상품명/옵션</th>
                            <th>상품금액/수량</th>
                            <th>혜택</th>
                            <th>합계</th>
                        </tr>
                        </thead>
                        <tbody>

							<!-- WIDERPLANET CART SCRIPT START 2020.9.11 -->
							
							<script type="text/javascript">var wp_page_type = 'Cart';</script>
							<!-- // WIDERPLANET CART SCRIPT END 2020.9.11 -->
                        <tr>
                            <td>
                                <div class="form_element wish_sno_12426">
                                    <input type="checkbox" id="wishSno12426" name="sno[]" value="12426" data-order-possible="y">
                                    <label for="wishSno12426" class="check_s"></label>
                                </div>
                            </td>
                            <td class="td_left">
                                <div class="pick_add_cont">
                                    <span class="pick_add_img">
                                        <a href="../goods/goods_view.php?goodsNo=1000002405"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/47/1000002405/1000002405_list_052.jpg" width="150" alt="[마이셰프] 사와디캅 팟타이(1인)" title="[마이셰프] 사와디캅 팟타이(1인)" class="middle"></a>
                                    </span>
                                    <div class="pick_add_info">

                                        <em><a href="../goods/goods_view.php?goodsNo=1000002405">[마이셰프] 사와디캅 팟타이(1인)</a></em>


                                    </div>
                                </div>
                                <!-- //pick_add_info -->
                                <!-- //pick_add_list -->
                            </td>
                            <td>
                                <strong>10,900원</strong>
/ 1개
                                <div class="btn_gray_list">
                                    <a href="#optionViewLayer" class="btn_gray_small btn_open_layer" data-goodsno="1000002405" data-sno="12426" data-page="wish_modify"><span>옵션/수량변경</span></a>
                                </div>
                            </td>
                            <td>
                                <ul class="benefit_list">
                                    <li class="benefit_mileage">
                                        <em>적립</em>
                                        <span>상품 <strong>+100원</strong></span>
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <div class="">
                                    <a href="#" class="btn_wish_cart js_cart_wish" data-sno="12426"><em>장바구니</em></a>

                                    <a href="#" class="btn_wish_del" data-sno="12426"><em>삭제하기</em></a>
                                </div>
                            </td>
                        </tr>
							<!-- WIDERPLANET CART SCRIPT START 2020.9.11 -->
							
							<script type="text/javascript">var wp_page_type = 'Cart';</script>
							<!-- // WIDERPLANET CART SCRIPT END 2020.9.11 -->
                        <tr>
                            <td>
                                <div class="form_element wish_sno_12405">
                                    <input type="checkbox" id="wishSno12405" name="sno[]" value="12405" data-order-possible="y">
                                    <label for="wishSno12405" class="check_s"></label>
                                </div>
                            </td>
                            <td class="td_left">
                                <div class="pick_add_cont">
                                    <span class="pick_add_img">
                                        <a href="../goods/goods_view.php?goodsNo=1000001153"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/18/10/44/1000001153/1000001153_list_030.jpg" width="150" alt="★블프특가 [마이셰프] 하우스비프스테이크(2인)" title="★블프특가 [마이셰프] 하우스비프스테이크(2인)" class="middle"></a>
                                    </span>
                                    <div class="pick_add_info">

                                        <em><a href="../goods/goods_view.php?goodsNo=1000001153">★블프특가 [마이셰프] 하우스비프스테이크(2인)</a></em>


                                    </div>
                                </div>
                                <!-- //pick_add_info -->
                                <!-- //pick_add_list -->
                            </td>
                            <td>
                                <strong>21,800원</strong>
/ 2개
                                <div class="btn_gray_list">
                                    <a href="#optionViewLayer" class="btn_gray_small btn_open_layer" data-goodsno="1000001153" data-sno="12405" data-page="wish_modify"><span>옵션/수량변경</span></a>
                                </div>
                            </td>
                            <td>
                                <ul class="benefit_list">
                                    <li class="benefit_mileage">
                                        <em>적립</em>
                                        <span>상품 <strong>+210원</strong></span>
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <div class="">
                                    <a href="#" class="btn_wish_cart js_cart_wish" data-sno="12405"><em>장바구니</em></a>

                                    <a href="#" class="btn_wish_del" data-sno="12405"><em>삭제하기</em></a>
                                </div>
                            </td>
                        </tr>

                        </tbody>
                    </table>

                    <button class="btn_wish_choice_del"><em>선택 상품 삭제</em></button>
                    <button class="btn_wish_choice_cart"><em>선택 상품 장바구니</em></button>
                </form>
            </div>

        </div>
        <!-- //mypage_wish_list -->

    </div>
    <!-- //mypage_cont -->

</div>
<!-- //content -->


<div id="optionViewLayer" class="layer_wrap dn"><style>
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

<div class="option_layer_cont" style="position: absolute; margin: 0px; top: 68px; left: 125.5px;">
    <form name="frmViewLayer" id="frmViewLayer" method="post">
        <input type="hidden" name="brandCd" value="001">
        <input type="hidden" name="cateCd" value="009083">
        <input type="hidden" name="cartMode" value="">
        <input type="hidden" name="goodsDiscount" value="0.00">
        <input type="hidden" name="goodsDiscountFl" value="n">
        <input type="hidden" name="goodsDiscountUnit" value="percent">
        <input type="hidden" id="goodsOptionCnt" value="1">
        <input type="hidden" name="mileageFl" value="c">
        <input type="hidden" name="mileageGoods" value="0.00">
        <input type="hidden" name="mileageGoodsUnit" value="percent">
        <input type="hidden" name="scmNo" value="1">
        <input type="hidden" name="selectGoodsFl" value="1">
        <input type="hidden" id="set_add_goods_price" name="set_add_goods_price" value="0">
        <input type="hidden" name="set_coupon_dc_price" value="10900.00">
        <input type="hidden" id="set_dc_price" value="0">
        <input type="hidden" id="set_goods_price" name="set_goods_price" value="10900">
        <input type="hidden" id="set_goods_fixedPrice" name="set_goods_fixedPrice" value="14900.00">
        <input type="hidden" name="set_goods_mileage" value="0">
        <input type="hidden" name="set_goods_stock" value="∞">
        <input type="hidden" id="set_goods_total_price" name="set_goods_total_price" value="0">
        <input type="hidden" id="set_option_price" name="set_option_price" value="0">
        <input type="hidden" id="set_option_text_price" name="set_option_text_price" value="0">
        <input type="hidden" id="set_total_price" name="set_total_price" value="21800">
        <input type="hidden" name="taxFreeFl" value="f">
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
                    <dt><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/18/10/44/1000001153/t50_1000001153_detail_043.jpg" width="68" alt="★블프특가 [마이셰프] 하우스비프스테이크(2인)" title="★블프특가 [마이셰프] 하우스비프스테이크(2인)" class="middle"></dt>
                    <dd>
                        <strong>★블프특가 [마이셰프] 하우스비프스테이크(2인)</strong>

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
                                    <input type="hidden" name="goodsNo[]" value="1000001153">
                                    <input type="hidden" name="optionSno[]" value="3494">
                                    <input type="hidden" name="goodsPriceSum[]" value="21800">
                                    <input type="hidden" name="addGoodsPriceSum[]" value="0">
                                    <div class="cart_tit_box"><strong class="cart_tit"><span>★블프특가 [마이셰프] 하우스비프스테이크(2인)</span></strong></div>
                                    <span id="option_text_display_0"></span>
                                </td>
                                <td>
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
                                    <strong class="option_price_display_0">21,800</strong>원
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
<link type="text/css" rel="stylesheet" href="../css/ImageSelect.css">
<script type="text/javascript">
   
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
            'setGoodsPrice' : '10900.00',
            'setGoodsNo' : '1000001153',
            'setMileageFl' : ' c',
            'setGoodsNm': "★블프특가 [마이셰프] 하우스비프스테이크(2인)",
            'setImage': "https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/18/10/44/1000001153/1000001153_detail_043.jpg",
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

            $('#optionViewLayer').find("input[name='goodsNo[]']").val("1000001153");

            var params = $('#frmViewLayer').serializeArray();
            params.push({name: 'page', value: 'wish_modify'});
            gd_option_view_result(params, "12405");

            gd_close_layer();
            $("#optionViewLayer").html('');
        });

        var optionKey = $('#optionViewLayer').find("tbody[id*='option_display_item_0']");

        if ($(optionKey).attr('id')) {
            optionKey = $(optionKey).attr('id').replace("option_display_item_", "");
            $("#frmViewLayer .goodsCnt_" + optionKey).val("2");



            goodsViewLayerController.goods_calculate("#frmViewLayer", 1, optionKey, "2");
        }
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
   
</script>
 <%-- <script type="text/html" id="optionTemplateLayer">
    <tbody id="option_display_item_<%=displayOptionkey%>">
        <tr class="check optionKey_<%=optionSno%>">
            <td class="cart_prdt_name">
                <input type="hidden" name="goodsNo[]" value="1000001153" />
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
</script>
 --%>
 </div> 

<script type="text/javascript">
    
    $(document).ready(function(){
        $('#frmWish .js_impossible_layer').on('click', function(){
            $("#frmWish .nomal_layer").addClass('dn');
            if ($("#frmWish .nomal_layer").is(":hidden")) {
                $(this).next(".nomal_layer").removeClass('dn');
            }
        });

        $('.btn_wish_choice_del').on('click', function(){
            gd_submit_wish('delete');
            return false;
        });

        $('.btn_wish_choice_cart').on('click', function(){
            gd_submit_wish('wishToCart');
            return false;
        });

        $('#frmWish .btn_wish_del').on('click', function(){

            $('input[name="sno[]"]').prop('checked', false);
            $('label[for*="wishSno"]').removeClass('on');
            $('#frmWish  .wish_sno_'+$(this).data('sno')+' input:checkbox').prop('checked','true');
            $('#frmWish  .wish_sno_'+$(this).data('sno')+' label').addClass('on');

            gd_submit_wish('delete');

            return false;

        });

        $('#frmWish .js_cart_wish').on('click', function(){

            $('input[name="sno[]"]').prop('checked', false);
            $('label[for*="wishSno"]').removeClass('on');
            $('#frmWish  .wish_sno_'+$(this).data('sno')+' input:checkbox').prop('checked','true');
            $('#frmWish  .wish_sno_'+$(this).data('sno')+' label').addClass('on');

            gd_submit_wish('wishToCart');
            return false;

        });


        $('#frmWish .btn_open_layer').bind('click', function(e){
            if($(this).attr('href') == '#optionViewLayer') {

                var params = {
                    type : 'wish',
                    page : $(this).data('page'),
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
        });


    });


    function gd_submit_wish(mode) {

        var checkedCnt = $('#frmWish  input:checkbox[name="sno[]"]:checked').length;
        var orderImpossibleFl = false;

        if(mode == 'delete') {
            msg = "상품을 찜리스트에서 삭제하시겠습니까?";
        } else {
            msg = "상품을 장바구니로 저장하시겠습니까?";
        }

        $('input[name="sno[]"]:checked').each(function() {
            if ($(this).data('order-possible') == 'n') {
                orderImpossibleFl = true;
                return false;
            }
        });

        if (checkedCnt == 0) {
            alert("선택하신 상품이 없습니다.");
            return false;
        } else if (mode == 'wishToCart' && orderImpossibleFl) {
            alert("선택하신 상품 중에 구매불가 상품이 있습니다.");
            return false;
        } else {
            if (confirm(__('선택하신 %i개', checkedCnt) +  msg) === true) {
                $('#frmWish input[name="mode"]').val(mode);

                var params = $( "#frmWish" ).serialize();

                $.ajax({
                    method: "POST",
                    cache: false,
                    url: "../mypage/wish_list_ps.php",
                    data: params,
                    success: function (data) {

                        if(mode == 'delete') {
                            location.reload();
                        } else {
                            location.href="../order/cart.php";
                        }

                    },
                    error: function (data) {
                        alert(data.message);

                    }
                });


            }
            return true;
        }

    }


    function gd_option_view_result(params,sno) {
        var mode = '';
        params.filter(function (data) {
            if (data.name == 'page') {
                mode = data.value;
            }
        });
        if (mode == 'wish_modify') {
            params.push({name: 'mode', value: 'wishModify'});
            params.push({name: 'sno', value: sno});
            var url = '../mypage/wish_list_ps.php';
        } else {
            params.push({name: 'mode', value: 'cartIn'});
            var url = '../order/cart_ps.php';
        }

        $.ajax({
            method: "POST",
            cache: false,
            url: url,
            data: params,
            success: function (data) {
                if (mode == 'wish_modify') {
                    document.location.reload();
                } else {
                    location.href="../order/cart.php";
                }
            },
            error: function (data) {
                alert(data.message);
            }
        });
    }
    
</script>

            </div>
            <!-- //sub_content -->
        </div>
        <!-- //본문 끝 contents -->
    </div>
    <!-- //container -->

  </body></html>