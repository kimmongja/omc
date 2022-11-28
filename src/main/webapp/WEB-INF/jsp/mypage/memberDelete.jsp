<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>

    <link type="text/css" rel="stylesheet" href="../css/button.css">
    <link type="text/css" rel="stylesheet" href="../css/mypage.css">
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
                    <em><a href="#" class="local_home">HOME</a> &gt; 마이페이지 &gt; 회원탈퇴</em>
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
        <form id="formHackOut" name="formHackOut" action="memberDeletePro.omc" method="post" novalidate="novalidate">
            <input type="hidden" name="mode" value="hackOut">
            <input type="hidden" name="snsType" value="">
            <div class="hack_out">

                <div class="mypage_zone_tit">
                    <h2>회원탈퇴</h2>
                </div>

                <div class="mypage_unregister">
                    <div class="mypage_zone_tit">
                        <h3>01.회원탈퇴 안내</h3>
                    </div>

                    <div class="unregister_info">
                        주식회사 오메추 탈퇴안내<br>
<br>
회원님께서 회원 탈퇴를 원하신다니 저희 쇼핑몰의 서비스가 많이 부족하고 미흡했나 봅니다.<br>
불편하셨던 점이나 불만사항을 알려주시면 적극 반영해서 고객님의 불편함을 해결해 드리도록 노력하겠습니다.<br>
<br>
■ 아울러 회원 탈퇴시의 아래 사항을 숙지하시기 바랍니다.<br>
1. 회원 탈퇴 시 회원님의 정보는 상품 반품 및 A/S를 위해 전자상거래 등에서의 소비자 보호에 관한 법률에 의거한 <br>
   고객정보 보호정책에따라 관리 됩니다.<br>
2. 탈퇴 시 회원님께서 보유하셨던 마일리지는 삭제 됩니다
                    </div>
                    <!-- //unregister_info -->

                    <div class="mypage_zone_tit">
                        <h3>02.회원탈퇴 하기</h3>
                    </div>

                    <div class="mypage_table_type">
                        <table class="table_left">
                            <colgroup>
                                <col style="width:15%;">
                                <col style="width:85%;">
                            </colgroup>
                            <tbody>
                            <tr>
                                <th scope="row">비밀번호</th>
                                <td><input type="password" name="memPw" aria-required="true" class="error"></td>
                            </tr> 
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- //mypage_unregister -->

            </div>
            <!-- //hack_out -->

            <div class="btn_center_box">
                <a href="#;" class="btn_claim_cancel btn_prev"><em>이전으로</em></a>
                <button type="submit" class="btn_claim_ok"><em>탈퇴</em></button>
            </div>
        </form>
    </div>
    <!-- //mypage_cont -->

</div>
<!-- //content -->

<script type="text/javascript">
    $(document).ready(function () {
        $('#formHackOut').validate({
            rules: {
                memPw: "required",
                "reasonCd[]": "required"
            }, messages: {
                memPw: "비밀번호를 입력해주세요",
                "reasonCd[]": "탈퇴사유를 1개 이상 체크하여 주시기바랍니다."
            },
            submitHandler: function (form) {
                var params = $(form).serializeArray();
                var mileage = "0원";
                if (confirm("현재 보유중인 회원혜택 : 쿠폰 " + "1" + "장 / 마일리지" + mileage + " \n탈퇴 시 보유중인  회원혜택은 모두 삭제됩니다. 정말로 탈퇴하시곘습니까?")) {
                    form.action = '../mypage/hack_out_ps.php';
                    form.target = 'ifrmProcess';
                    form.submit();
                }
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
</html>