<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지주문목록ㅇㄹ</title>
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
  <!--  [if gt IE 8] -->
    <script type="text/javascript" src="../js/clipboard.min.js"></script>
  <!--    [endif]-->
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

<body>
    <div id="container">
        <div id="contents">
        <!-- 본문 시작 -->

            <div class="location_wrap">
                <div class="location_cont">
                    <em><a href="#" class="local_home">HOME</a> &gt; 마이페이지 &gt; 주문목록 / 배송조회</em>
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

        <div class="mypage_lately_info">
            <div class="mypage_zone_tit">
                <h3>주문목록/배송조회</h3>
            </div>

            <div class="date_check_box">
                <form method="get" name="frmDateSearch">
                    <h3> 조회기간 </h3>
                    <div class="date_check_list" data-target-name="wDate[]">
                        <button type="button" data-value="0">오늘</button>
                        <button type="button" data-value="7" class="on">7일</button>
                        <button type="button" data-value="15">15일</button>
                        <button type="button" data-value="30">1개월</button>
                        <button type="button" data-value="90">3개월</button>
                        <button type="button" class="oneYear" data-value="365">1년</button>
                    </div>
                    <!-- //date_check_list -->
                    <div class="date_check_calendar">
                        <input type="text" id="picker2" name="wDate[]" class="anniversary js_datepicker" value="2022-11-16"> ~ <input type="text" name="wDate[]" class="anniversary js_datepicker" value="2022-11-23">
                    </div>
                    <!-- //date_check_calendar -->

                    <button type="submit" class="btn_date_check"><em>조회</em></button>
                </form>
            </div>
            <!-- //date_check_box -->

            <div class="mypage_lately_info_cont">
                <span class="pick_list_num">
                    주문목록 / 배송조회 내역 총 <strong>0</strong> 건
                </span>
                <!-- 주문상품 리스트 -->
                <div class="mypage_table_type">
    <table>
        <colgroup>
            <col style="width:15%"> <!-- 날짜/주문번호 -->
            <col>					<!-- 상품명/옵션 -->
            <col style="width:12%"> <!-- 상품금액/수량 -->
            <col style="width:12%"> <!-- hippo 220325 배송방법 -->
            <col style="width:12%"> <!-- 주문상태 -->
            <col style="width:12%"> <!-- 확인/리뷰 -->
        </colgroup>
        <thead>
        <tr>
            <th>날짜/주문번호</th>
            <th>상품명/옵션</th>
            <th>상품금액/수량</th>
            <th>주문상태</th>
            <!-- hippo 220325 배송방법 추가 -->
            <th>배송방법</th>
            <!-- //hippo 220325 배송방법 추가 -->
            <th>
                확인/리뷰
            </th>
        </tr>
        </thead>
        <tbody>

        <tr>
            <td colspan="6"><p class="no_data">조회내역이 없습니다.</p></td>
        </tr>
        </tbody>
    </table>
</div>

<!-- 사유 레이어 -->
<div id="lyReason" class="layer_wrap reason_layer dn" data-remote="../mypage/layer_order_refund_reason.php"></div>
<!--//사유 레이어 -->
<div id="lyWritePop" class="layer_wrap board_write_layer dn"></div>

<!-- 네이버페이 상세정보 레이어 -->
<div id="orderDetailReasonLayer" class="layer_wrap reason_layer dn" data-remote="../mypage/layer_order_naverpay_reason.php"></div>
<!--//네이버페이 상세정보 레이어 -->

<!-- 배송방식 상태 확인 레이어(택배제외) -->
<div id="deliveryMethodLayer" class="layer_wrap dn" data-remote="../mypage/layer_order_delivery_method.php"></div>
<!-- 배송방식 상태 확인 레이어(택배제외) -->

<!-- 구매확정 레이어 -->
<div id="orderSettleLayer" class="layer_wrap settle_layer dn" data-remote="../mypage/layer_order_settle.php"></div>
<!-- 구매확정 레이어 -->

<script type="text/javascript">
    $(function () {
        // 구매취소
        $('.js_btn_order_cancel').click(function (e) {
            if (confirm("주문취소 처리를 하시겠습니까?")) {
                var params = {
                    mode: 'cancelRegist',
                    orderNo: $(this).closest('tr').data('order-no'),
                    orderGoodsNo: $(this).closest('tr').data('order-goodsno'),
                    orderStatus: $(this).closest('tr').data('order-status')
                };

                $.post('../mypage/order_ps.php', params, function (data) {
                    alert(data.message);
                    if (data.code == 200) {
                        location.reload(true);
                    }
                });
            }
        });

        // 구매확정
        $('.js_btn_order_settle').click(function (e) {
            if (confirm("구매확정 처리를 하시겠습니까?")) {
                var params = {
                    mode: 'settleRegist',
                    orderNo: $(this).closest('tr').data('order-no'),
                    orderGoodsNo: $(this).closest('tr').data('order-goodsno')
                };

                $.post('../mypage/order_ps.php', params, function (data) {
                    alert(data.message);
                    if (data.code == 200) {
                        location.reload(true);
                    }
                });
            }
        });

        //구매확정레이어


        // 수취확인
        $('.js_btn_order_delivery').click(function (e) {
            if (confirm("수취확인 처리를 하시겠습니까?")) {
                var params = {
                    mode: 'deliveryCompleteRegist',
                    orderNo: $(this).closest('tr').data('order-no'),
                    orderGoodsNo: $(this).closest('tr').data('order-goodsno')
                };

                $.post('../mypage/order_ps.php', params, function (data) {
                    alert(data.message);
                    if (data.code == 200) {
                        location.reload(true);
                    }
                });
            }
        });

        // 배송추적
        $('.js_btn_delivery_trace').click(function (e) {
            win = gd_popup({
                url: '../share/delivery_trace.php?invoiceCompanySno=' + $(this).data('invoice-company-sno') + '&invoiceNo=' + $(this).data('invoice-no'),
                target: 'trace',
                width: 650,
                height: 660,
                resizable: 'yes',
                scrollbars: 'yes'
            });
            win.focus();
            return win;
        });

        // 레이어 오픈 바인딩
        $('.btn_open_layer').bind('click', function (e) {
            e.preventDefault();
            // 일반 레이어 호출
            if ($(this).attr('href') == '#lyReason') {
                gd_call_layer_handler($(this));

                // 리뷰쓰기 레이어 호출
            } else if ($(this).attr('href') == '#writeReviewLayer') {
                var bdId = $(this).data('id');
                var goodsNo = $(this).data('goods-no');
                var sno = $(this).data('sno');
                gd_open_write_layer(bdId, goodsNo,sno);

                //구매확정 레이어 호출
            } else if ($(this).attr('href') == '#orderSettleLayer') {
                var target = $(this).attr('href');
                var url = $(target).data('remote');
                var params = {
                    orderNo : $(this).data('order-no')
                };

                $(target).empty();
                $.post(url, params, function (data) {
                    $(target).empty().html(data);
                    $(target).find('>div').center();
                });


                // 레이어 confirm 호출
            } else if ($(this).attr('href') == '#orderDetailReasonLayer') {
                var orderGoodsNo = $(this).data('goods-no');
                var target = $(this).attr('href');
                var url = $(target).data('remote');
                var params = {
                    orderNo: $(this).closest('tr').data('order-no'),
                    orderGoodsNo : orderGoodsNo
                };

                $(target).empty();
                $.post(url, params, function (data) {
                    if (!_.isUndefined(data.code) && data.code == 0) {
                        alert(data.message);
                        gd_close_layer();
                        return false;
                    }
                    $(target).empty().html(data);
                    $(target).find('>div').center();
                });
                // 레이어 confirm 호출

            } else if($(this).attr('href') == "#deliveryMethodLayer"){
                gd_call_layer_handler($(this));
            } else if ($(this).attr('href') == '#visitAddressLayer') {
                var target = $(this).attr('href');
                var url = $(target).data('remote');
                var params = {
                    orderNo: $(this).data('order-no'),
                    goodsSno : $(this).data('goods-sno')
                };

                $(target).empty();
                $.get(url, params, function (data) {
                    if (!_.isUndefined(data.code) && data.code == 0) {
                        alert(data.message);
                        gd_close_layer();
                        return false;
                    }
                    $(target).empty().html(data);
                    $(target).find('>div').center();
                });
            } else {
                if (confirm($(this).text() + "처리를 하시겠습니까?")) {
                    gd_call_layer_handler($(this));
                } else {
                    return false;
                }
            }
        });

        function gd_call_layer_handler(obj) {
            var target = obj.attr('href');
            var url = $(target).data('remote');
            var params = {
                orderNo: obj.closest('tr').data('order-no'),
                orderGoodsNo: obj.closest('tr').data('order-goodsno'),
                orderStatus: obj.closest('tr').data('order-status'),
                userHandleSno: obj.closest('tr').data('order-userhandlesno')
            };

            $(target).empty();
            $.post(url, params, function (data) {
                if (!_.isUndefined(data.code) && data.code == 0) {
                    alert(data.message);
                    gd_close_layer();
                    return false;
                }
                $(target).empty().html(data);
                $(target).find('>div').center();
            });
        }

        // 클레임 리스트일 경우 전체선택
        if ($('.gd_checkbox_all').length) {
            $('.gd_checkbox_all').trigger('click');
        }

        // 클레임신청 수량 초과 체크
        $('input[name*="claimGoodsCnt"]').on('keyup', function(){
            var mode = $(this).data('mode');
            var orginCnt = parseInt($(this).attr('max'));
            var claimCnt = parseInt($(this).val());
            switch (mode) {
                case 'refundRegist' :
                    mode = "환불";
                    break;
                case 'backRegist' :
                    mode = "반품";
                    break;
                case 'exchangeRegist' :
                    mode = "교환";
                    break;
            }
            if (claimCnt > orginCnt || claimCnt <= 0) {
                alert(mode + '수량은 주문수량 ' + orginCnt + ' 보다 큰값 또는 0 값을 입력할 수 없습니다.');
                $(this).val(orginCnt);
            }
        });

        // 체크박스 전체 선택상태에 따른 체크박스 변경처리
        $('input:checkbox[name="orderGoodsNo[]"]').click(function () {
            var checkedCount = 0;
            var eachCheckBox = $(this).closest('table').find('tbody input[name="orderGoodsNo[]"]:checkbox');
            eachCheckBox.each(function () {
                if ($(this).prop('checked') === true) {
                    checkedCount++;
                }
            });
            if (eachCheckBox.length == checkedCount) {
                $(this).closest('table').find('thead > tr > th:nth-child(2) input[id="allCheck"]').prop('checked', true);
                $(this).closest('table').find('thead > tr > th:nth-child(2) label[for="allCheck"]').addClass('on');
            } else {
                $(this).closest('table').find('thead > tr > th:nth-child(2) input[id="allCheck"]').prop('checked', false);
                $(this).closest('table').find('thead > tr > th:nth-child(2) label[for="allCheck"]').removeClass('on');
            }
        });

    });
</script>
<script type="text/javascript" src="/data/skin/front/udweb_pc_20200903/js/gd_board_goods.js" charset="utf-8"></script>
                <!--// 주문상품 리스트 -->
            </div>
            <!-- //mypage_lately_info_cont -->
        </div>
        <!-- //mypage_lately_info -->

        <div class="pagination">
            <div class="pagination"><ul></ul></div>
        </div>
        <!-- //pagination -->

    </div>
    <!-- //mypage_cont -->

</div>
<!-- //content -->

<script type="text/javascript">
    $(function(){
        // 인풋박스 선택 이벤트
        if ($('.js_datepicker').length) {
            var today = new Date();
            var minDate = new Date();
            minDate.setDate(today.getDate() - 365);
            minDate = new Date(minDate.getFullYear(), minDate.getMonth(), minDate.getDate());

            $('.js_datepicker').datetimepicker({
                locale: 'ko',
                format: 'YYYY-MM-DD',
                dayViewHeaderFormat: 'YYYY MM',
                viewMode: 'days',
                ignoreReadonly: true,
                debug: false,
                keepOpen: false,
                maxDate: today,
                //minDate: minDate
            });

            //1년 이상 데이터 조회시 1년기간버튼 선택 이벤트
            $inputDate = $('input[name="wDate[]"]');
            var startDate = ($($inputDate[0]).val()).split('-');
            startDate = new Date(startDate[0], startDate[1], startDate[2]);

            var endDate = ($($inputDate[1]).val()).split('-');
            endDate = new Date(endDate[0], endDate[1], endDate[2]);
            var period = (endDate-startDate)/(24*3600*1000);

            if(period > 365){
                $('.date_check_list button').removeClass('on');
                $('.oneYear').addClass('on');
            }
        }

        // 기간버튼 선택 이벤트
        if ($('.date_check_list').length) {
            $('.date_check_list button').click(function (e) {
                $startDate = $endDate = '';
                $period = $(this).data('value');
                $elements = $('input[name="' + $(this).closest('.date_check_list').data('target-name') + '"]');
                $format = $($elements[0]).data('DateTimePicker').format();
                if ($period >= 0) {
                    $startDate = moment().hours(0).minutes(0).seconds(0).subtract($period, 'days').format($format);
                    $endDate = moment().hours(0).minutes(0).seconds(0).format($format);
                }
                $($elements[0]).val($startDate);
                $($elements[1]).val($endDate);
                $('.date_check_list button').removeClass('on');
                $(this).addClass('on');
            });

            // 선택된 버튼에 따른 값 초기화
            $elements = $('input[name*=\'' + $('.date_check_list').data('target-name') + '\']');
            if ($elements.length && $elements.val() != '') {
                $interval = moment($($elements[1]).val()).diff(moment($($elements[0]).val()), 'days');
                $('.date_check_list').find('button[data-value="' + $interval + '"]').trigger('click');
            } else {
                $('.date_check_list').find('button[data-value="-1"]').trigger('click');
            }
        }

        // 조회기간 검증
        $('form[name="frmDateSearch"]').submit(function(e){
            $chekcInputDate = $('input[name="wDate[]"]');
            var startDate = ($($chekcInputDate[0]).val()).split('-');
            startDate = new Date(startDate[0], startDate[1], startDate[2]);
            var endDate = ($($chekcInputDate[1]).val()).split('-');
            endDate = new Date(endDate[0], endDate[1], endDate[2]);

            if (startDate > endDate) {
                alert('종료 날짜가 시작 날짜보다 빠릅니다.\n확인 후 검색기간을 다시 선택해주세요.');
                return false;
            }
        });
    });
</script>

            </div>
            <!-- //sub_content -->
        </div>
        <!-- //본문 끝 contents -->
    </div>
    <!-- //container -->
</body>