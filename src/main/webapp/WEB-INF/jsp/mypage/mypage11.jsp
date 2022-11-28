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
                    <em><a href="#" class="local_home">HOME</a> &gt; 마이페이지 &gt; 1:1문의</em>
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

   <div class="board_zone_sec">
	<div class="board_zone_tit">
		<h2>1대1 문의</h2>
	</div>
	<div class="board_zone_cont">
		<div class="board_zone_list">
			<div class="date_check_box">
				<form name="frmSearch" method="get" action="list.php">
					<input type="hidden" name="bdId" value="qa"/>
					<input type="hidden" name="memNo" value="136262"/>
					<input type="hidden" name="noheader" value="y"/>

					<h3> 조회기간 </h3>
					<div class="date_check_list" data-target-name="rangDate[]">
						<button type="button" data-value="0">오늘</button>
						<button type="button" data-value="7">7일</button>
						<button type="button" data-value="15">15일</button>
						<button type="button" data-value="30">1개월</button>
						<button type="button" data-value="90">3개월</button>
						<button type="button" data-value="365">1년</button>
					</div>
					<!-- //date_check_list -->
					<div class="date_check_calendar">
						<input type="text" id="picker2" name="rangDate[]" class="anniversary js_datepicker" value="2022-11-19"> ~ <input type="text" name="rangDate[]" class="anniversary js_datepicker" value="2022-11-25">
					</div>
					<!-- //date_check_calendar -->

					<button type="submit" class="btn_date_check"><em>조회</em></button>
				</form>
			</div>
			<!-- //date_check_box -->


			<div class="board_list_qa" align="center">
				<table class="board_list_table" style="width:100%"">
					<colgroup>
						<col style="width:10%"> <!-- 문의날짜 -->
						<col style="width:15%"> <!-- 카테고리 -->
						<col><!-- 제목 -->
						<col style="width:10%"> <!-- 문의상태 -->

					</colgroup>
					<thead>
					<tr>
						<th>문의날짜</th>
						<th>카테고리</th>
						<th>제목</th>
						<th>문의상태</th>
					</tr>
					</thead>
					<tbody>


					<tr>
						<td colspan="5" align="center">게시글이 존재하지않습니다.</td>
					</tr>

					</tbody>
				</table>

			</div>
			<!-- //board_list_qa -->
			<div class="pagination"><ul></ul></div>
			<!-- //pagination -->
		</div>
		<!-- //board_zone_list -->

		<div class="btn_right_box">
			<button type="button" class="btn_write" onclick="/qna11.jsp"><strong>1:1 문의하기</strong></button>
		</div>

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
<script>
	$(document).ready(function () {
		$('img.js_image_load').error(function () {
					$(this).css('background', 'url("/data/skin/front/udweb_pc_20200903/board/skin/qa/img/etc/noimg.png") no-repeat center center');
					$(this).attr('src', '/data/skin/front/udweb_pc_20200903/img/etc/blank.gif');
				})
				.each(function () {
					$(this).attr("src", $(this).attr("src"));
				})
	});
</script>
<script type="text/javascript">
	$(function(){
		// 인풋박스 선택 이벤트
		if ($('.js_datepicker').length) {
			$('.js_datepicker').datetimepicker({
				locale: 'ko',
				format: 'YYYY-MM-DD',
				dayViewHeaderFormat: 'YYYY MM',
				viewMode: 'days',
				ignoreReadonly: true,
				debug: false,
				keepOpen: false
			});
			//$('.check-cal img').click(function(e){
			//	$(this).prev('.js-datepicker').data('DateTimePicker').show();
			//});
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
        $('form[name="frmSearch"]').submit(function(e){
            $chekcInputDate = $('input[name="rangDate[]"]');
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
    <!-- //mypage_cont -->
</div>
<!-- //content -->
            </div>
            <!-- //sub_content -->
        </div>
        <!-- //본문 끝 contents -->
    </div>
    <!-- //container -->
    </body>
