<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 1:1</title>
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

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

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
<body>

    <div id="container">
        <div id="contents">
        <!-- 본문 시작 -->

            <div class="location_wrap">
                <div class="location_cont">
                    <em><a href="#" class="local_home">HOME</a> &gt; 마이페이지 &gt; 배송지 관리</em>
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
    <div class="mypage_main">

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

        <div class="mypage_shipping js_delivery_layer">
            <div class="mypage_zone_tit">
                <h3>배송지 관리</h3>
				<span class="pick_list_num">배송지 관리 내역 총 <strong>0</strong>건</span>
            </div>

            <div class="mypage_shipping_cont">
                <div class="mypage_table_type">
                    
                    <table>
                        <colgroup>
                            <col style="width:12%"> <!-- 배송지이름 -->
                            <col style="width:12%">	<!-- 받으실 분 -->
                            <col>					<!-- 주소 -->
                            <col style="width:20%"> <!-- 연락처 -->
                            <col style="width:12%"> <!-- 수정/삭제 -->
                        </colgroup>
                        <thead>
                        <tr>
                            <th>배송지이름</th>
                            <th>받으실 분</th>
                            <th>주소</th>
                            <th>연락처</th>
                            <th>수정/삭제</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td colspan="5"><p class="no_data">배송지 목록이 없습니다.</p></td>
                        </tr>
                        </tbody>
                    </table>

                </div>
                <a href="#lyDeliveryAdd" class="btn_add_shipping btn_open_layer">+ 새 배송지 추가</a>
                
            </div>
            <!-- //mypage_shipping_cont  -->
            <div class="pagination"><ul></ul></div>
        </div>
        <!-- //mypage_shipping-->

    </div>
    <!-- //mypage_main -->

</div>
<!-- //content -->

<!-- 새 배송지 추가 레이어 -->
<div id="lyDeliveryAdd" class="layer_wrap delivery_add_layer" style="display:none;">
<div class="layer_wrap_cont" style="position: absolute; margin: 0px; top: 133px; left: 138.5px;">
    <form name="frmDeliveryAddressRegist" id="frmDeliveryAddressRegist" action="../order/layer_shipping_ps.php" method="post" novalidate="novalidate">
        <input type="hidden" name="mode" value="shipping_regist">
        <input type="hidden" name="sno" value="">
        <input type="hidden" name="shippingNo" value="">
        <div class="ly_tit">
            <h4>나의 배송지 관리</h4>
        </div>
        <div class="ly_cont">
            <div class="scroll_box">
                <h5>배송지 등록</h5>
                <div class="left_table_type">
                    <table>
                        <colgroup>
                            <col style="width:20%;">
                            <col style="width:80%;">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="row"><span class="important">배송지 이름</span></th>
                            <td><input type="text" name="shippingTitle" value=""></td>
                        </tr>
                        <tr>
                            <th scope="row"><span class="important">받으실 분</span></th>
                            <td><input type="text" name="shippingName" maxlength="20" value=""></td>
                        </tr>
                        <tr>
                            <th scope="row"><span class="important">받으실 곳</span></th>
                            <td class="member_address">
                                <div class="address_postcode">
                                    <input type="text" name="shippingZonecode" value="" readonly="readonly"> <button type="button" onclick="execution_daum_address()" class="btn_post_search">우편번호검색</button>
                                    <input type="hidden" name="shippingZipcode" value="">
                                </div>
                                <div class="address_input">
                                    <input type="text" name="shippingAddress" value="" readonly="readonly">
                                    <input type="text" name="shippingAddressSub" value="">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">전화번호</th>
                            <td>
                                <input type="text" id="shippingPhone" name="shippingPhone" value="">
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><span class="important">휴대폰번호</span></th>
                            <td>
                                <input type="text" id="shippingMobile" name="shippingCellPhone" value="">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="form_element">
                    <input type="checkbox" id="defaultFl" name="defaultFl" value="y" class="checkbox" checked="checked" readonly="readonly">
                    <label for="defaultFl" class="check_s on"><b>기본 배송지로 설정 합니다.</b></label>
                </div>
            </div>
            <!-- //scroll_box -->
            <div class="btn_center_box">
                <button type="button" class="btn_ly_cancel layer_close"><strong>취소</strong></button>
                <button type="submit" class="btn_ly_save"><strong>저장</strong></button>
            </div>
        </div>
        <!-- //ly_cont -->
        <a href="#close" class="ly_close layer_close"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/layer/btn_layer_close.png" alt="닫기"></a>
    </form>
</div>
<!-- //layer_wrap_cont -->
 <!--  <script type="text/javascript"> 
        var bDisplay = true; 
        function doDisplay(){    
            var con = document.getElementById("lyDeliveryAdd");    
            if(con.style.display=='none'){       
                con.style.display = 'block';    
            }else{       
                con.style.display = 'none';    
            } 
        } 
    </script>  -->

<script type="text/javascript" src="/data/skin/front/udweb_pc_20200903/js/jquery/jquery.serialize.object.js"></script>
<script type="text/javascript">
    $(function(){
        // 우편번호 체크를 위한 알파벳+숫자+띄어쓰기 체크
        $.validator.addMethod( "alphanumeric", function( value, element ) {
            return this.optional( element ) || /^[a-zA-Z0-9\s]+$/i.test( value );
        }, __("알파벳과 숫자로만 구성되어야 합니다.") );

        // 폼체크
        $('#frmDeliveryAddressRegist').validate({
            submitHandler: function(form) {
                var currentPage = $('.js_delivery_layer .pagination > li.active').text();
                var params = $(form).serializeObject();
                $.post(form.action, params, function(data){
                    if(data.code == 200) {
                        if (_.isFunction(goPageOnDeliveryAddress)) {
                            goPageOnDeliveryAddress('page=' + currentPage + '&shippingNo=');

                            // 기본배송지로 설정시 주문서 페이지의 기본배송지 데이터 재설정
                            if ($('#defaultFl').prop('checked') === true) {
                                var obj = $('#frmDeliveryAddressRegist');
                                var params = {
                                    shippingName: obj.find('input[name=shippingName]:eq(0)').val(),
                                    shippingZonecode: obj.find('input[name=shippingZonecode]:eq(0)').val(),
                                    shippingZipcode: obj.find('input[name=shippingZipcode]:eq(0)').val(),
                                    shippingAddress: obj.find('input[name=shippingAddress]:eq(0)').val(),
                                    shippingAddressSub: obj.find('input[name=shippingAddressSub]:eq(0)').val(),
                                    shippingPhone: obj.find('input[name=shippingPhone]:eq(0)').val(),
                                    shippingCellPhone: obj.find('input[name=shippingCellPhone]:eq(0)').val(),
                                };

                                // 기본배송지 체크 여부
                                if ($('input[name=shipping]:radio').eq(0).prop('checked') === true) {
                                    gd_set_delivery_shipping_address(params);
                                    if (!_.isEmpty(defaultShippingAddress)) {
                                        defaultShippingAddress = params;
                                    }
                                } else {
                                    gd_set_default_shipping_address(params);
                                }
                            }
                        } else {
                            alert(data.message);
                            location.reload();
                        }
                    } else {
                        alert(data.message);
                        $('.delivery_add_layer .close').trigger('click');
                    }
                });
                return false;
            },
            rules: {
                shippingTitle: 'required',
                shippingName: 'required',
                shippingZipcode: 'required',
                shippingAddress: 'required',
                shippingAddressSub: 'required',
                shippingPhone: {
                    maxlength: 14,
                },
                shippingCellPhone:  {
                    required: true,
                    maxlength: 14,
                },
            },
            messages: {
                shippingTitle: "배송지 이름을 입력하세요",
                shippingName: "받으실 분 이름을 입력하세요",
                shippingZipcode: "우편번호를 입력하세요",
                shippingAddress: "주소를 입력하세요",
                shippingAddressSub: "주소를 입력하세요",
                shippingPhone: {
                    maxlength: "전화번호는 14자리 이상 입력하실 수 없습니다."
                },
                shippingCellPhone: {
                    required: "휴대폰번호를 입력하세요",
                    maxlength: "휴대폰번호는 14자리 이상 입력하실 수 없습니다."
                }
            }
        });

        // 국가 선택
        $('select[name=shippingCountryCode]').change(function(e){
            $('select[name=shippingPhonePrefixCode]').val($('select[name=shippingCountryCode]').val()).trigger('chosen:updated');
            $('select[name=shippingCellPhonePrefixCode]').val($('select[name=shippingCountryCode]').val()).trigger('chosen:updated');
        });
    });
</script></div>
<!--//새 배송지 추가 레이어 -->

<script type="text/javascript">
    // DOM 로드
    $(function(){
        // 등록/수정 레이어 바인딩
        $('.btn_add_shipping.btn_open_layer, .js_delivery_layer .btn_open_layer').bind('click', function(e){
            var target = $(this).attr('href');
            if (target == '#lyDeliveryAdd') {
                // 배송지 등록/수정 모드에 따른 파라미터 설정
                var param = !_.isUndefined($(this).data('sno')) && $(this).data('sno') > 0 ? '?sno=' + $(this).data('sno') : '';

                // AJAX 호출
                $(target).empty();
                $.get('../order/layer_shipping_address_regist.php' + param, function(data){
                    $(target).append(data);
                    $(target).find('>div').center();
                });
            }
        });

        // 배송지 클릭
        $('.js_shipping_address').click(function(e){
            gd_insert_shipping_address($(this).closest('tr'));
            $('.js_delivery_layer .close').trigger('click');
            return false;
        });

        // 삭제하기
        $('.js_delete').click(function(e){
            if ($(this).data('default-fl') == 'y') {
                alert(__('기본 배송지는 삭제할 수 없습니다. 변경 후 삭제해주세요.'));
            } else {
                if (confirm("나의 배송지 [" + $(this).closest('tr').data('shipping-name') + "]을(를) 정말로 삭제하시겠습니까?")) {
                    var currentPage = $('.delivery-layer .pagination > li.active').text();
                    var params = {
                        sno: $(this).data('sno'),
                        mode: 'shipping_delete'
                    };
                    $.post('../order/layer_shipping_ps.php', params, function(data){
                        if(data.code == 200) {
                            goPageOnDeliveryAddress('page=' + currentPage);
                        } else {
                            alert(data.message);
                            $('.delivery_add_layer .close').trigger('click');
                        }
                    });
                    return false;
                }
            }
        });
    });

    // 배송지관리 이벤트
    function goPageOnDeliveryAddress(page) {
        top.location.reload(true);
//        $.get('../order/layer_shipping_address.php?' + page, function(data){
//            $('#myShippingListLayer').empty().append(data);
//            $('#myShippingListLayer').find('>div').center();
//        });
    }

    // 배송지 클릭
    function gd_insert_shipping_address(obj)
    {
        var params = {
            shippingName: obj.find('input[name=shippingName]:eq(0)').val(),
            shippingZonecode: obj.find('input[name=shippingZonecode]:eq(0)').val(),
            shippingZipcode: obj.find('input[name=shippingZipcode]:eq(0)').val(),
            shippingAddress: obj.find('input[name=shippingAddress]:eq(0)').val(),
            shippingAddressSub: obj.find('input[name=shippingAddressSub]:eq(0)').val(),
            shippingPhone: obj.find('input[name=shippingPhone]:eq(0)').val(),
            shippingCellPhone: obj.find('input[name=shippingCellPhone]:eq(0)').val(),
        };
        set_delivery_shipping_address(params);
    }
    
    
    function execution_daum_address(){
    	
    	  new daum.Postcode({
    	        oncomplete: function(data) {
    	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
    	            
    	 
    	        }
    	    }).open();    
    	 
        
    }
  
</script>



            </div>
            <!--   //sub_content -->
        </div>
         <!-- //본문 끝 contents -->
    </div>
     <!--//container -->

<div id="layerDim" class="dn">&nbsp;</div>
<iframe name="ifrmProcess" src='/blank.php' style="display:none" width="100%" height="0" bgcolor="#000"></iframe>

  </body>