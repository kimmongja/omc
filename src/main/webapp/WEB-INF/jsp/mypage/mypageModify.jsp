<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 회원정보변경(완)</title>
</head>

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
                    <em><a href="#" class="local_home">HOME</a> &gt; 마이페이지 &gt; 내정보수정</em>
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
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<div class="content">
<link type="text/css" rel="stylesheet" href="/data/skin/front/udweb_pc_20200903/css/member/member.css?ts=1649407129">
    <div class="mypage_cont">

        <div class="my_page">

            <div class="mypage_zone_tit">
                <h2>회원정보 변경</h2>
            </div>

            <div class="join_base_wrap">

                <div class="member_cont">
                    <form id="formJoin" name="formJoin" action="https://www.mychef.kr/mypage/my_page_ps.php" method="post" novalidate="novalidate">
                        <input type="hidden" name="memNo" value="136211">
                        <input type="hidden" name="memberFl" value="personal">
                        <input type="hidden" name="dupeinfo" value="MC0GCCqGSIb3DQIJAyEAQ8saxoDKZjWxLHiSpCuJAt5YsSD/8WWrA1y6oWXn6bY=">
                        <input type="hidden" name="rncheck" value="authCellphone">
                        <input type="hidden" name="mode" value="modify">

                        <!-- 회원가입/정보 기본정보 --><div class="base_info_box">
    <h3>기본정보</h3>
    <span class="important">표시는 반드시 입력하셔야 하는 항목입니다.</span>
    <div class="base_info_sec">
        <table border="0" cellpadding="0" cellspacing="0">
            <colgroup>
                <col width="25%">
                <col width="75%">
            </colgroup>
            <tbody>
            <tr>
                <th><span class="important">아이디</span></th>
                <td>
                    <input type="hidden" name="memId" value="sz7235">
                    sz7235
                </td>

            </tr>
            
<th><span class="important">비밀번호</span></th>
         <td class="member_password">
               
                    <div id="lyMemberPw" class="layer_area" style="display: none;">
                        <div class="ly_wrap pw_advice_layer">
                            <div class="ly_tit">
                                <strong>비밀번호 도움말</strong>
                            </div>
                            <div class="ly_cont">
                                <div class="pw_advice_list">
                                    <ul>
                                        <li>영문대소문자는 구분이 되며, 한가지 문자로만 입력은 위험합니다.</li>
                                        <li><strong>사용가능 특수문자 :</strong> <strong class="fc_red">!@#$%^&amp;*()_+-=`~</strong></li>            
										<li>ID/주민번호/생일/전화번호 등의 개인정보와 통상 사용 순서대로의 3자 이상 연속 사용은 피해주세요.
											<br>비밀번호는 주기적으로 바꾸어 사용하시는 것이 안전합니다.</li>            
									</ul>
                                </div>
                            </div>
                            <!-- //ly_cont -->
                            <a href="#lyMemberPw" class="ly_close"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/layer/btn_layer_close.png" alt="닫기"></a>
                        </div>
                        <!-- //ly_wrap -->
                    </div>
                    <!-- //layer_area -->

                    <div id="memberNewPw" class="member_pw_change" style="">
                        <dl >
                            <dt>현재 비밀번호</dt>
                            <dd>
                                <div class="member_warning">
                                    <input type="password" id="currentPassword" name="oldMemPw">
                                </div>
                            </dd>
                        </dl>
                        <dl>
                            <dt>새 비밀번호</dt>
                            <dd>
                                <div class="member_warning">
                                    <input type="password" id="newPassword" name="memPw">
                                </div>
                            </dd>
                        </dl>
                        <dl>
                            <dt>새 비밀번호 확인</dt>
                            <dd>
                                <div class="member_warning">
                                    <input type="password" id="newPasswordCheck" name="memPwRe">
                                </div>
                            </dd>
                        </dl>
                    </div>
                    <!--   //member_pw_change-->
                </td>
                     <!-- //member_pw_change -->
                </td>
            </tr>
            <tr>
                <th><span class="important">이름</span></th>
                <td>
                    <div class="member_warning">
                        <input type="text" name="memNm" data-pattern="gdMemberNmGlobal" value="박채영" maxlength="30" readonly="">
                    </div>
                </td>
            </tr>
            
            
           <tr>
                <th><span class="important">이메일</span></th>
                <td class="member_email">
                    <div class="member_warning">
                        <input type="text" name="email" id="email" style="width:100px" >@
                        <input type="text" name="email2" id="email2" style="width:100px;" disabled value="naver.com">
                        <select style="width:100px;margin-right:10px" name="selectEmail" id="selectEmail">
                        
                            <option value="1" selected>직접입력</option>
                            <option value="naver.com">naver.com</option>
                            <option value="hanmail.net">hanmail.net</option>
                            <option value="daum.net">daum.net</option>
                            <option value="nate.com">nate.com</option>
                            <option value="hotmail.com">hotmail.com</option>
                            <option value="gmail.com">gmail.com</option>
                            <option value="icloud.com">icloud.com</option>
                        </select>
                       </div>
				
                </td>
            </tr>
            
            
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
//이메일 입력방식 선택
$('#selectEmail').change(function(){
   $("#selectEmail option:selected").each(function () {
		
		if($(this).val()== '1'){ //직접입력일 경우
			 $("#email2").val('');                        //값 초기화
			 $("#email2").attr("disabled",false); //활성화
		}else{ //직접입력이 아닐경우
			 $("#email2").val($(this).text());      //선택값 입력
			 $("#email2").attr("disabled",true); //비활성화
		}
   });
});
</script>



          
            
            
            
            
            
            
            
                <th><span class="important">휴대폰번호</span></th>
                <td class="member_address">
                    <div class="address_postcode">
                        <input type="text" id="cellPhone" name="cellPhone" maxlength="12" placeholder="- 없이 입력하세요." data-pattern="gdNum" value="01024557235" readonly="">
                      
                    </div>

                </td>
            </tr>
            <tr>
                <th><span>전화번호</span></th>
                <td>
                    <div class="member_warning">
                        <input type="text" id="phone" name="phone" maxlength="12" placeholder="- 없이 입력하세요." data-pattern="gdNum" value="">
                    </div>
                </td>
            </tr>
            <tr>
                <th><span>주소</span></th>
                <td class="member_address">
                    <div class="address_postcode">
                        <input type="text" name="zonecode" readonly="readonly" value="">
                        <button type="button" id="btnPostcode" class="btn_post_search" onclick="execution_daum_address()">우편번호검색</button>
                        <input type="hidden" name="zipcode" value="">
                    </div>
                    <div class="address_input">
                        <div class="member_warning">
                            <input type="text" name="address" readonly="readonly" value="">
                        </div>
                        <div class="member_warning js_address_sub">
                            <input type="text" name="addressSub" value="">
                        </div>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    
    <!-- //base_info_sec -->
</div>
<!-- //base_info_box --><!-- 회원가입/정보 기본정보 -->
                        <!-- 회원가입/정보 사업자정보 --><!-- 회원가입/정보 사업자정보 -->
                        <!-- 회원가입/정보 부가정보 --><div class="addition_info_box">
   
               
    </div>
    <!-- //addition_info_sec -->
</div>
<!-- //addition_info_box -->




                        <div class="btn_center_box">
                            <button type="button" class="btn_member_cancel">취소</button>
                            <button type="button" class="btn_comfirm js_btn_join" value="정보수정">정보수정</button>
                         <!-- 회원탈퇴버튼 -->        
                    		<button type="button" class="btn_claim_ok" onClick="location.href='memberDelete.omc'">회원탈퇴</button>
                        </div>
                        <!-- //btn_center_box -->
                   
                </div>
                <!-- //member_cont -->
            </div>
            <!-- //join_base_wrap -->

        </div>
        <!-- //my_page -->

    </div>
    <!-- //mypage_cont -->

</div>
<!-- //content -->


<script type="text/javascript">
    var snsConnection = {"snsJoinFl":null,"snsTypeFl":""};
    var $formJoin;

    $(document).ready(function () {
        $formJoin = $('#formJoin');

        $('.btn_member_cancel', $formJoin).click(function (e) {
            e.preventDefault();
            top.location.href = '/';
        });

        $('#btnAuthPhone').click(function (e) {
            e.preventDefault();
            var protocol = location.protocol;
            var callbackUrl = "https://www.mychef.kr:443/member/authcellphone/dreamsecurity_result.php";
            window.open(protocol + "//hpauthdream.godo.co.kr/module/Mobile_hpauthDream_Main.php?callType=modifymember&shopUrl=" + callbackUrl + "&cpid=godomychef", "auth_popup", "top=30, left=50, status=0, width=425, height=650");
        });

        $('#btnPostcode').click(function (e) {
            e.preventDefault();
            gd_postcode_search('zonecode', 'address', 'zipcode');
        });

        $('#btnCompanyPostcode').click(function (e) {
            e.preventDefault();
            gd_postcode_search('comZonecode', 'comAddress', 'comZipcode');
        });

        // 인풋박스 선택 이벤트
        var $datepicker = $('.js_datepicker');
        if ($datepicker.length) {
            $datepicker.datetimepicker({
                locale: 'ko',
                format: 'YYYY-MM-DD',
                dayViewHeaderFormat: 'YYYY MM',
                viewMode: 'days',
                ignoreReadonly: true,
                debug: false,
                keepOpen: false
            });
        }

        /**
         * 약관 체크박스 이벤트
         */
        $('.join_agreement_box :checkbox', $formJoin).change(function (e) {
            e.preventDefault();
            $('p.msg').addClass('dn');
            var $target = $(e.target), $label = $target.siblings('label'), $termsView = $target.closest('.join_agreement_box');
            var isTermsAgreeSelect = (e.target.id === 'termsAgree3') || (e.target.id === 'termsAgree4') || (e.target.id === 'termsAgree5');
            var isTargetChecked = $target.prop('checked') === true;

            if (isTargetChecked) {
                if (isTermsAgreeSelect) {
                    $termsView.find('.agreement_choice_box label').addClass('on');
                    $termsView.find('.agreement_choice_box :checkbox').attr({
                        value: "y", checked: "checked"
                    });
                } else {
                    $target.val('y');
                    $label.addClass('on');
                }
            } else {
                if (isTermsAgreeSelect) {
                    $termsView.find('.agreement_choice_box label').removeClass('on');
                    $termsView.find('.agreement_choice_box :checkbox').attr({
                        value: "n", checked: "checked"
                    });
                } else {
                    $target.val('n');
                    $label.removeClass('on');
                }
            }
        });

        gd_select_email_domain('email');

        function sendDateData(year, month, type) {
            var dayType = '';
            var params = {
                year: year,
                month: month,
            };
            $.ajax('../share/date_select_json.php', {
                data: params,
                method: "POST",
                success: function (data) {
                    if (data !='' && data != null) {
                        if (type == 'marry') {
                            dayType = 'marriDay';
                        }else {
                            dayType = 'birthDay';
                        }
                        $('#'+dayType).empty();
                        $('#'+dayType).append(data);
                    }
                }
            });
        }

        $(':radio[name="marriFl"]').change(function () {
            var $marridateinfo = $('.js_marridateinfo');
            if (this.value == 'y') {
                $marridateinfo.removeClass('dn');
            } else {
                $marridateinfo.addClass('dn');
                $('#marriYear option:eq(0)').prop('selected', true);
                $('#marriMonth option:eq(0)').prop('selected', true);
                $('#marriDay option:eq(0)').prop('selected', true);
            }
        });

        $('#marriYear').change(function () {
            var marriMonthVal = $('#marriMonth').val();
            if (marriMonthVal != '') {
                sendDateData($('#marriYear').val(), $('#marriMonth').val(), 'marry');
            }
        });
        $('#marriMonth').change(function () {
            var marriYearVal = $('#marriYear').val();
            if (marriYearVal != '') {
                sendDateData($('#marriYear').val(), $('#marriMonth').val(), 'marry');
            }
        });

        $(':radio[name="marriFl"]:checked').trigger('change');

        $('#birthYear').change(function () {
            var birthMonthVal = $('#birthMonth').val();
            if ( birthMonthVal != '') {
                sendDateData($('#birthYear').val(), $('#birthMonth').val(), 'birth');
            }
        });
        $('#birthMonth').change(function () {
            var birthYearVal = $('#birthYear').val();
            if ( birthYearVal != '') {
                sendDateData($('#birthYear').val(), $('#birthMonth').val(), 'birth');
            }
        });

        gd_member2.set_my_page(my_page);
        gd_member2.init($formJoin);

        $('.btn_comfirm').click({form: $formJoin}, gd_member2.save);
    });

    var join_field = {"ceo":{"use":"y","require":"y"},"mode":"member_joinitem","email":{"use":"y","require":"y","data":{"self":"\uc9c1\uc811\uc785\ub825","naver.com":"naver.com","hanmail.net":"hanmail.net","daum.net":"daum.net","nate.com":"nate.com","hotmail.com":"hotmail.com","gmail.com":"gmail.com","icloud.com":"icloud.com"}},"memId":{"use":"y","maxlen":"50","minlen":"4","require":"y"},"memNm":{"use":"y","require":"y"},"memPw":{"use":"y","maxlen":"16","minlen":"10","require":"n"},"phone":{"use":"y"},"sexFl":{"use":"y","require":"y"},"smsFl":{"use":"y"},"busiNo":{"use":"y","require":"y","overlapBusiNoFl":"y","charlen":10},"nickNm":{"use":"n","maxlen":"20","minlen":"2"},"address":{"use":"y"},"birthDt":{"use":"y","require":"y"},"company":{"use":"y","require":"y"},"mallSno":"1","marriFl":{"use":"y"},"memberFl":{"use":"y","require":"y"},"recommFl":{"use":"y"},"recommId":{"use":"y"},"cellPhone":{"use":"y","require":"y"},"marriDate":{"use":"y"},"calendarFl":{"use":"y"},"maillingFl":{"use":"y"},"expirationFl":{"use":"y"},"interest":{"data":{"01001001":"\ud654\uc7a5\ud488\/\ud5a5\uc218\/\ubbf8\uc6a9\ud488","01001002":"\ucef4\ud4e8\ud130\/SW","01001003":"\uc758\ub958\/\ud328\uc158\uc7a1\ud654","01001004":"\uc0dd\ud65c\/\uc8fc\ubc29\uc6a9\ud488","01001005":"\ubcf4\uc11d\/\uc2dc\uacc4\/\uc545\uc138\uc0ac\ub9ac","01001006":"\uac00\uc804\/\uce74\uba54\ub77c","01001007":"\uc11c\uc801\/\uc74c\ubc18\/\ube44\ub514\uc624"}},"job":{"data":{"01002001":"\ud559\uc0dd","01002002":"\ucef4\ud4e8\ud130\uc804\ubb38\uc9c1","01002003":"\ud68c\uc0ac\uc6d0","01002004":"\uc804\uc5c5\uc8fc\ubd80","01002005":"\uac74\ucd95\/\ud1a0\ubaa9","01002006":"\uae08\uc735\uc5c5","01002007":"\uad50\uc218\uc9c1","01002008":"\uacf5\ubb34\uc6d0","01002009":"\uc758\ub8cc\uacc4","01002010":"\ubc95\uc870\uacc4","01002011":"\uc5b8\ub860\/\ucd9c\ud310","01002012":"\uc790\uc601\uc5c5","01002013":"\ubc29\uc1a1\/\uc5f0\uc608\/\uc608\uc220","01002014":"\uae30\ud0c0"}},"groupSno":{"data":{"1":"\ud654\uc774\ud2b8","5":"\ubca0\uc774\uc9c0","6":"\uc610\ub85c\uc6b0","7":"\uc624\ub80c\uc9c0","8":"VIP","9":"\ud504\ub9ac\ubbf8\uc5c4","10":"\ud2b9\ubcc4\ud68c\uc6d0","11":"\uc77c\ubc18","12":"H_VIP","13":"\uad00\ub9ac\uc790"}},"ex":[],"ex1":null,"ex2":null,"ex3":null,"ex4":null,"ex5":null,"ex6":null,"options":{"use":"y"},"businessinfo":{"use":"n"}};
    var join_data = {"memNo":"136211","mallSno":"1","memId":"sz7235","groupSno":"1","groupModDt":"0000-00-00 00:00:00","groupValidDt":"0000-00-00 00:00:00","memNm":"\ubc15\ucc44\uc601","pronounceName":"","nickNm":"","memPw":"","changePasswordDt":"0000-00-00 00:00:00","guidePasswordDt":"0000-00-00 00:00:00","appFl":"y","approvalDt":"2022-11-22 16:48:56","memberFl":"personal","entryBenefitOfferDt":"2022-11-22 16:48:57","sexFl":"w","birthDt":"19970116","calendarFl":"s","birthEventFl":"0000-00-00","email":"sz_7235@naver.com","zipcode":"","zonecode":"","address":"","addressSub":"","phoneCountryCode":"kr","phone":"","cellPhoneCountryCode":"kr","cellPhone":"01024557235","fax":"","company":"","service":"","item":"","busiNo":"","ceo":"","comZipcode":"","comZonecode":"","comAddress":"","comAddressSub":"","mileage":"0.00","deposit":"0.00","maillingFl":"n","smsFl":"n","marriFl":"n","marriDate":"","job":"","interest":"","reEntryFl":"","entryDt":"2022-11-22 16:48:56","entryPath":"pc","loginLimit":"{\"limitFlag\": \"n\", \"onLimitDt\": \"0000-00-00 00:00:00\", \"loginFailLog\": [], \"loginFailCount\": 0}","lastLoginDt":"2022-11-23 19:17:01","lastLoginIp":"115.91.54.75","lastSaleDt":"0000-00-00 00:00:00","loginCnt":"7","saleCnt":0,"saleAmt":"0.00","memo":"","recommId":"","recommFl":"","ex1":"","ex2":"","ex3":"","ex4":"","ex5":"","ex6":"","privateApprovalFl":"y","privateApprovalOptionFl":"null","privateOfferFl":"null","privateConsignFl":"null","foreigner":"0","dupeinfo":"MC0GCCqGSIb3DQIJAyEAQ8saxoDKZjWxLHiSpCuJAt5YsSD\/8WWrA1y6oWXn6bY=","adultFl":"y","adultConfirmDt":"0000-00-00 00:00:00","pakey":"","rncheck":"authCellphone","adminMemo":"","sleepFl":"n","sleepMailFl":"n","sleepSmsFl":"n","sleepWakeDt":"0000-00-00 00:00:00","expirationFl":"1","lifeMemberConversionDt":"0000-00-00 00:00:00","regDt":"2022-11-22 16:48:57","modDt":"2022-11-23 19:17:01","simpleJoinFl":"n","under14ConsentFl":"n","seum_samsung_yn":"n","seum_member_type":"basic","seum_membership":"normal","seum_sms":"n","kakaoSyncFl":"","snsJoinFl":null,"snsTypeFl":"","connectFl":null,"birthYear":"1997","birthMonth":"01","birthDay":"16","marriYear":"","marriMonth":false,"marriDay":false,"authReadOnly":" readonly","authDisabled":" disabled","authRequired":" required","authClassRequired":" class=\"important\""};
    var my_page = true;
    
    /*ㄷㅏ음주소연동*/
    function execution_daum_address(){
    	
    	new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
                
     
            }
        }).open(); 
        
    }
    
    </script>
    


            </div>
            <!-- //sub_content -->
        </div>
        <!-- //본문 끝 contents -->
    
    <!-- //container -->

  </body>