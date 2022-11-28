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
            <!-- //location_wrap -->
            <div class="sub_content">
                <div class="side_cont">
<div class="sub_menu_box">
    <h2>커뮤니티</h2>
    <ul class="sub_menu">
        <li><a href="../service/notice.php" >공지사항</a></li>
        <li><a href="../service/faq.php" >취향테스트</a></li>
		<li><a href="../board/view.php?=y&bdId=notice&sno=143" >자유 게시판</a></li>
		<li><a href="../service/event.php" >이벤트</a></li>
    </ul>
</div>
                </div>
                <!-- //side_cont -->
<!-- //sub_menu_box -->             
                <!-- //side_cont -->
        <div class="content">

<div class="board_zone_sec">
    <div class="board_zone_tit">
        <h2>글쓰기</h2>
    </div>
    <div class="board_zone_cont">
        <form name="frmWrite" id="frmWrite" action="./board_ps.php" method="post" enctype="multipart/form-data" class="frmWrite">
            <input type="hidden" name="bdId" value="gift">
            <input type="hidden" name="sno" value="">
            <input type="hidden" name="mode" value="write">
            <!--<input type="hidden" name="chkSpamKey" id="chkSpamKey">-->
            <input type="hidden" name="returnUrl" value="bdId=gift">

            <div class="board_zone_write">
                <div class="board_write_box">
                    <table class="board_write_table">
                        <colgroup>
                            <col style="width:15%" />
                            <col style="width:85%" />
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="row">작성자</th>
                            <td>
                                홍길동
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">제목</td>
                            <td><input type="text" name="subject" value=""></td>
                        </tr>
                        <tr>
                            <th scope="row">본문</th>
                            <td class="write_editor">
                                
                                <textarea id="editor" name="contents" cols="60" rows="20"></textarea> </td>
                        </tr>
                        <tr>
                            <th scope="row">첨부파일</th>
                            <td id="uploadBox">


                                <div class="file_upload_sec">
                                    <label for="attach">
                                        <input type="text" class="file_text" title="파일 첨부하기" readonly="readonly">
                                    </label>
                                    <div class="btn_upload_box">
                                        <button type="button" class="btn_upload" title="찾아보기"><em>찾아보기</em></button>
                                        <input type="file" id="attach" name="upfiles[]" class="file" title="찾아보기"/>
                                        <span class="btn_gray_list"><button type="button" id="addUploadBtn" class="btn_gray_big"><span>+ 추가</span></button></span>
                                    </div>
                                </div>

                            </td>
                        </tr>                       
                        </tbody>
                    </table>
                </div>
                <!-- //board_write_box -->

            </div>
            <!-- //board_zone_write -->

            <div class="btn_center_box">          
                <button type="submit" class="btn_write_ok"><strong>등록</strong></button>
            </div>

        </form>
    </div>
    <!-- //board_zone_cont -->

</div>
<!-- //board_zone_sec -->

<%-- <script type="text/template" class="template">
    <div class="file_upload_sec">
     <label for="attach<%=idx%>">
            <input type="text" class="file_text" title="파일 첨부하기" readonly="readonly">
        </label>
        <div class="btn_upload_box">
            <button type="button" class="btn_upload" title="찾아보기"><em>찾아보기</em></button>
            <input type="file" id="attach<%=idx%>" name="upfiles[]" class="file" title="찾아보기"/>
            <span class="btn_gray_list"><button type="button" class="btn_gray_big" onclick="gd_remove_upload(this)"><span>- 삭제</span></button></span>
        </div>
    </div>
</script>
<script type="text/javascript">
    var editorPath = '/data/skin/front/udweb_pc_20200903/js/smart';
</script>
<script type="text/javascript" src="/data/skin/front/udweb_pc_20200903/js/smart/js/HuskyEZCreator.js"></script>
<script type="text/javascript" src="/data/skin/front/udweb_pc_20200903/js/smart/js/editorLoad.js"></script>
<div id="addGoodsLayer" class="dn"></div>
<div id="addOrderLayer" class="dn"></div>
<script id="selectGoodsTblTr" type="text/html">
<div class="goods_select_item js_select_item">
    <span class="select_item_img">
        <input type="hidden" name="goodsNo[]" value="<%=goodsNo%>">
        <a href="../goods/goods_view.php?goodsNo=<%=goodsNo%>" target="_blank">
            <img src="<%=goodsImgageSrc%>" height="80" width="80" alt="">
        </a>
    </span>
    <span class="select_item_info">
        <em><%=goodsName%></em>
        <strong><%=goodsPrice%></strong>
        <button type="button" class="btn_goods_item_del js_select_remove"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/btn/btn_goods_del.png" alt="선택 상품 삭제"></button>
    </span>
</div>
</script>
<script id="selectOrderTblTr" type="text/html">
    <div class="goods_select_item js_select_item">
        <span class="select_item_img">
            <input type="hidden" name="orderGoodsNo[]" value="<%=orderGoodsNo%>">
            <a href="../goods/goods_view.php?goodsNo=<%=orderGoodsNo%>" target="_blank">
                <img src="<%=goodsImgageSrc%>" alt="">
            </a>
        </span>
        <span class="select_item_info">
            <em><%=goodsName%></em>
            <div><%=optionName%></div>
            <strong><%=goodsPrice%></strong>
            <button type="button" class="btn_goods_item_del js_select_remove"><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/btn/btn_goods_del.png" alt="선택 상품 삭제"></button>
        </span>
    </div>
</script> --%>
</div>
<!-- //content -->
            </div>
            <!-- //sub_content -->
        </div>
        <!-- //본문 끝 contents -->
    </div>
    <!-- //container -->        
</body>
</html>