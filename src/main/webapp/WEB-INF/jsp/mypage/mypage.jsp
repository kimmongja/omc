<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지ㅇㄹ</title>
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



<body>

    <div id="container">
        <div id="contents">
        <!-- 본문 시작 -->

            <div class="location_wrap">
                <div class="location_cont">
                    <em><a href="#" class="local_home">HOME</a> &gt; 마이페이지</em>
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
        <!--// 마이페이지 회원 요약정보 -->


        <div class="mypage_order_info">
            <div class="mypage_zone_tit">
                <h3>진행 중인 주문<span>최근 30일 내에 진행중인 주문정보입니다.</span></h3>
            </div>
            <div class="mypage_order_info_cont">
                <ol>
                    <li class="">
                        <b>입금대기</b>
                        <strong>0</strong>
                    </li>
                    <li class="">
                        <b>결제완료</b>
                        <strong>0</strong>
                    </li>
                    <li class="">
                        <b>상품준비중</b>
                        <strong>0</strong>
                    </li>
                    <li class="">
                        <b>배송중</b>
                        <strong>0</strong>
                    </li>
                    <li class="">
                        <b>배송완료</b>
                        <strong>0</strong>
                    </li>
                    <li class="">
                        <b>구매확정</b>
                        <strong>0</strong>
                    </li>
                </ol>
                <div class="order_case_list">
                    <ul>
                        <li>
                            <b>• 취소</b>
                            <span>0건</span>
                        </li>
                        <li>
                            <b>• 교환</b>
                            <span>0건</span>
                        </li>
                        <li>
                            <b>• 반품</b>
                            <span>0건</span>
                        </li>
                    </ul>
                    
                       
                </div>
                
                
            </div>
            <!-- //mypage_order_info_cont -->
        </div>
        <!-- //mypage_order_info -->

    </div>
    <!-- //mypage_main -->

</div>
<!-- //content -->

            </div>
            <!-- //sub_content -->
        </div>
        <!-- //본문 끝 contents -->
    </div>
    <!-- //container -->
    
    
<!-- 절대! 지우지마세요 : Start -->
<div id="layerDim" class="dn">&nbsp;</div>
<iframe name="ifrmProcess" src="/blank.php" style="display:none" width="100%" height="0" bgcolor="#000"></iframe>
<!-- 절대! 지우지마세요 : End -->



</body>
</html>