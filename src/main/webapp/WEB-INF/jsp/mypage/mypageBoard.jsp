<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 게시글</title>
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
                    <em><a href="#" class="local_home">HOME</a> &gt; 마이페이지 &gt; 내가 쓴 게시글</em>
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
        <h2>내가 쓴 게시글</h2>
    </div>
    <div class="board_zone_cont">
        <div class="board_zone_list" align="center">
            <table class="board_list_table" style="width:80%" "="">   <!-- width 100%로 하니까 리스트가 밑으로 내려가서 80으로 수정 -->
                <colgroup>
                    <col style="width:6%">
                    <col style="width:37%;">
                    <col style="width:12%">
                    <col style="width:7%">
                    <col style="width:15%">
                    <col style="width:6%">
                </colgroup>
                <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>날짜</th>
                    <th>작성자</th>
                    <th>조회</th>
                </tr>
                </thead>
                <tbody>

               
              
                <tr data-sno="22838" data-auth="y" style="height:10px">
                    <td>
                        글번호
                    </td>
                    <td class="board_tit">
                        
                        <a href="javascript:gd_btn_view('goodsreview',22838 ,'y')">
                            <strong>글 제목</strong>
<!-- 신규등록글 n 이미지 --> <img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/default/img/icon/icon_board_new.png" alt="신규 등록글">
                        </a>
                    </td>
                    
                    <td> 날짜/시간 </td>
                    <td> 아이디 </td>
                    <td> 조회수 </td>
                </tr>
                <tr data-sno="22837" data-auth="y" style="height:10px">
                    <td>
                        글번호
                    </td>
                    <td class="board_tit">
                        
                        <a href="javascript:gd_btn_view('goodsreview',22837 ,'y')">
                            <strong>글제목</strong>
                            <span>(3)</span>   <!-- 댓글 수 -->
                            <img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/default/img/icon/icon_board_new.png" alt="신규 등록글">
                        </a>
                    </td>
                   
                    <td> 작성시간 날짜 </td>
                    <td> 아이디 </td>
                    <td> 조회수 </td>
                </tr>
               
               
                <tr data-sno="22834" data-auth="y" style="height:10px">
                    <td>
                        27247
                    </td>
                    <td class="board_tit">
                        
                        <a href="javascript:gd_btn_view('goodsreview',22834 ,'y')">
                            <strong>최악이네요</strong>
                            <img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/default/img/icon/icon_board_attach_file.png" alt="파일첨부 있음">
                        </a>
                    </td>
                    
                    <td> 2022.11.23 </td>
                    <td> ks*********** </td>
                    <td> 8 </td>
                </tr>
               
                </tbody>
            </table>

			<!-- 페이징..? -->
            <div class="pagination"><ul>
            <li class="on"><span>1</span></li>
            <li><a href="./list.php?page=2&amp;bdId=goodsreview">2</a></li>
            <li><a href="./list.php?page=3&amp;bdId=goodsreview">3</a></li>
            <li><a href="./list.php?page=4&amp;bdId=goodsreview">4</a></li>
            <li><a href="./list.php?page=5&amp;bdId=goodsreview">5</a></li>
            <li><a href="./list.php?page=6&amp;bdId=goodsreview">6</a></li>
            <li><a href="./list.php?page=7&amp;bdId=goodsreview">7</a></li>
            <li><a href="./list.php?page=8&amp;bdId=goodsreview">8</a></li>
            <li><a href="./list.php?page=9&amp;bdId=goodsreview">9</a></li>
            <li><a href="./list.php?page=10&amp;bdId=goodsreview">10</a></li>
            <li class="btn_page btn_page_next">
            <a aria-label="Next" href="./list.php?page=11&amp;bdId=goodsreview"><img src="/admin/gd_share/img/icon_arrow_page_r.png" class="img-page-arrow">다음</a></li><li class="btn_page btn_page_last"><a aria-label="Last" href="./list.php?page=1984&amp;bdId=goodsreview"><img src="/admin/gd_share/img/icon_arrow_page_rr.png" class="img-page-arrow">맨뒤</a></li></ul></div>

            <!-- //pagination -->
            
            <!--   내가쓴게시글 검색창...........
             <div class="board_search_box"> 
                <form name="frmList" id="frmList" action="list.php" method="get">
                    <input type="hidden" name="bdId" value="goodsreview">
               	    <input type="hidden" name="memNo" value="">
                    <input type="hidden" name="noheader" value=""> 

                    <select class="chosen-select" name="searchField" style="display: block;">
                        <option value="subject">제목</option>
                        <option value="contents">내용</option>
                        <option value="writerNm">작성자</option>
                    </select>
                    
     <div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 90px;" title=""><a class="chosen-single"><span>제목</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" readonly=""></div><ul class="chosen-results"></ul></div></div>  

                    <input type="text" class="text" name="searchWord" value="">
                    <button class="btn_board_search"><em>검색</em></button>
                </form>
            </div>   -->
            <!-- //board_search_box -->

        </div>
        <!-- //board_zone_list -->

        <div class="btn_right_box">
            <button type="button" class="btn_write" onclick="gd_btn_write('goodsreview')"><strong>글쓰기</strong></button>
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
<script type="text/javascript" src="/data/skin/front/udweb_pc_20200903/js/gd_board_list.js" charset="utf-8"></script>
<script>
    $(document).ready(function () {
        $('img.js_image_load').error(function () {
            $(this).css('background', 'url("/data/skin/front/udweb_pc_20200903/board/skin/default/img/etc/noimg.png") no-repeat center center');
            $(this).attr('src', '/data/skin/front/udweb_pc_20200903/img/etc/blank.gif');
        })
            .each(function () {
                $(this).attr("src", $(this).attr("src"));
            })
    });
</script>
</div>
<!-- //content -->
            </div>
            <!-- //sub_content -->
        </div>
        <!-- //본문 끝 contents -->
    </div>