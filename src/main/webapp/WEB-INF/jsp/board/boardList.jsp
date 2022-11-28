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
<div class="content">
<div class="board_zone_sec">
    <div class="board_zone_tit">
        <h2>자유게시판</h2>            
        <div class="btn_right_box">
        <button type="button" class="btn_before" onclick="boardWriteForm"><strong>글쓰기</strong></button>
        </div>
      </div>
    <div class="board_zone_cont">
        <div class="board_zone_list" align="center">
            <table class="board_list_table" style="width:100%">
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

                <tr data-sno="94" data-auth="y" style="height:10px">
                    <td>
                        91
                    </td>
                    <td class="board_tit">
                        
                        <a href="javascript:gd_btn_view('winning',94 ,'y')" >
                            <strong>이거 테스트 이상한거같아요</strong>
                            <img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/default/img/icon/icon_board_hot.png" alt="인기글"/>
                        </a>
                    </td>
                    <td> 2022.11.16 </td>
                    <td> xx </td>
                    <td> 176 </td>
                </tr>
                <tr data-sno="93" data-auth="y" style="height:10px">
                    <td>
                        90
                    </td>
                    <td class="board_tit">
                        
                        <a href="javascript:gd_btn_view('winning',93 ,'y')" >
                            <strong>이상한거 추천해주네요</strong>
                            <img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/default/img/icon/icon_board_attach_img.png" alt="이미지첨부 있음"/>
                            <img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/default/img/icon/icon_board_hot.png" alt="인기글"/>
                        </a>
                    </td>
                    <td> 2022.10.07 </td>
                    <td> xd </td>
                    <td> 130 </td>
                </tr>
                <tr data-sno="92" data-auth="y" style="height:10px">
                    <td>
                        89
                    </td>
                    <td class="board_tit">
                        
                        <a href="javascript:gd_btn_view('winning',92 ,'y')" >
                            <strong>테스트 정확하네요</strong>
                            <img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/default/img/icon/icon_board_attach_img.png" alt="이미지첨부 있음"/>
                            <img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/board/skin/default/img/icon/icon_board_hot.png" alt="인기글"/>
                        </a>
                    </td>
                    <td> 2022.09.05 </td>
                    <td> 관리자 </td>
                    <td> 301 </td>
                </tr>
                </tbody>
            </table>


            <div class="pagination"><ul><li class="on"><span>1</span></li><li><a href="./list.php?page=2&amp;bdId=winning">2</a></li><li><a href="./list.php?page=3&amp;bdId=winning">3</a></li><li><a href="./list.php?page=4&amp;bdId=winning">4</a></li><li><a href="./list.php?page=5&amp;bdId=winning">5</a></li><li><a href="./list.php?page=6&amp;bdId=winning">6</a></li><li><a href="./list.php?page=7&amp;bdId=winning">7</a></li></ul></div>

            <!-- //pagination -->

            <div class="board_search_box">
                <form name="frmList" id="frmList" action="list.php" method="get">
                    <input type="hidden" name="bdId" value="winning">
                    <input type="hidden" name="memNo" value=""/>
                    <input type="hidden" name="noheader" value=""/>

                    <select class="chosen-select" name="searchField">
                        <option value="subject">제목</option>
                        <option value="contents">내용</option>
                        <option value="writerNm">작성자</option>
                    </select>

                    <input type="text" class="text" name="searchWord" value="">
                    <button class="btn_board_search"><em>검색</em></button>
                </form>
            </div>
            <!-- //board_search_box -->

        </div>
        <!-- //board_zone_list -->


    </div>
    <!-- //board_zone_cont -->
</div>
<!-- //board_zone_sec -->


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
