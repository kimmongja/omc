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
        <h2>자유게시판</h2>
    </div>
    <div class="board_zone_cont">
        <div class="board_zone_view">

            <div class="board_view_tit">
                <h3>
                    안녕
                </h3>
            </div>
            <div class="board_view_info">
                <span class="view_info_idip">
                    <strong>관리자</strong>
                </span>
                <span class="view_info_day">
                    <em>2022.11.16 17:24:38</em>
                </span>
                <span class="view_info_hits">
<strong>조회수</strong> 188                </span>
            </div>
            <!-- //board_view_info -->



            <div class="board_view_content">

                <div class="view_goods_select">


                </div>
                <!-- //view_goods_select -->

                <div class="seem_cont">
                    <div style="margin:10px 0 10px 0">
				          <p malgun="" gothic",="" "맑은="" 고딕",="" applegothic,="" dotum,="" 돋움,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"="" 
				          style="box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); font-family:
				           "Malgun Gothic", "맑은 고딕", AppleGothic, Dotum, 돋움, "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 12px; 
				           background-color: rgb(255, 255, 255); margin: 0px !important;">안녕하세요</p>           
            </div>
         </div>						
    </div>
                </div>
                <!-- //seem_cont -->


            </div>
          

       <!-- //board_view_content -->


            <div class="board_view_comment">

                <div class="view_comment js_comment_area" data-bdId="winning" data-sno="4">
                    <div class="view_comment_top">
                        <span class="comment_num">총 댓글 <strong>6</strong></span>
                    </div>
                    <!-- //view_comment_top -->

                    <div class="board_comment_box js_form_write">
                        <div class="board_comment_write">
                           
                            <div class="comment_textarea">
                                <textarea class="text" name="memo" placeholder="댓글 내용을 입력하세요"></textarea>
                                <span class="btn_comment_box"><button type="button" class="btn_comment_ok js_comment_btn_write"><em>등록</em></button></span>
                            </div>
                        </div>
                        <!-- //board_comment_write -->
                    </div>
                    <!-- //board_comment_box -->

                    <div class="view_comment_list">
                        <ul>
                            <li data-memosno="8341" data-memoauth="n" class="js_data_comment_row ">
                                <strong class="comment_name">xd</strong>
                                <p>
                                    <em>안녕하세요</em>
                                    <span class="board_day_time">2020-04-10 20:37:26</span>
                                </p>
                                <span class="btn_gray_list"><button type="button" class="btn_gray_small js_comment_btn_reply"><span>삭제</span></button></span>
                                <div class="board_comment_box js_action_form" style="display: none">
                                    <div class="board_comment_write">
                                      
                                        <div class="comment_textarea">
                                            <textarea class="text" name="memo" placeholder="댓글 내용을 입력하세요"></textarea>
                                            <span class="btn_comment_box"><button type="button" class="btn_comment_ok js_comment_btn_action"><em>확인</em></button></span>
                                        </div>
                                    </div>
                                    <!-- //board_comment_write -->
                                </div>
                                <!-- //board_comment_box -->
                           
                        </ul>
                    </div>
                    <!-- //view_comment_list -->
                </div>

            </div>
            <!-- //board_view_comment -->

        </div>
        <!-- //board_zone_view -->
</div>
        <div class="btn_right_box">
       <button type="button" class="btn_board_list" onclick="gd_btn_list('winning')"><strong>목록</strong></button>   
       <button type="button" class="btn_board_edit" onclick="gd_btn_edit('winning')"><strong>수정</strong></button>
       <button type="button" class="btn_board_del" onclick="gd_btn_del('winning')"><strong>삭제</strong></button>   
  </div>

    </div>
    </div>
    </div>
    
</body>
</html>