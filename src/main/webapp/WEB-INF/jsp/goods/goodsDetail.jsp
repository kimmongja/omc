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
<body class="body-goods body-goods-view pc">
	<div class="top_area"></div>
	<div id="wrap">
		<div id="container">
			<div id="contents">
	        <!-- 본문 시작 -->
	            <!-- //location_wrap -->
	            <div class="sub_content">
	                <!-- //side_cont -->
					<script>
					    // 장바구니담기
					    function addToData(type) {
					        if(type === 'AddToCart' || type === 'AddToWishlist') {
					            var products = [];
					            $('.item_info_box .option_display_area  tr, .item_info_box .option_display_area > div, .detail_buy .option_display_area > div, .order-goods.option_display_area > div, .option_display_area.order_goods > div').each(function(){
					                // console.log('hree',$(this));
					                var goodsNo = $(this).find('[name*=\'goodsNo[]\']').val();
					                // console.log(goodsNo);
					
					                var goodsCnt = $(this).find('[name*=\'goodsCnt[]\']').val();
					                // console.log(goodsCnt);
					
					                var goodsPriceSum = $(this).find('[name*=\'goodsPriceSum[]\']').val();
					                // console.log(goodsPriceSum);
					
					                var optionPriceSum = $(this).find('[name*=\'optionPriceSum[]\']').val();
					                // console.log(optionPriceSum);
					
					                var goodsPrice = (parseInt(goodsPriceSum) + parseInt(optionPriceSum)) / goodsCnt;
					                // console.log(goodsPrice);
					
					                var variant = $(this).find('.cart_tit > span').html()
					                console.log(variant);
					
					                if(goodsPrice > 0) {
					                    products.push({                 // Provide product details in an productFieldObject.
					                        'id': goodsNo,                     // Product ID (string).
					                        'name': productName,  // Product name (string).
					                        'price': goodsPrice,
					                        'category': productCategory,     // Product category (string).
					                        'variant': variant,
					                        'quantity': goodsCnt
					                    })
					                }
					            })
					
					
					            console.log(products);
					
					            if(products.length > 0) {
					                if(type == 'AddToCart') {
					                    gtag('event', 'add_to_cart', {
					                        'event_label' : productName,
					                        "items": products
					                    });
										
										var productTotalPrice = 0;
					                    for(var i in products) {
					                        productTotalPrice += products[i].price * products[i].quantity;
					                    }
					
					                    gtag('event', 'conversion', {
					                        'send_to': 'AW-621481013/BpgtCJv4rNcBELWYrKgC',
					                        'value': productTotalPrice,
					                        'currency': 'KRW'
					                    });
										
										var contents = [];
										for(var i in products) {
											contents.push({
												'id' : products[i].id,
												'quantity': products[i].quantity,
												'item_price' : products[i].price,
												'category': products[i].category,
												'item_name': products[i].name,
											})
										}
					
					
										var type = 'AddToCart';
										fbq('track', type, {
											content_ids: productNo,
											contents: contents,
											content_type: 'product',
											value: productTotalPrice,
											currency: 'KRW'
										});
					                }
					            }
					        }
					    }
					</script>
					<script>
					    callbackIsVisible('.btn_add_cart, .btn-add-cart, .js-btn-add-cart, .js_btn_add_cart', function() {
					        console.log('장바구니 이벤트 추가')
					        $('.btn_add_cart, .btn-add-cart, .js-btn-add-cart, .js_btn_add_cart').on('click', function(e){
					            console.log('장바구니 클릭')
					          //  addToData('AddToCart')
					        });
					    })
					</script>
					<!-- Global site tag (gtag.js) - Google Analytics -->
					
					<script type="text/javascript">
					    <!--
					    var bdGoodsQaId = 'goodsqa';
					    var bdGoodsReviewId = 'goodsreview';
					    var goodsNo = '1000002400';
					    var goodsViewController = new gd_goods_view();
					    var goodsTotalCnt;
					    var goodsOptionCnt = [];
					
					    $(document).ready(function(){
							
					        var parameters = {
					            'setControllerName' : goodsViewController,
					            'setOptionFl' : 'n',
					            'setOptionTextFl'	: 'n',
					            'setOptionDisplayFl'	: 's',
					            'setAddGoodsFl'	: 'n',
					            'setIntDivision'	: '||',
					            'setStrDivision'	: '^|^',
					            'setMileageUseFl'	: 'y',
					            'setCouponUseFl'	: 'y',
					            'setMinOrderCnt'	: '1',
					            'setMaxOrderCnt'	: '0',
					            'setStockFl'	: 'n',
					            'setSalesUnit' : '1',
					            'setDecimal' : '0',
					            'setGoodsPrice' : '23085.00',
					            'setGoodsNo' : '1000002400',
					            'setMileageFl' : ' c',
					            'setFixedSales' : 'option',
					            'setFixedOrderCnt' : 'option',
					            'setOptionPriceFl' : 'y',
					            'setStockCnt' : '∞'
					    };
					
					        goodsViewController.init(parameters);
					
					
					        goodsViewController.goods_calculate('#frmView', 1, 0, "1");
					
					        /* 상품 이미지 슬라이드 */
					        $('.item_photo_info_sec .slider_goods_nav').slick({
					            dots: false,
					            centerMode: false,
					            slidesToShow: 5,
					            slidesToScroll: 1,
					            prevArrow: $('.item_photo_info_sec .slick_goods_prev'),
					            nextArrow: $('.item_photo_info_sec .slick_goods_next')
					        });
					
					        /* 줌레이어 상품 이미지 슬라이드 */
					        $('.ly_slider_goods_nav').slick({
					            dots: false,
					            centerMode: false,
					            vertical: true,
					            slidesToShow: 5,
					            slidesToScroll: 1,
					            prevArrow: $('.zoom_layer .slick_goods_prev'),
					            nextArrow: $('.zoom_layer .slick_goods_next')
					        });
					
					
					        $('button.goods_cnt').on('click', function(e) {
					            goodsViewController.count_change(this, 1);
					        });
					
					        $('button.add_goods_cnt').on('click', function(e) {
					            goodsViewController.count_change(this);
					        });
					
					
					        gd_benefit_calculation();
					
					        gd_open_layer();
					
					
					        $('.btn_add_order').on('click', function(e){
					            gd_goods_order('d');
					            return false;
					        });
					
					        $('.btn_add_wish').on('click', function(e){
					            gd_goods_order('w');
					            return false;
					        });
					
					        $('.btn_add_cart').on('click', function(e){
					            gd_goods_order();
					            return false;
					        });
					
					        //상품 재입고 알림 팝업 오픈
					
					        gd_load_goodsBoardList(bdGoodsReviewId, goodsNo);
					
					        gd_load_goodsBoardList(bdGoodsQaId, goodsNo);
					
					        // SNS 공유하기
					        $('.target_sns_share').on('click', function() {
					            if ($("#lySns").css("display") == 'block') {
					                // 단축주소 가져오기
					                $.ajax({
					                    type: 'post',
					                    url: './goods_ps.php',
					                    async: true,
					                    cache: true,
					                    data: {
					                        mode: 'get_short_url',
					                        url: 'https://www.mychef.kr/goods/goods_view.php?goodsNo=1000002400'
					                    },
					                    success: function (data) {
					                        var json = $.parseJSON(data);
					                        $('.sns_copy_url > input').val(json.url);
					                        $('.sns_copy_url > button').attr('data-clipboard-text', json.url);
					                    }
					                });
					            }
					        });
					
					
					        var canGoodsReview = '1';
					        var canPlusReview = '';
					        var canGoodsQa = '1';
					        var tabCount = 5;
					        if (!canGoodsReview && canPlusReview != 'y') {
					            $('.tab a[href=#reviews]').remove();
					            $('#reviews').hide();
					            tabCount-- ;
					        }
					
					        if (!canGoodsQa) {
					            $('.tab a[href=#qna]').remove();
					            $('#qna').hide();
					            tabCount--;
					        }
					        if (tabCount < 5) {
					            $('.multiple-topics .tab a').css('width', 100 / tabCount + '%');
					        }
					
					        $('.layer-cartaddconfirm').click(function(){
					            location.href = '../order/cart.php';
					        });
					
					        // 배송비 항목을 노출 안함 설정하면 배송비 타입을 생성
					        var deliveryCollectFl = "pre";
					        if ($('#frmView [name="deliveryCollectFl"]').length > 0) {
					            // 이미 존재 패스
					        } else if (deliveryCollectFl == 'both') {
					            // 선택은 패스
					        } else {
					            $('#frmView').append('<input type="hidden" name="deliveryCollectFl" value="' + deliveryCollectFl + '">');
					        }
					
					        $('.btn_move_cart').click(function() {
					            location.href = '../order/cart.php';
					        });
					
					        $('.btn_move_wish').click(function() {
					            location.href = '../mypage/wish_list.php';
					        });
					
					        //배송 방식에 따른 방문 수령지 노출 여부
					        $(".js-deliveryMethodFl").change(function(){
					            if($(this).val() === 'visit'){
					                $(".js-deliveryMethodVisitArea").removeClass('dn');
					            }
					            else {
					                $(".js-deliveryMethodVisitArea").addClass('dn');
					            }
					        });
					
							//시간 카운트다운
					        $('[data-countdown]').each(function() {
					            var $this = $(this), finalDate = $(this).data('countdown');
					            //console.log(finalDate);
					            if(finalDate) {
					                $this.countdown(finalDate, function(event) {
					                    $this.html(event.strftime('%D일 %H시간 %M분 %S초 남음'));
					                });
					            } else {
					                    $this.html('종료');
					            }
					        });
					
					
					    });
					
					    $(document).on('keydown focusout', 'input[name^=goodsCnt]', function(e){
					        $(this).val($(this).val().replace(/[^0-9\-]/g,""));
					    });
					
					    /**
					     * KC마크 인증정보창
					     * @param string url KC인증번호검색 url
					     * @return
					     */
					    function popupKcInfo(url) {
					        var win = gd_popup({
					            url: url
					            , target: 'searchPop'
					            , width: 750
					            , height: 700
					            , resizable: 'no'
					            , scrollbars: 'yes'
					        });
					        win.focus();
					        return win;
					    }
					
					    // 쿠폰 오픈 레이어에 따른 분기
					    function gd_open_layer() {
					        $('.btn_open_layer').bind('click', function(e) {
					            if ($(this).attr('href') == '#lyCouponDown') {
					                gd_coupon_down();
					            } else if ($(this).attr('href') == '#lyCouponApply') {
					                gd_coupon_apply($(this).data('key'));
					            }
					        });
					    }
					
					    function gd_bind_coupon_cancel() {
					        $('.btn_coupon_cancel').bind('click', function(e){
					            $('.payco_pay').removeClass('dn');
					            $('.naver_pay').removeClass('dn');
					            gd_coupon_cancel($(this).data('key'), '');
					        });
					    }
					
					    function gd_coupon_cancel(optionKey, typeCode) {
					        $('#option_display_item_' + optionKey + ' input:hidden[name="couponApplyNo[]"]').val('');
					        $('#option_display_item_' + optionKey + ' input:hidden[name="couponSalePriceSum[]"]').val('');
					        $('#option_display_item_' + optionKey + ' input:hidden[name="couponAddPriceSum[]"]').val('');
					        var couponApplyHtml = "<a href=\"#lyCouponApply\" class=\"btn_open_layer\" data-key=\""+optionKey+"\"><img src=\"https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/btn/btn_coupon_apply.png\" alt=\"쿠폰적용\"/></a>";
					        $('#coupon_apply_' + optionKey).html(couponApplyHtml);
					        if ($('#cart_tab_coupon_apply_'+optionKey).length) $('#cart_tab_coupon_apply_' + optionKey).html(couponApplyHtml);
					        gd_open_layer();
					        if (typeCode == 'noCalculation') {
					            // 재계산 안함
					        } else {
					            gd_benefit_calculation();
					        }
					    }
					
					    function gd_coupon_down() {
					        $.ajax({
					                method: "POST",
					                cache: false,
					                url: "../goods/layer_coupon_down.php",
					                data: "goodsNo=" + 1000002400,
					            success: function (data) {
					            $('#lyCouponDown').empty().append(data);
					            $('#lyCouponDown').find('>div').center();
					        },
					        error: function (data) {
					            alert(data.message);
					            gd_close_layer();
					        }
					    });
					    }
					    function gd_coupon_apply(optionKey) {
					        var params = {
					            mode: 'coupon_apply',
					            goodsNo: 1000002400,
					            optionKey: optionKey,
					            couponApplyNotNo: $('input:hidden[name="couponApplyNo[]"]').serializeArray(),
					            couponApplyNo: $('#option_display_item_'+optionKey+' input:hidden[name="couponApplyNo[]"]').val(),
					            goodsCnt: $('#option_display_item_'+optionKey+' input:text[name="goodsCnt[]"]').val(),
					            goodsPriceSum: $('#option_display_item_'+optionKey+' input:hidden[name="goodsPriceSum[]"]').val(),
					            optionPriceSum: $('#option_display_item_'+optionKey+' input:hidden[name="optionPriceSum[]"]').val(),
					            optionTextPriceSum: $('#option_display_item_'+optionKey+' input:hidden[name="optionTextPriceSum[]"]').val(),
					            addGoodsPriceSum: $('#option_display_item_'+optionKey+' input:hidden[name="addGoodsPriceSum[]"]').val(),
					        };
					
					        $.ajax({
					            method: "POST",
					            cache: false,
					            url: "../goods/layer_coupon_apply.php",
					            data: params,
					            success: function (data) {
					                $('#lyCouponApply').empty().append(data);
					                $('#lyCouponApply').find('>div').center();
					            },
					            error: function (data) {
					                alert(data.message);
					                gd_close_layer();
					            }
					        });
					    }
					
					    /**
					     * 메인 이미지 변경
					     *
					     * @param string keyNo 상품 배열 키값
					     */
					    function gd_change_image(keyNo, type) {
					        if (typeof keyNo == 'string') {
					            var detailKeyID = new Array();
					            detailKeyID[0] = "<img src=\"https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/1000002400_detail_069.jpg\" width=\"550\" alt=\"심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)\" title=\"심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)\" class=\"middle\"  />";
					
					            var magnifyKeyID = new Array();
					            magnifyKeyID[0] = "<img src=\"https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/1000002400_magnify_017.jpg\" width=\"550\" alt=\"심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)\" title=\"심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)\" class=\"middle\"  />";
					
					            if (type == 'detail') {
					                $('#mainImage').html(detailKeyID[keyNo]);
					            } else {
					                $('#magnifyImage').html(magnifyKeyID[keyNo]);
					            }
					
					        }
					    }
					
					    /**
					     * 총 합산
					     */
					    function gd_total_calculate() {
					        var goodsPrice = parseFloat($('#frmView input[name="set_goods_price"]').val());
					
					        //총합계 계산
					        goodsTotalCnt =  0;
					        $('#frmView input[name*="goodsCnt[]"]').each(function (index) {
					            goodsTotalCnt += parseFloat($(this).val());
					            goodsOptionCnt[index] = parseFloat($(this).val());
					        });
					        var goodsTotalPrice = goodsPrice * goodsTotalCnt;
					        var setOptionPrice =  0;
					
					        $('#frmView input[name*="optionPriceSum[]"]').each(function () {
					            setOptionPrice += parseFloat($(this).val());
					        });
					
					        var setOptionTextPrice =  0;
					        $('#frmView input[name*="optionTextPriceSum[]"]').each(function () {
					            setOptionTextPrice += parseFloat($(this).val());
					        });
					
					        var setAddGoodsPrice =  0;
					        $('#frmView input[name*="add_goods_total_price["]').each(function () {
					            setAddGoodsPrice += parseFloat($(this).val());
					        });
					
					        $('#frmView input[name="set_option_price"]').val(setOptionPrice);
					        $('#frmView input[name="set_option_text_price"]').val(setOptionTextPrice);
					        $('#frmView input[name="set_add_goods_price"]').val(setAddGoodsPrice);
					
					        var totalGoodsPrice = (goodsTotalPrice + setOptionPrice + setOptionTextPrice + setAddGoodsPrice).toFixed(0);
					        $('#frmView input[name="set_total_price"]').val(totalGoodsPrice);
					        $(".goods_total_price").html("" + gd_money_format(totalGoodsPrice) + "<b>원</b>");
					
					
					        gd_benefit_calculation();
					    }
					
					    /*
					     * 혜택
					     */
					    function gd_benefit_calculation() {
					
					        $('input[name="mode"]').val('get_benefit');
					        var parameters = $("#frmView").serialize();
					
					        if ($("#frmView input[name*='goodsNo']").length == 0) {
					            parameters += "&goodsNo%5B%5D=1000002400&goodsCnt%5B%5D=1";
					        }
					
					        $.post('./goods_ps.php', parameters, function (data) {
					            var getData = $.parseJSON(data);
					
					            if(getData.totalDcPrice > 0 || getData.totalMileage > 0) {
					                $(".item_discount_mileage").removeClass('dn');
					
					                if(getData.totalDcPrice > 0 ) {
					                    $(".item_discount_mileage span.item_discount").removeClass('dn');
					                    $(".end_price dl.total_discount").removeClass('dn');
					                    var tmp = new Array();
					                    if (getData.goodsDcPrice) tmp.push("상품 : " + " " + gd_money_format(getData.goodsDcPrice) + "원");
					                    if (getData.memberDcPrice) tmp.push("회원 : " + " " + gd_money_format(getData.memberDcPrice) + "원");
					                    if (getData.couponDcPrice) tmp.push("쿠폰 : " + " " + gd_money_format(getData.couponDcPrice) + "원");
					
					                    $(".benefit_price").html("(" + tmp.join() + ")");
					
					                    $(".total_benefit_price").html("-" + gd_money_format(getData.totalDcPrice) + "<b>원</b>");
					
					
					                    $("#set_dc_price").val(getData.totalDcPrice);
					
					                } else {
					                    $("#set_dc_price").val('0');
					                    $(".item_discount_mileage span.item_discount").addClass('dn');
					                    $(".end_price dl.total_discount").addClass('dn');
					                }
					
					                if(getData.totalMileage > 0 ) {
					                    $(".item_discount_mileage span.item_mileage").removeClass('dn');
					                    var tmp =new Array();
					                    if (getData.goodsMileage) tmp.push("상품 : " + gd_money_format(getData.goodsMileage) + "원");
					                    if (getData.memberMileage) tmp.push("회원 : " + gd_money_format(getData.memberMileage) + "원");
					                    if (getData.couponMileage) tmp.push("쿠폰 : " + gd_money_format(getData.couponMileage) + "원");
					                    $(".benefit_mileage").html("("+tmp.join()+")");
					
					                    $(".total_benefit_mileage").html("+" + gd_money_format(getData.totalMileage) + "원");
					                } else {
					                    $(".item_discount_mileage span.item_mileage").addClass('dn');
					                }
					            } else {
					                $("#set_dc_price").val('0');
					                $(".item_discount_mileage").addClass('dn');
					                $(".end_price dl.total_discount").addClass('dn');
					            }
					
					            if ($('#frmView input[name="set_total_price"]').val().trim() == '0') {
					                $(".total_price").html("0<b>원</b>");
					                if ($("#cart_tab_option").length) $("#cart_tab_option .total_benefit_price").html("0<b>원</b>");
					
					            } else {
					                var totalPrice = parseFloat($('#frmView input[name="set_total_price"]').val()) - parseFloat(getData.totalDcPrice);
					                $(".total_price").html("  " + gd_money_format(totalPrice) + "<b>원</b>");
					
					            }
					
					            $('button.goods_cnt').attr('disabled', false);
					            $('button.add_goods_cnt').attr('disabled', false);
					            // 쿠폰 구매금액 제한에 따른 처리
					            if (typeof getData.couponAlertKey == 'undefined') {
					                // 구매 금액 제한에 걸리지 않음
					            } else {
					                gd_coupon_cancel(getData.couponAlertKey, 'noCalculation');
					                alert("적용 쿠폰이 구매 금액 제한에 걸려 적용 쿠폰이 취소 되었습니다.");
					            }
					        });
					    }
					
					    /**
					     * 바로구매, 장바구니, 상품 보관함
					     *
					     * @param string modeStr 처리 모드
					     */
					    var salesUnit = parseInt("1");
					    var minOrderCnt = parseInt("1");
					    var maxOrderCnt = parseInt("0");
					    function gd_goods_order(modeStr)
					    {
					        if (typeof modeStr === undefined) { var modeStr = ''; } if (typeof aCounterPageScriptGoodsView === "function") { aCounterPageScriptGoodsView(modeStr); setTimeout(function() {}, 200); } 
					        $('#frmView input[name=\'cartMode\']').val(modeStr);
					
					        //수령일 선택경고창
					        if (modeStr == 'w') {
					            alert("로그인하셔야 본 서비스를 이용하실 수 있습니다.");
					            document.location.href = "../member/login.php";
					            return false;
					        } else {
					            $('#frmView input[name="mode"]').val('cartIn');
					            $('#frmView').attr('action','../order/cart_ps.php');
					
					            var goodsInfo = $('#frmView input[name="optionSnoInput"]').val();
					
					            if (goodsInfo == '') {
					                alert("가격 정보가 없거나 옵션이 선택되지 않았습니다!");
					                return false;
					            }
					
					
					
					        }
					
					        var submitFl = true;
					        if (isNaN(goodsTotalCnt)) goodsTotalCnt = 1;
					        if (_.isEmpty(goodsOptionCnt)) goodsOptionCnt[0] = 1;
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
					
					        if ((modeStr == 'd' || modeStr == 'pa') && submitFl === false) {
					            return false;
					        }
					
					        if(modeStr == 'pa') {
					            return true;
					        }
					
					        $('#frmView').attr('target','');
					
					        // 쿠폰 사용기간 체크
					        if ($('input:hidden[name="couponApplyNo[]"]').val()) {
					            var checkCouponType = true;
					            var couponApplyNo;
					            $.ajax({
					                method: "POST",
					                cache: false,
					                async: false,
					                url: "../goods/goods_ps.php",
					                data: {mode: 'goodsCheckCouponTypeArr', couponNo : $('input:hidden[name="couponApplyNo[]"]').val() },
					                success: function (data) {
					                    checkCouponType = data.isSuccess;
					                    couponApplyNo = data.setCouponApplyNo.join('||');
					                },
					                error: function (e) {
					                }
					            });
					
					            if(!checkCouponType) {
					                $('input:hidden[name="couponApplyNo[]"]').val(couponApplyNo);
					                alert('사용기간이 만료된 쿠폰이 포함되어 있어 제외 후 진행합니다.');
					            }
					        }
					
					        if (modeStr == 'w' || typeof modeStr == 'undefined') {
					            var params = $("#frmView").serialize();
					
					            if (modeStr == 'w') {
					                var ajaxUrl = '../mypage/wish_list_ps.php';
					                var target = $("#addWishLayer");
					            } else {
					                var ajaxUrl = '../order/cart_ps.php';
					                var target = $("#addCartLayer");
					            }
					
					            $.ajax({
					                method: "POST",
					                cache: false,
					                url: ajaxUrl,
					                data: params,
					                success: function (data) {
										
					
					                    // error 메시지 예외 처리용
										
					                    if (!_.isUndefined(data.error) && data.error == 1) {
					                        alert(data.message);
					                        return false;
					                    }
					
					                    if (modeStr == 'w') {
					                        location.href = "../mypage/wish_list.php";
					                        return false;
					                    }
					                    target.removeClass('dn');
					                    $('#layerDim').removeClass('dn');
					                    target.find('> div').center();
					                },
					                error: function (data) {
					                    alert(data.message);
					                }
					            });
					        } else {
					            $('#frmView').submit();
					        }
					    }
					
					
					
					    //-->
					</script>
					<%-- <script type="text/html" id="optionTemplate">
    <tbody id="option_display_item_<%=displayOptionkey%>">
    <tr class="check optionKey_<%=optionSno%>">
        <td class="cart_prdt_name">
            <input type="hidden" name="goodsNo[]" value="1000002400" />
            <input type="hidden" name="optionSno[]" value="<%=optionSno%>" />
            <input type="hidden" name="goodsPriceSum[]" value="0" />
            <input type="hidden" name="addGoodsPriceSum[]" value="0" />
            <input type="hidden" name="displayOptionkey[]" value="<%=displayOptionkey%>" />
            <input type="hidden" name="couponApplyNo[]" value="" />
            <input type="hidden" name="couponSalePriceSum[]" value="" />
            <input type="hidden" name="couponAddPriceSum[]" value="" />
            <div class="cart_tit_box">
                <strong class="cart_tit">
                    <span><%=optionName%></span>
                    <span><%=optionSellCodeValue%><%=optionDeliveryCodeValue%></span>
                    <span class="cart_btn_box">
                            <button type="button" class="btn_alert_login"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/btn/btn_coupon_apply.png" alt="쿠폰적용"/></button>
                        </span>
                    <span id="option_text_display_<%=displayOptionkey%>"></span>
                </strong>
            </div>
        </td>
        <td>
                <span class="count">
                    <span class="goods_qty">
                        <input type="text" class="text goodsCnt_<%=displayOptionkey%>" title="수량" name="goodsCnt[]" value="1" data-value="1" data-stock="<%=optionStock%>" data-key="<%=displayOptionkey%>" onchange="goodsViewController.input_count_change(this, '1');return false;" />
                        <span>
                            <button type="button" class="up goods_cnt" title="증가"  value="up^|^<%=displayOptionkey%>">증가</button>
                            <button type="button" class="down goods_cnt" title="감소"  value="dn^|^<%=displayOptionkey%>">감소</button>
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
            <button type="button" class="delete_goods" data-key="option_display_item_<%=displayOptionkey%>"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/shop_cart/ico_cart_del.png" alt="삭제"/></button>
        </td>
    </tr>
    </tbody>
	</script>
					<script type="text/html" id="addGoodsTemplate">
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
                    <input type="text" name="addGoodsCnt[<%=optionIndex%>][]" class="text addGoodsCnt_<%=displayOptionkey%>_<%=displayAddGoodsKey%>" title="수량" value="1"  data-key="<%=displayOptionkey%>||<%=displayAddGoodsKey%>"  data-value="1" data-stock-fl="<%=addGoodsStockFl%>"  data-stock="<%=addGoodsStock%>" onchange="goodsViewController.input_count_change(this);return false;">
                    <span>
                        <button type="button" class="up add_goods_cnt" title="증가"  value="up^|^<%=displayOptionkey%>||<%=displayAddGoodsKey%>">증가</button>
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
            <button type="button" class="delete_add_goods" data-key="<%=displayOptionkey%>-<%=displayAddGoodsKey%>"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/shop_cart/ico_cart_del.png" alt="삭제"/></button>
        </td>
    </tr>
	</script> --%>
					
					<div class="content_box">
					    <div class="location_wrap">
					        <div class="location_cont">
					            <em><a href="#" class="local_home">HOME</a></em>
					            <span>&nbsp;&gt;&nbsp;</span>
					            <div class="location_select">
					                <div class="location_tit"><a href="#"><span>특가/기획전</span></a></div>
					                <ul style="display:none;">
					                    <li><a href="./goods_list.php?cateCd=016"><span>전체상품</span></a></li>
					                    <li><a href="./goods_list.php?cateCd=017"><span>밀키트</span></a></li>
					                    <li><a href="./goods_list.php?cateCd=021"><span>교육체험용키트</span></a></li>
					                    <li><a href="./goods_list.php?cateCd=030"><span>BESPOKE 큐커 밀키트</span></a></li>
					                    <li><a href="./goods_list.php?cateCd=023"><span>콜라보 밀키트</span></a></li>
					                    <li><a href="./goods_list.php?cateCd=028"><span>베스트</span></a></li>
					                    <li><a href="./goods_list.php?cateCd=009"><span>특가/기획전</span></a></li>
					                    <li><a href="./goods_list.php?cateCd=026"><span>신상품</span></a></li>
					                    <li><a href="./goods_list.php?cateCd=027"><span>선물세트</span></a></li>
					                </ul>
					            </div>
					            <span>&nbsp;&gt;&nbsp;</span>
					            <div class="location_select">
					                <div class="location_tit"><a href="#"><span>축구 경기 기획전</span></a></div>
					                <ul style="display:none;">
					                    <li><a href="./goods_list.php?cateCd=009071"><span>위클리 특가</span></a></li>
					                    <li><a href="./goods_list.php?cateCd=009083"><span>블랙프라이데이</span></a></li>
					                    <li><a href="./goods_list.php?cateCd=009085"><span>축구 경기 기획전</span></a></li>
					                </ul>
					            </div>
					        </div>
					    </div>
					    <!-- //location_wrap -->
					    <!-- 상품 상단 -->
					    <div class="item_photo_info_sec">
					        <div class="item_photo_view_box">
					            <div class="item_photo_view">
					                <div class="item_photo_big">
					                    <span class="img_photo_big"><a href="#lyZoom" id="mainImage" class="zoom_layer_open btn_open_layer"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/1000002400_detail_069.jpg" width="550" alt="심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)" title="심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)" class="middle"></a></span>
					                    <a href="#lyZoom" class="btn_zoom zoom_layer_open btn_open_layer"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/goods_icon/icon_zoom.png" alt=""></a>
					                </div>
					                <div id="testZoom" style="display:none">
					                    <img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/1000002400_magnify_017.jpg" width="550" alt="심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)" title="심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)" class="middle">
					                </div>
					                <!-- //item_photo_big -->
					                <div class="color"><div style="background-color:#FFFFFF;" title="흰색"></div></div>
					                <div class="item_photo_slide">
					                    <button type="button" class="slick_goods_prev slick-arrow slick-hidden" aria-disabled="true" tabindex="-1"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/shop_cart/btn_slide_prev.png" alt="이전 상품 이미지"></button>
					                    <ul class="slider_wrap slider_goods_nav slick-initialized slick-slider">
					                        <div aria-live="polite" class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 88px; transform: translate3d(0px, 0px, 0px);" role="listbox"><li class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide00" style="width: 88px;"><a href="javascript:gd_change_image('0', 'detail');" tabindex="0"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/t50_1000002400_detail_069.jpg" width="68" alt="심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)" title="심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)" class="middle"></a></li></div></div>
					                    </ul>
					                    <button type="button" class="slick_goods_next slick-arrow slick-hidden" aria-disabled="true" tabindex="-1"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/icon/shop_cart/btn_slide_next.png" alt="다음 상품 이미지"></button>
					                </div>
					                <!-- //item_photo_slide -->
					            </div>
					            <!-- //item_photo_view -->
					        </div>
					        <!-- //item_photo_view_box -->
					
					        <form name="frmView" id="frmView" method="post">
					            <input type="hidden" name="mode" value="get_benefit">
					            <input type="hidden" name="scmNo" value="1">
					            <input type="hidden" name="cartMode" value="">
					            <input type="hidden" name="set_goods_price" value="23085">
					            <input type="hidden" id="set_goods_fixedPrice" name="set_goods_fixedPrice" value="27800.00">
					            <input type="hidden" name="set_goods_mileage" value="0">
					            <input type="hidden" name="set_goods_stock" value="∞">
					            <input type="hidden" name="set_coupon_dc_price" value="23085.00">
					            <input type="hidden" id="set_goods_total_price" name="set_goods_total_price" value="0">
					            <input type="hidden" id="set_option_price" name="set_option_price" value="0">
					            <input type="hidden" id="set_option_text_price" name="set_option_text_price" value="0">
					            <input type="hidden" id="set_add_goods_price" name="set_add_goods_price" value="0">
					            <input type="hidden" name="set_total_price" value="23085">
					            <input type="hidden" name="mileageFl" value="c">
					            <input type="hidden" name="mileageGoods" value="0.00">
					            <input type="hidden" name="mileageGoodsUnit" value="percent">
					            <input type="hidden" name="goodsDiscountFl" value="n">
					            <input type="hidden" name="goodsDiscount" value="0.00">
					            <input type="hidden" name="goodsDiscountUnit" value="percent">
					            <input type="hidden" name="taxFreeFl" value="t">
					            <input type="hidden" name="taxPercent" value="10.0">
					            <input type="hidden" name="scmNo" value="1">
					            <input type="hidden" name="brandCd" value="">
					            <input type="hidden" name="cateCd" value="009085">
					            <input type="hidden" id="set_dc_price" value="0">
					            <input type="hidden" id="goodsOptionCnt" value="1">
					            <input type="hidden" name="optionFl" value="n">
					            <input type="hidden" name="goodsDeliveryFl" value="y">
					            <input type="hidden" name="sameGoodsDeliveryFl" value="n">
					            <input type="hidden" name="useBundleGoods" value="1">
					            <div class="item_info_box">
					                <!-- //time_sale -->
					                <div class="item_tit_detail_cont">
					                    <div class="item_detail_tit">
					                        <h3>심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)</h3>
					                        <div class="btn_layer btn_qa_share_box">
					                            <span class="btn_gray_list target_sns_share"><a href="#lySns" class="btn_gray_mid"><em>공유</em></a></span>
					
					                            <div id="lySns" class="layer_area" style="display:none;">
					                                <div class="ly_wrap sns_layer">
					                                    <div class="ly_tit">
					                                        <strong>SNS 공유하기</strong>
					                                    </div>
					                                    <div class="ly_cont">
					                                        <div class="sns_list">
					                                            <ul>
					                                                <li><a href="https://www.facebook.com/sharer/sharer.php?display=popup&amp;redirect_uri=http%3A%2F%2Fwww.facebook.com&amp;u=https%3A%2F%2Fwww.mychef.kr%2Fgoods%2Fgoods_view.php%3FgoodsNo%3D1000002400&amp;t=%EC%8B%AC%EC%95%BC%EC%8B%9D%EB%8B%B9+%EC%84%B8%ED%8A%B8%28%EC%86%8C%EA%B3%A0%EA%B8%B0+%EC%95%BC%EB%81%BC%EC%9A%B0%EB%8F%99%2B%EC%95%8C%EC%B0%AC+%EC%86%8C%EA%B3%A0%EA%B8%B0+%EC%8A%A4%ED%82%A4%EC%95%BC%ED%82%A4%29" data-width="750" data-height="300" data-sns="facebook" class="btn-social-popup"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/btn/sns-facebook.png" alt="페이스북 공유"><br><span>페이스북</span></a></li>
					                                                <li><a href="https://twitter.com/intent/tweet?text=%EC%8B%AC%EC%95%BC%EC%8B%9D%EB%8B%B9+%EC%84%B8%ED%8A%B8%28%EC%86%8C%EA%B3%A0%EA%B8%B0+%EC%95%BC%EB%81%BC%EC%9A%B0%EB%8F%99%2B%EC%95%8C%EC%B0%AC+%EC%86%8C%EA%B3%A0%EA%B8%B0+%EC%8A%A4%ED%82%A4%EC%95%BC%ED%82%A4%29&amp;url=https%3A%2F%2Fwww.mychef.kr%2Fgoods%2Fgoods_view.php%3FgoodsNo%3D1000002400" data-width="500" data-height="250" data-sns="twitter" class="btn-social-popup"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/btn/sns-twitter.png" alt="트위터 공유"><br><span>트위터</span></a></li>
														                <script type="text/javascript">
														                $(function () {
														                    $(".btn-social-popup").click(function(e){
														                    e.preventDefault();
														                    
														                    gd_popup({
														                        url: $(this).prop("href"),
														                        target: "_blank",
														                        width: $(this).data("width"),
														                        height: $(this).data("height"),
														                        resizable: "no",
														                        scrollbars: "no"
														                    });
														                });
														                });
														                </script>
					                                                <li><a href="javascript:;" id="shareKakaoLinkBtn" data-sns="kakaolink"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/btn/sns-kakaolink.png" alt="카카오톡 공유"><br><span>카카오톡링크</span></a></li>
												                    <script type="text/javascript" src="/data/skin/front/udweb_pc_20200903/js/kakao/kakao.min.js"></script><script type="text/javascript">
												                            //<![CDATA[
												                            Kakao.init("5966ae54f7ecc008bc4e416924bf31ab");
												                            Kakao.Link.createDefaultButton({
												                                container: "#shareKakaoLinkBtn",
												                                objectType: "commerce",
												                                content: {
												                                    title: "심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)",
												                                    imageUrl: "https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/1000002400_detail_069.jpg",
												                                    link: {
												                                        mobileWebUrl: "https://m.mychef.kr/goods/goods_view.php?goodsNo=1000002400", // 앱 설정의 웹 플랫폼에 등록한 도메인의 URL이어야 합니다.
												                                        webUrl: "https://www.mychef.kr/goods/goods_view.php?goodsNo=1000002400"
												                                    }
												                                },
												                                commerce: {
												                                    regularPrice: 23085,
												//                                    discountPrice: 0,
												                                    discountRate: 0
												                                },
												                                buttons: [
												                                    {
												                                        title: "주식회사 마이셰프",
												                                        link: {
												                                            mobileWebUrl: "", // 앱 설정의 웹 플랫폼에 등록한 도메인의 URL이어야 합니다.
												                                            webUrl: ""
												                                        }
												                                    },
												                                    {
												                                        title: "",
												                                        link: {
												                                            mobileWebUrl: "", // 앱 설정의 웹 플랫폼에 등록한 도메인의 URL이어야 합니다.
												                                            webUrl: ""
												                                        }
												                                    }
												                                ]
												                            });
												                            //]]>
												                        </script>
												                                                
												                    <li><a href="javascript:shareStory();" id="shareKakaoStoryBtn" data-sns="kakaostory"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/btn/sns-kakaostory.png" alt="카카오스토리 공유"><br><span>카카오스토리</span></a></li>
												                    <script type="text/javascript" src="/data/skin/front/udweb_pc_20200903/js/kakao/kakao.min.js"></script>
												                    <script type="text/javascript">
												                        //<![CDATA[
												                        Kakao.init("5966ae54f7ecc008bc4e416924bf31ab");
												                        function shareStory() {
												                            
												                            Kakao.Story.share({
												                                text: "",
												                                url: "https://www.mychef.kr/goods/goods_view.php?goodsNo=1000002400"
												                            });
												                        }
												                        //]]>
												                    </script>
					                                            </ul>
					                                            <div class="sns_copy_url">
					                                                <input type="text" value="https://www.mychef.kr/goods/goods_view.php?goodsNo=1000002400">
					                                                <button type="button" class="gd_clipboard" title="상품주소" data-clipboard-text="https://www.mychef.kr/goods/goods_view.php?goodsNo=1000002400"><em>URL복사</em></button>
					                                            </div>
					                                        </div>
					                                    </div>
					                                    <!-- //ly_cont -->
					                                    <a href="#close" class="ly_close"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/layer/btn_layer_close.png" alt="닫기"></a>
					                                </div>
					                                <!-- //ly_wrap -->
					                            </div>
					                            <!-- //layer_area -->
					                        </div>
					                        <!-- //btn_qa_share_box -->
					                    </div>
					                    <div class="item_detail_list">
					                        <dl>
					                            <dt>정가</dt>
					                            <dd>
					                                <del><span>27,800</span>원 </del>
					                            </dd>
					                        </dl>
					                        <dl class="item_price">
					                            <dt>판매가</dt>
					                            <dd>
					                                <strong><strong>23,085</strong></strong>원
					                                <!-- 글로벌 참조 화폐 임시 적용 -->
					                            </dd>
					                        </dl>
					                        <dl class="item_discount_mileage">
					                            <dt>구매혜택</dt>
					                            <dd>
					                                <span class="item_discount dn">할인 : <strong class="total_benefit_price"></strong> <strong class="benefit_price item_apply"></strong></span>
					                                <span class="item_mileage">적립 마일리지 : <strong class="total_benefit_mileage">+230원</strong> <strong class="benefit_mileage item_apply">(상품 : 230원)</strong></span>
					                            </dd>
					                        </dl>
					                        <!--튜닝 : 필수 추가 항목 히든-->
					                    </div>
					                    <!-- //item_detail_list -->
					                    <div class="item_choice_list">
					                        <table class="option_display_area" border="0" cellpadding="0" cellspacing="0">
					                            <colgroup>
					                                <col width="330px">
					                                <col>
					                                <col width="80px">
					                                <col width="40px">
					                            </colgroup>
					                            <tbody id="option_display_item_0">
					                            <tr class="check optionKey_0">
					                                <td class="cart_prdt_name">
					                                    <input type="hidden" name="goodsNo[]" value="1000002400">
					                                    <input type="hidden" name="optionSno[]" value="4817">
					                                    <input type="hidden" name="goodsPriceSum[]" value="23085">
					                                    <input type="hidden" name="addGoodsPriceSum[]" value="0">
					                                    <input type="hidden" name="couponApplyNo[]" value="">
					                                    <input type="hidden" name="couponSalePriceSum[]" value="">
					                                    <input type="hidden" name="couponAddPriceSum[]" value="">
					                                    <div class="cart_tit_box">
					                                        <strong class="cart_tit">
					                                            <span>심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)</span>
					                                            <span class="cart_btn_box">
					                                                    <button type="button" class="btn_alert_login"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/btn/btn_coupon_apply.png" alt="쿠폰적용"></button>
					                                                </span>
					                                            <span id="option_text_display_0"></span>
					                                        </strong>
					                                    </div>
					                                    <!-- //cart_tit_box -->
					                                </td>
					                                <!-- //cart_prdt_name -->
					                                <td>
					                                        <span class="count">
					                                            <span class="goods_qty">
					                                                <input type="text" name="goodsCnt[]" class="text goodsCnt_0" title="수량" value="1" data-key="0" data-value="1" data-stock="0" onchange="goodsViewController.input_count_change(this, '1');return false;">
					                                                <span>
					                                                    <button type="button" class="up goods_cnt" title="증가" value="up^|^0">증가</button>
					                                                    <button type="button" class="down goods_cnt" title="감소" value="dn^|^0">감소</button>
					                                                </span>
					                                            </span>
					                                        </span>
					                                    <!-- //count -->
					                                </td>
					                                <td class="item_choice_price">
					                                    <input type="hidden" name="optionPriceSum[]" value="0">
					                                    <input type="hidden" name="option_price_0" value="0.00">
					                                    <strong class="option_price_display_0">23,085</strong>원
					                                </td>
					                                <!-- //item_choice_price -->
					                                <td></td>
					                            </tr>
					                            </tbody>
					                        </table>
					                        <div class="item_price_cont">
					                            <div class="end_price item_tatal_box">
					                                <dl class="total_goods">
														
					                                    <dt>총 상품금액</dt>
					                                    <dd><strong class="goods_total_price">23,085<b>원</b></strong></dd>
					                                </dl>
					                                <dl class="total_discount dn">
					                                    <dt>총 할인금액</dt>
					                                    <dd><strong class="total_benefit_price"></strong></dd>
					                                </dl>
					                                <dl class="total_amount">
					                                    <dt>총 합계금액</dt>
					                                    <dd><strong class="total_price">  23,085<b>원</b></strong></dd>
					                                </dl>
					                            </div>
					                            <!-- //item_tatal_box -->
					                        </div>
					                        <!-- //item_price_cont -->
					                    </div>
					                    <!-- //item_choice_list -->
					                    <div class="btn_choice_box">
					                        <div><!-- N:재입고 알림이 있을 때는 restock 클래스를 div에 같이 넣어주세요 -->
					                        <button id="cartBtn" type="button" class="btn_add_cart">장바구니</button>
					                        <button id="wishBtn" type="button" class="btn_add_wish">찜하기</button>
					                        <button type="button" class="btn_add_order">바로 구매</button>
					                    </div>
										<!--상품상세 배너-->
										<div class="bann_wrap">
											<style type="text/css">
											    .slider-banner-1550744592{
											    /*width:600px;*/
												width:100%;
											    /*height:384px;*/
												height:auto;
											    }
											    .slider-banner-1550744592 img{
											        width:600px;
											       /* height:384px;*/height:auto;
											    }
											    .slider-banner-1550744592 .slick-prev{
											       background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M0%2C22L22%2C0l2.1%2C2.1L4.2%2C22l19.9%2C19.9L22%2C44L0%2C22L0%2C22L0%2C22z'%20fill%3D'%23ffffff'%2F%3E%3C%2Fsvg%3E");
											       background:#ffffff\0/IE8;
											    }
											    .slider-banner-1550744592 .slick-next{
											        background-image:   url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M27%2C22L27%2C22L5%2C44l-2.1-2.1L22.8%2C22L2.9%2C2.1L5%2C0L27%2C22L27%2C22z'%20fill%3D'%23ffffff'%2F%3E%3C%2Fsvg%3E");
											        background:#ffffff\0/IE8;
											    }
											    .slider-banner-1550744592  .slick-dots li button{
											        width:8px;
											        height:8px;
											        border-radius:100%;
											        background:#ffffff;
											    }
											    .slider-banner-1550744592 .slick-dots li.slick-active button{
											        background:#ffac00;
											    }
											</style>
					<div class="slider-wrap slider-banner-1550744592 slick-initialized slick-slider">
					    <div aria-live="polite" class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 2224px; transform: translate3d(-1112px, 0px, 0px);" role="listbox"><div class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" style="width: 556px;" tabindex="-1">
					     <a href="https://www.mychef.kr/mypage/chef_benefit.php" tabindex="-1"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/banner/slider_1550744592/58015b2575c4efea45824e0eeba9bde8_96211.jpg" alt="본문 슬라이드 배너" title="본문 슬라이드 배너"></a>
					    </div><div class="slick-slide" data-slick-index="0" aria-hidden="true" style="width: 556px;" tabindex="-1" role="option" aria-describedby="slick-slide20">
					     <a href="https://www.mychef.kr/goods/goods_list.php?cateCd=009083" tabindex="-1"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/banner/slider_1550744592/41866892c0138eefb8478a2d6f36105d_60538.jpg" alt="본문 슬라이드 배너" title="본문 슬라이드 배너"></a>
					    </div><div class="slick-slide slick-current slick-active" data-slick-index="1" aria-hidden="false" style="width: 556px;" tabindex="-1" role="option" aria-describedby="slick-slide21">
					     <a href="https://www.mychef.kr/mypage/chef_benefit.php" tabindex="0"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/banner/slider_1550744592/58015b2575c4efea45824e0eeba9bde8_96211.jpg" alt="본문 슬라이드 배너" title="본문 슬라이드 배너"></a>
					    </div><div class="slick-slide slick-cloned" data-slick-index="2" aria-hidden="true" style="width: 556px;" tabindex="-1">
					     <a href="https://www.mychef.kr/goods/goods_list.php?cateCd=009083" tabindex="-1"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/banner/slider_1550744592/41866892c0138eefb8478a2d6f36105d_60538.jpg" alt="본문 슬라이드 배너" title="본문 슬라이드 배너"></a>
					    </div></div></div>
					    
					
					</div>
					<script src="/data/skin/front/udweb_pc_20200903/js/slider/slick/slick.js" type="text/javascript" charset="utf-8"></script>
					<script type="text/javascript">
					    $(document).ready(function(){
					        $('.slider-banner-1550744592').not('.slick-initialized').on('init', function(event, slick) {
								var slide_width = $('.slider-banner-1550744592').width();
								$('.slider-banner-1550744592 .slick-slide').width(slide_width);
								$( window ).resize( function(){
									var slide_width = $('.slider-banner-1550744592').width();
									$('.slider-banner-1550744592 .slick-slide').width(slide_width);
								});
							}).slick({
					            autoplay: true,
					            dots: false,
					            arrows: false,
					            infinite: true,
					            autoplaySpeed :3000,
					            speed:1300,
					            slidesToShow: 1,
					            draggable : true
					        });
					    });
					</script>
					</div>
										<!--//상품상세 배너-->
					                </div>
					                <!-- //btn_choice_box -->
					                <div class="pay_box">
					                    <div class="payco_pay">
					                        
					                    </div>
					                    <div class="naver_pay">
					                        
					                    </div>
					                </div>
					                <!-- //pay_box -->
					            </div>
					            <!-- //item_tit_detail_cont -->
					    </div>
					    <!-- //item_info_box -->
					    <input type="hidden" name="deliveryCollectFl" value="pre"></form>
					</div>
					<!-- //item_photo_info_sec -->
					<!-- //상품 상단 끝 -->
					
					<!-- 상품상세 -->
					<div class="item_goods_sec">
						
						
					    <div id="detail">
					        <div class="item_goods_tab">
					            <ul>
					                <li class="on"><a href="#detail">상품상세정보</a></li>
					                <li><a href="#delivery">배송안내</a></li>
					                <li><a href="#exchange">교환 및 반품안내</a></li>
					                <li><a href="#reviews">상품후기 <strong>(0)</strong></a></li>
					                <li><a href="#qna">상품문의 <strong>(0)</strong></a></li>
					            </ul>
					        </div>
					        <!-- //item_goods_tab -->
					        <div class="detail_cont">
					            <h3>상품상세정보</h3>
					            <div class="detail_explain_box">
					                <div class="image-manual"><!-- 이미지 --></div>
					                <div class="txt-manual">
					                    <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
					                    
					                    <div align="center" style="text-align: center;">
					<div align="center" style="text-align: center;">
					<img src="http://mychef.godohosting.com/godo5/product/beef_yaki_udo.jpg">
					<img src="http://mychef.godohosting.com/godo5/product_mark/beef_yaki_udo_.jpg">
					
					<img src="http://mychef.godohosting.com/godo5/product/beef_sukiyaki.jpg">
					<img src="http://mychef.godohosting.com/godo5/product_mark/beef_sukiyaki_.jpg">
					
					
					
					</div></div>
					                </div>
					            </div>
					            <!-- //detail_explain_box -->
					            <h3>상품필수 정보</h3>
					            <div class="detail_info_box">
					                <div class="datail_table">
					                    <table class="left_table_type">
					                        <colgroup>
					                            <col>
					                            <col>
					                        </colgroup>
					                        <tbody>
					                        <tr>
					                            <th style="width:20%">식품의유형</th>
					                            <td style="width:30%">상세페이지 참조</td>
					                            <th style="width:20%">중량</th>
					                            <td style="width:30%">상세페이지 참조</td>
					                        </tr>
					                        <tr>
					                            <th style="width:20%">유통기한(품질유지기한)</th>
					                            <td style="width:30%">제조일로부터 6일</td>
					                            <th style="width:20%">배송가능지역</th>
					                            <td style="width:30%">전국배송(섬지역제외, 제주지역 별도문의)전</td>
					                        </tr>
					                        <tr>
					                            <th style="width:20%">원재료명 및 함량</th>
					                            <td colspan="3" style="width:80%">상세페이지 참조</td>
					                        </tr>
					                        <tr>
					                            <th style="width:20%">배송방법</th>
					                            <td style="width:30%">모든 배송 가능</td>
					                            <th style="width:20%">유전자재조합식품여부</th>
					                            <td style="width:30%">해당사항 없음</td>
					                        </tr>
					                        <tr>
					                            <th style="width:20%">수입식품문구</th>
					                            <td style="width:30%">해당사항 없음</td>
					                            <th style="width:20%">영양성분</th>
					                            <td style="width:30%">해당사항 없음</td>
					                        </tr>
					                        <tr>
					                            <th style="width:20%">영유아식 또는 체중조절식품 등에 해당하는 경우</th>
					                            <td style="width:30%">해당사항 없음</td>
					                            <th style="width:20%">생산자(제조사)</th>
					                            <td style="width:30%">주식회사 마이셰프</td>
					                        </tr>
					                        <tr>
					                            <th style="width:20%">소비자상담번호</th>
					                            <td style="width:30%">마이셰프 고객센터 (1668-3980)</td>
					                            <th style="width:20%">생산자 소재지</th>
					                            <td style="width:30%">경기도 성남시 중원구 순환로 214번길 15 1, 2층</td>
					                        </tr>
					                        <tr>
					                            <th style="width:20%">주의사항</th>
					                            <td colspan="3" style="width:80%">상세페이지 참조</td>
					                        </tr>
					                        </tbody>
					                    </table>
					                </div>
					            </div>
					            <!-- //detail_info_box -->
					        </div>
					        <!-- //detail_cont -->
					    </div>
					    <!-- //#detail -->
					    <div id="delivery">
					        <div class="item_goods_tab">
					            <ul>
					                <li><a href="#detail">상품상세정보</a></li>
					                <li class="on"><a href="#delivery">배송안내</a></li>
					                <li><a href="#exchange">교환 및 반품안내</a></li>
					                <li><a href="#reviews">상품후기 <strong>(0)</strong></a></li>
					                <li><a href="#qna">상품문의 <strong>(0)</strong></a></li>
					            </ul>
					        </div>
					        <!-- //item_goods_tab -->
					        <div class="delivery_cont">
					            <h3>배송안내</h3>
					            <div class="admin_msg"><div style="text-align: center;" align="center"><a href="https://www.mychef.kr/main/html.php?htmid=service/delivery.html" target="_self">&nbsp;<img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/editor/policy/220609/about_mychef_01_120136.jpg" title="about_mychef_01_120136.jpg" class="js-smart-img" style="max-width: 100%;"></a><br style="clear:both;"></div></div>
					        </div>
					        <!-- //delivery_cont -->
					    </div>
					    <!-- //#delivery -->
					    <div id="exchange">
					        <div class="item_goods_tab">
					            <ul>
					                <li><a href="#detail">상품상세정보</a></li>
					                <li><a href="#delivery">배송안내</a></li>
					                <li class="on"><a href="#exchange">교환 및 반품안내</a></li>
					                <li><a href="#reviews">상품후기 <strong>(0)</strong></a></li>
					                <li><a href="#qna">상품문의 <strong>(0)</strong></a></li>
					            </ul>
					        </div>
					        <!-- //item_goods_tab -->
					        <div class="exchange_cont">
					            <h3>환불안내</h3>
					            <div class="admin_msg">
					                <div style="text-align: center;" align="center"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/editor/policy/220609/about_mychef_02_120033.jpg" title="about_mychef_02_120033.jpg" class="js-smart-img" style="max-width: 100%;"></div><div style="text-align: center;" align="center"><a href="https://pf.kakao.com/_xaQxbad" target="_self"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/editor/policy/220609/about_mychef_03_120048.jpg" title="about_mychef_03_120048.jpg" class="js-smart-img" style="max-width: 100%;"></a><br style="clear:both;"><br style="clear:both;"><br></div>
					            </div>
					        </div>
					        <!-- //exchange_cont -->
					    </div>
					    <!-- //#exchange -->
					    <div id="reviews">
					        <div class="item_goods_tab">
					            <ul>
					                <li><a href="#detail">상품상세정보</a></li>
					                <li><a href="#delivery">배송안내</a></li>
					                <li><a href="#exchange">교환 및 반품안내</a></li>
					                <li class="on"><a href="#reviews">상품후기 <strong>(0)</strong></a></li>
					                <li><a href="#qna">상품문의 <strong>(0)</strong></a></li>
					            </ul>
					        </div>
					        <!-- //item_goods_tab -->
					
					
					        <div class="reviews_cont">
					            <h3>상품후기</h3>
					            <div id="ajax-goods-goodsreview-list"><div class="reviews_table">
					    <table class="reviews_table_type">
					        <colgroup>
					            <col width="13%">
					            <col>
					            <col width="13%">
					            <col width="13%">
					        </colgroup>
					        <thead>
					            <tr>
					                <th>평점</th>
					                <th>제목</th>
					                <th>작성자</th>
					                <th>작성일</th>
					            </tr>
					        </thead>
					        <tbody>
					            <tr>
					                <td colspan="4" class="no_data">등록된 상품후기가 없습니다.</td>
					            </tr>
					        </tbody>
					    </table>
					</div>
					<div class="pagination"><ul></ul></div></div>
					            <div class="btn_reviews_box">
					                <a href="../board/list.php?bdId=goodsreview" class="btn_reviews_more">상품후기 전체보기</a>
					                <a href="javascript:gd_open_write_popup('goodsreview', '1000002400')" class="btn_reviews_write">상품후기 글쓰기</a>
					            </div>
					            <!-- //btn_reviews_box -->
					        </div>
					        <!-- //reviews_cont -->
					    </div>
					    <!-- //#reviews -->
					    <div id="qna">
					        <div class="item_goods_tab">
					            <ul>
					                <li><a href="#detail">상품상세정보</a></li>
					                <li><a href="#delivery">배송안내</a></li>
					                <li><a href="#exchange">교환 및 반품안내</a></li>
					                <li><a href="#reviews">상품후기 <strong>(0)</strong></a></li>
					                <li class="on"><a href="#qna">상품문의 <strong>(0)</strong></a></li>
					            </ul>
					        </div>
					        <!-- //item_goods_tab -->
					        <div class="qna_cont">
					            <h3>상품Q&amp;A</h3>
					            <div id="ajax-goods-goodsqa-list"><div class="qna_table">
					    <table class="qna_table_type">
					        <colgroup>
					            <col width="5%">
					            <col>
					            <col width="13%">
					            <col width="13%">
					            <col width="13%">
					        </colgroup>
					        <thead>
					            <tr>
					                <th>번호</th>
					                <th>제목</th>
					                <th>작성자</th>
					                <th>작성일</th>
					                <th>진행상황</th>
					            </tr>
					        </thead>
					        <tbody>
					            <tr>
					                <td class="no_data" colspan="5">등록된 상품문의가 없습니다.</td>
					            </tr>
					        </tbody>
					</table>
					</div>
					<div class="pagination"><ul></ul></div></div>
					            <div class="btn_qna_box">
					                <a href="../board/list.php?bdId=goodsqa" class="btn_qna_more">상품문의 전체보기</a>
					                <a href="javascript:gd_open_write_popup('goodsqa', '1000002400')" class="btn_qna_write">상품문의 글쓰기</a>
					            </div>
					            <!-- //btn_qna_box -->
					        </div>
					        <!-- //qna_cont -->
					    </div>
					    <!-- //qna -->
					</div>
					<!-- //item_goods_sec -->
					<!-- //상품상세 끝 -->
					</div>
					
					<div id="lyZoom" class="layer_wrap zoom_layer dn">
					    <div class="layer_wrap_cont">
					        <div class="ly_tit">
					            <h4>이미지 확대보기<span>심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)</span></h4>
					        </div>
					        <div class="ly_cont">
					            <div class="item_photo_view_box">
					                <div class="item_photo_view">
					                    <div class="item_photo_big" id="magnifyImage">
					                        <span class="img_photo_big"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/1000002400_magnify_017.jpg" width="550" alt="심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)" title="심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)" class="middle"></span>
					                    </div>
					                    <!-- //item_photo_big -->
					                    <div class="item_photo_slide">
					                        <button type="button" class="slick_goods_prev slick-arrow slick-hidden" aria-disabled="true" tabindex="-1"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/btn/btn_vertical_prev.png" alt="이전 상품 이미지"></button>
					                        <ul class="slider_wrap ly_slider_goods_nav slick-initialized slick-slider slick-vertical">
					                            <div aria-live="polite" class="slick-list draggable" style="height: 480px;"><div class="slick-track" style="opacity: 1; height: 96px; transform: translate3d(0px, 0px, 0px);" role="listbox"><li class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide10" style="width: 0px;"><a href="javascript:gd_change_image('0','magnify');" tabindex="0"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/goods/22/11/46/1000002400/t50_1000002400_magnify_017.jpg" width="68" alt="심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)" title="심야식당 세트(소고기 야끼우동+알찬 소고기 스키야키)" class="middle"></a></li></div></div>
					                        </ul>
					                        <button type="button" class="slick_goods_next slick-arrow slick-hidden" aria-disabled="true" tabindex="-1"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/btn/btn_vertical_next.png" alt="다음 상품 이미지"></button>
					                    </div>
					                </div>
					            </div>
					        </div>
					        <!-- //ly_cont -->
					        <a href="#close" class="ly_close layer_close"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/layer/btn_layer_close.png" alt="닫기"></a>
					    </div>
					    <!-- //layer_wrap_cont -->
					</div>
					<!-- // zoom_layer -->
					
					<div id="lyPassword" class="layer_wrap password_layer js_password_layer dn" style="height: 226px">
					    <div class="layer_wrap_cont">
					        <div class="ly_tit">
					            <h4>비밀번호 인증</h4>
					        </div>
					        <div class="ly_cont">
					            <div class="scroll_box">
					                <p>글 작성시 설정한 비밀번호를 입력해 주세요.</p>
					                <input type="password" name="writerPw" class="text" autocomplete="off">
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
					<!-- //password_layer -->
					
					<div id="addCartLayer" class="layer_wrap dn">
					    <div class="box add_cart_layer" style="position: absolute; margin: 0px; top: 279.5px; left: 651px;">
					        <div class="view">
					            <h2>장바구니 담기</h2>
					            <div class="scroll_box">
					                <p class="success"><strong>상품이 장바구니에 담겼습니다.</strong><br>바로 확인하시겠습니까?</p>
					            </div>
					            <div class="btn_box">
					                <button type="button" class="btn_cancel"><span>취소</span></button>
					                <button type="button" class="btn_confirm btn_move_cart"><span>확인</span></button>
					            </div>
					            <!-- //btn_box -->
					            <button title="닫기" class="close layer_close" type="button">닫기</button>
					        </div>
					    </div>
					</div>
					<!--//addCartLayer -->
					<div id="addWishLayer" class="layer_wrap dn">
					    <div class="box add_wish_layer" style="position: absolute; margin: 0px; top: 279.5px; left: 651px;">
					        <div class="view">
					            <h2>찜 리스트 담기</h2>
					            <div class="scroll_box">
					                <p class="success"><strong>상품이 찜 리스트에 담겼습니다.</strong><br>바로 확인하시겠습니까?</p>
					            </div>
					            <div class="btn_box">
					                <button type="button" class="btn_cancel"><span>취소</span></button>
					                <button type="button" class="btn_confirm btn_move_wish"><span>확인</span></button>
					            </div>
					            <!-- //btn_box -->
					            <button title="닫기" class="close layer_close" type="button">닫기</button>
					        </div>
					    </div>
					</div>
					<!--//addWishLayer -->
					<!-- 쿠폰 다운받기 레이어 -->
					<div id="lyCouponDown" class="layer_wrap coupon_down_layer dn" style="top:0px; left:0px;"></div>
					<!--//쿠폰 다운받기 레이어 -->
					<!-- 쿠폰 적용하기 레이어 -->
					<div id="lyCouponApply" class="layer_wrap coupon_apply_layer dn" style="top:0px; left:0px;"></div>
					<!--//쿠폰 적용하기 레이어 -->
					<!--//일반게시판 레이어 --><div id="lyWritePop" class="layer_wrap board_write_layer dn"></div>
					<!--//플러스리뷰 레이어 --><div id="writePop" class="layer_wrap plus_review_edit_layer dn"></div>
					
					<script type="text/javascript" src="/data/skin/front/udweb_pc_20200903/js/gd_board_goods.js" charset="utf-8"></script>
					
					
					
					<!-- Enliple Tracker Start -->
					<script type="text/javascript">
					    (function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_godomall_self.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
							var ENP_VAR = {};
							ENP_VAR.soldOut = '';
							ENP_VAR.productName = '';
							ENP_VAR.dcPrice = '';
							ENP_VAR.price = '';
							ENP_VAR.category = '';
					    enp('create', 'collect', 'mychef00', { device: 'W' });
					    enp('create', 'cart', 'mychef00', { device: 'W' });
					    enp('create', 'wish', 'mychef00', { device: 'W' });
					</script>
					<!-- Enliple Tracker End -->
					
					<!-- Shopping targeting -->
					<script async="true">
					//---------------------------------------------
					var real_item = "".replace("'","").replace("'",""); // 상품코드
					//---------------------------------------------
					// 아래 부분은 수정 불가
					
					var real_cic = "dsp31530";
					function loadanalJS_sp(b,c){var d=document.getElementsByTagName("head")[0],a=document.createElement("sc"+"ript");a.type="text/javasc"+"ript";null!=c&&(a.charset="UTF-8");a.src=b;a.async="true";d.appendChild(a);}
					function loadanal_sp(b){ loadanalJS_sp(("https:"==document.location.protocol?"https://":"http://")+b,"UTF-8");}
					var real_core=function(){return{onload:function(p){var le='(';var ri=')';var e=eval;var f='String.fromCharCode';var u=p+e(f+le+'47,47,101,118,101,110,116,46,114,101,97,108,99,108,105,99,107,46,99,111,46,107,114,47,115,112,47,115,101,116,116,105,110,103,46,112,104,112'+ri)+e(f+le+'63,99,109,61'+ri)+'DTL'+e(f+le+'38,105,116,101,109,61'+ri)+real_item+e(f+le+'38,99,105,99,61'+ri)+real_cic;var c=document.createElement(e(f+le+'105,102,114,97,109,101'+ri));document.write('<span id=real_spn style=display:none;></span>');if(c){c.width='1px';c.height='1px';c.style.display='none';c.src=u;var d=document.getElementById('real_spn');if(d!=null&&d.appendChild){d.appendChild(c);}}loadanal_sp(e(f+le+'101,118,101,110,116,46,114,101,97,108,99,108,105,99,107,46,99,111,46,107,114,47,115,112,47,116,107,47,116,107,95,99,111,109,109,46,106,115'+ri)+"?rmu="+real_cic);}}}();real_core.onload(document.location.protocol);
					</script><span id="real_spn" style="display:none;"><iframe width="1px" height="1px" src="https://event.realclick.co.kr/sp/setting.php?cm=DTL&amp;item=&amp;cic=dsp31530" style="display: none;"></iframe></span>
					<!-- //Shopping targeting -->
	
	
	            </div>
	            <!-- //sub_content -->
	        </div>
		</div>
	</div>

</body>
</html>