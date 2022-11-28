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
    <script type="text/javascript">
        var json_locale_data = {"domain":"messages","locale_data":{"messages":{"":{"lang":"ATF","plural-forms":"nplurals=1; plural=0"}}}}
    </script>
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

<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'AW-621481013');
  gtag('config', 'AW-618531030');
</script>

</head>

<body class="body-order body-order-end pc"  >
<div class="top_area"></div>
<div id="wrap">

    <!-- //header_warp -->
    <div id="container">
        <div id="contents">
        <!-- 본문 시작 -->

            <div class="location_wrap">
                <div class="location_cont">
                    <em><a href="#" class="local_home">HOME</a> > 주문완료</em>
                </div>
            </div>
            <!-- //location_wrap -->

            <div class="sub_content">

                <!-- //side_cont -->

<div class="content_box">
    <div class="order_wrap">
        <div class="order_tit">
            <h2>주문완료</h2>
            <ol>
                <li><span>01</span> 장바구니 <span><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/member/icon_join_step_off.png" alt=""></span></li>
                <li><span>02</span> 주문서작성/결제<span><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/member/icon_join_step_off.png" alt=""></span></li>
                <li class="page_on"><span>03</span> 주문완료</li>
            </ol>
        </div>
        <!-- //member_tit -->

        <div class="order_cont">
            <div class="order_end">

                <!-- 결제 실패 -->
                <div class="order_end_completion">
                    <span><img src="https://cdn-pro-web-134-253-godomall.spdycdn.net/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/order/order_end_completion.png" alt="" /></span>
                    <p>
                        <strong>결제가 정상적으로 완료되었습니다.</strong>
                    </p>
                </div>

                <div class="order_zone_tit">
                    <h4>주문요약정보</h4>
                </div>

                <div class="order_table_type">
                    <table class="table_left">
                        <colgroup>
                            <col style="width:15%;">
                            <col style="width:85%;">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>결제수단</th>
                            <td><div class="pay_with_list">
                                <strong>신용카드</strong>
                                <ul>
                                    <li></li>
                                    <li>결제금액 : <strong class="deposit_money">11,900원</strong></li>
                                </ul>
                            </div>
                            </td>
                        </tr>
                        <tr>
                            <th>주문번호</th>
                            <td>2211241938422045</td>
                        </tr>
                    </table>
                </div>
            </div>
            <!-- //order_info -->
            <div class="btn_center_box">
                <a href="/" class="btn_order_end_ok"><em>확인</em></a>
            </div>
        </div>
        <!-- //order_end -->
    </div>
    <!-- //order_cont -->
</div>
<!-- //order_wrap -->
</div>
<!-- //content_box -->
<!-- 방문수령 주소 레이어 -->
<div id="visitAddressLayer" class="layer_wrap reason_layer dn" data-remote="../mypage/layer_visit_address.php"></div>
<!-- 방문수령 주소 레이어 -->
<script>
    $(function(){
        // 레이어 오픈 바인딩
        $('.btn_open_layer').bind('click', function (e) {
            e.preventDefault();
            if ($(this).attr('href') == '#visitAddressLayer') {
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
            }
        });
    });
</script>





<!------------- google analytics  -------------->
<script>
    // 주문번호
    var orderId = '2211241938422045'
    // 총주문금액
    var totalOrderPrice = '8900.00'
    // 배송비
    var shipping = '3000.00';
</script>


<!-- Global site tag (gtag.js) - Google Analytics -->
<script>
    var productItems = [];
    $("input[name='naver-common-inflow-script-order-item']").each(function () {
        var item = $(this).val();

        console.log(item);

        // 상품이름
        var goodsname = item.split("goodsnm:'");
        goodsname = removeHtml(goodsname[1].split("',ea")[0]);
        console.log(goodsname);

        // 상품코드
        var goodsno = item.split("goodsno:'");
        goodsno = goodsno[1].split("',optno")[0];
        //console.log(goodsno);





        // 가격
        var goodsprice = item.split("price:");
        goodsprice = goodsprice[1].split(",is_parent")[0];
        goodsprice = goodsprice.replace(/[^0-9\.]+/g, '');
        //console.log(goodsprice);

        // 갯수
        var goodsea = item.split(",ea:");
        goodsea = goodsea[1].split(",price:")[0];
        //console.log(goodsea);


        var isParent = item.split(",is_parent:");
        isParent = isParent[1].split("}")[0];
        console.log('isParent', isParent);


        if(isParent == "false") {
            for(var i in productItems) {
                if(productItems[i].id == goodsno) {
                    productItems[i].price = productItems[i].price * 1 + goodsprice * 1;
                }
            }
        } else {
            productItems.push({
                'id': goodsno,
                'name': goodsname,
                'price': goodsprice / goodsea,
                'quantity': goodsea
            });
        }

    });

    console.log(productItems);
    console.log(orderId);
    console.log(totalOrderPrice);

</script>

<script>
    if(productItems.length > 0 && orderId && totalOrderPrice > 0) {

        gtag('event', 'purchase', {
            "transaction_id": orderId,
            "value": totalOrderPrice,
            "currency": "KRW",
            "tax": 0,
            "shipping": shipping,
            "items": productItems
        });
    }
</script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<!-- Event snippet for 구매 conversion page -->
<script>
    gtag('event', 'conversion', {
        'send_to': 'AW-621481013/3TkSCNy15NYBELWYrKgC',
        'value': totalOrderPrice,
        'currency': 'KRW',
        'transaction_id': orderId
    });
</script>
<!-- Global site tag (gtag.js) - Google Analytics -->


<script>

    var contents = [];

    for(var i in productItems) {
        productIdList.push(productItems[i].id)
        contents.push({
            'id' : productItems[i].id,
            'quantity': productItems[i].quantity,
            'item_price' : productItems[i].price,
            'category': productItems[i].category,
            'item_name': productItems[i].name,
        })
    }



    fbq('track', 'Purchase', {
        content_ids: productIdList,
        content_type: 'product',
        content_category: '일반 결제',
        value: totalOrderPrice,
        contents: contents,
        currency: 'KRW',
    });
</script>

<script>

    var totalQuantity = 0;
    var kakaoItems = [];
    for(var i in productItems) {
        totalQuantity = totalQuantity + productItems[i].quantity * 1;
        kakaoItems.push({
            'name': productItems[i].name,
            'quantity': productItems[i].quantity,
            'price': productItems[i].price,
        })
    }

    if(totalQuantity > 0 && kakaoItems.length > 0) {

        if(typeof kakaoPixel !== 'undefined' && typeof kakaoPixelId !== 'undefined') {
            console.log('kakaoPixel Purchase');
            kakaoPixel(kakaoPixelId).purchase({
                total_quantity: totalQuantity, // 주문 내 상품 개수(optional)
                total_price: totalOrderPrice,  // 주문 총 가격(optional)
                currency: "KRW",     // 주문 가격의 화폐 단위(optional, 기본 값은 KRW)
                products: kakaoItems
            });
        }
    }
</script>

<!-- Tracking Script Start 2.0 -->
<script type="text/javascript" async="true">
var dspu = "ZU3bXljaGVm";      // === (필수)광고주key (변경하지마세요) ===

var dspt = "1";         // === (필수)전환구분( 1:구매 ) (변경하지마세요) === 
var dspo = "2211241938422045";       // === (선택)주문번호( 미입력시 - 중복체크 안함. ) ===
var dspom = "11900.00"; // === (선택)구매금액( 구매전환시 사용 ) ===

var dspu,dspt,dspo,dspom; 
function loadanalJS_dsp(b,c){var d=document.getElementsByTagName("head")[0],a=document.createElement("sc"+"ript");a.type="text/javasc"+"ript";null!=c&&(a.charset="UTF-8");
a.src=b;a.async="true";d.appendChild(a)}function loadanal_dsp(b){loadanalJS_dsp(("https:"==document.location.protocol?"https://":"http://")+b,"UTF-8");}
loadanal_dsp("/tk.realclick.co.kr/tk_comm.js?dspu="+dspu+"&dspt="+dspt+"&dspo="+dspo+"&dspom="+dspom);
</script>
<!-- Tracking Script End 2.0 -->

<!-- Shopping targeting -->
<script async="true">
// 아래 부분은 수정 불가
var r_arr_goodsno = new Array();
var r_arr_price = new Array();

var rtt_list = new Array();
var rtt_price = new Array();

for (var r_r_chk=0;document.getElementsByName("naver-common-inflow-script-order-item").length>r_r_chk ;r_r_chk++ )
{
	var r_ncisoi = document.getElementsByName("naver-common-inflow-script-order-item")[r_r_chk].value;

	r_ncisoi= r_ncisoi.replace("{","");
	r_ncisoi= r_ncisoi.replace("}","");
	r_ncisoi= r_ncisoi.replace(/\'/g,"");
	var a_arr = r_ncisoi.split(",");

	for (var r_r_2=0; a_arr.length > r_r_2 ; r_r_2++ )
	{

		//상품코드
		if (a_arr[r_r_2].indexOf("goodsno:") >= 0)
		{
			var a_arr2 = a_arr[r_r_2].split(":");
			r_arr_goodsno[r_r_chk] = a_arr2[1];
		}

		//상품가격
		if (a_arr[r_r_2].indexOf("price:") >= 0)
		{
			var a_arr2 = a_arr[r_r_2].split(":");
			r_arr_price[r_r_chk] = a_arr2[1];
		}

	}

}

for (var r_r_2=0; r_arr_goodsno.length > r_r_2 ; r_r_2++ )
{
	rtt_list.push(r_arr_goodsno[r_r_2]);
	rtt_price.push(r_arr_price[r_r_2]);
}

var rtt_str = rtt_list.toString();
var rtt_str_price = rtt_price.toString();

var real_item = rtt_str; // 상품코드
var real_price = rtt_str_price; // 상품값

var real_paycode = ""; // 결제코드

var rmom = "0".replace(",","").replace(",",""); // === (선택)구매금액( 구매전환시 사용 ) ===

var rmt = "1"; // === (필수)전환구분(1:구매) === 
var rmo = real_paycode; // === (선택)주문번호( 미입력시 - 중복체크 안함. ) ===
var real_cic = "dsp31530";
//---------------------------------------------

function loadanalJS_sp(b,c){var d=document.getElementsByTagName("head")[0],a=document.createElement("sc"+"ript");a.type="text/javasc"+"ript";null!=c&&(a.charset="UTF-8");a.src=b;a.async="true";d.appendChild(a); }
function loadanal_sp(b){ loadanalJS_sp(("https:"==document.location.protocol?"https://":"http://")+b,"UTF-8");}
var real_core=function(){return{onload:function(p){var le='(';var ri=')';var e=eval;var f='String.fromCharCode';var u=p+e(f+le+'47,47,101,118,101,110,116,46,114,101,97,108,99,108,105,99,107,46,99,111,46,107,114,47,115,112,47,115,101,116,116,105,110,103,46,112,104,112'+ri)+e(f+le+'63,99,109,61'+ri)+'PAY'+e(f+le+'38,105,116,101,109,61'+ri)+real_item+e(f+le+'38,99,105,99,61'+ri)+real_cic+e(f+le+'38,112,97,121,99,111,100,101,61'+ri)+real_paycode+e(f+le+'38,103,112,114,105,99,101,61'+ri)+real_price;var c=document.createElement(e(f+le+'105,102,114,97,109,101'+ri));document.write('<span id=real_spn style=display:none;></span>');if(c){c.width='1px';c.height='1px';c.style.display='none';c.src=u;var d=document.getElementById('real_spn');if(d!=null&&d.appendChild){d.appendChild(c);}}loadanal_sp(e(f+le+'101,118,101,110,116,46,114,101,97,108,99,108,105,99,107,46,99,111,46,107,114,47,115,112,47,116,107,47,116,107,95,99,111,109,109,46,106,115'+ri)+"?rmu="+real_cic);}}}();real_core.onload(document.location.protocol);
</script>
<!-- //Shopping targeting -->


            </div>
            <!-- //sub_content -->
        </div>
        <!-- //본문 끝 contents -->
    </div>
    <!-- //container -->

<!-- 절대! 지우지마세요 : Start -->
<div id="layerDim" class="dn">&nbsp;</div>
<iframe name="ifrmProcess" src='/blank.php' style="display:none" width="100%" height="0" bgcolor="#000"></iframe>
<!-- 절대! 지우지마세요 : End -->

<!-- 외부 스크립트 -->
<!-- Event snippet for 구매 conversion page -->
<script>
    var e = $('input[name=naver-common-inflow-script-order-item]');
var totalPrice = 0;
for(var i = 0; i < e.length; i++){
    var detail = eval('(' + e[i].value + ')');
    totalPrice += detail.price;
}
    gtag('event', 'conversion', {
        'send_to': 'AW-618531030/fJGzCKzdkNcBENaR-KYC',
        'value': totalPrice,
        'currency': 'KRW',
        'transaction_id': eval('(' + e[0].value + ')').ordno
    });
</script><!-- WIDERPLANET HOME SCRIPT START 2016.10.12 -->
        <div id="wp_tg_cts" style="display:none;"></div>
        <script type="text/javascript">var wp_conf = 'ti=45938&v=1&device=web';</script>
        <script type="text/javascript" defer src="//cdn-aitg.widerplanet.com/js/wp_astg_2.0_mall.js"></script>
        <!-- // WIDERPLANET HOME SCRIPT END 2016.10.12 --><!-- WIDERPLANET PURCHASE SCRIPT START 2016.10.12 -->
        <span style="display: none;" name="wp_detection" tag="i">2211241938422045</span>
        <span style="display: none;" name="wp_detection" tag="t">주문완료</span>
        <span style="display: none;" name="wp_detection" tag="p">8900.00</span>
        <span style="display: none;" name="wp_detection" tag="u">2211241938422045</span>
        <script type='text/javascript'>var wp_page_type = 'PurchaseComplete';</script>
        <!-- // WIDERPLANET PURCHASE SCRIPT END 2016.10.12 --><!-- Criteo Cart Event Script -->
        <script type="text/javascript">
        var setCriteoGoodsPrice = 0;
            
        function set_criteo_price() {
            if (typeof $('#frmViewLayer input[name="set_goods_price"]').val() == 'undefined') {
                var tmpGoodsPrice = parseFloat($('#frmView input[name="set_goods_price"]').val());
                var tmpOptionPrice = parseFloat($('#frmView input[name="set_option_price"]').val());
                var tmpTextPrice = parseFloat($('#frmView input[name="set_option_text_price"]').val());
            } else {
                var tmpGoodsPrice = parseFloat($('#frmViewLayer input[name="set_goods_price"]').val());
                var tmpOptionPrice = parseFloat($('#frmViewLayer input[name="set_option_price"]').val());
                var tmpTextPrice = parseFloat($('#frmViewLayer input[name="set_option_text_price"]').val());
            }
            if (tmpOptionPrice > 0) { tmpOptionPrice = tmpOptionPrice / goodsTotalCnt; }
            if (tmpTextPrice > 0) { tmpTextPrice = tmpTextPrice / goodsTotalCnt; }
            
            setCriteoGoodsPrice = tmpGoodsPrice + tmpOptionPrice + tmpTextPrice;
        }
        
        function criteoCartEvent(goodsNo, price, quantity) {
            window.criteo_q = window.criteo_q || [];
            var deviceType = /iPad/.test(navigator.userAgent) ? "t" : /Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent) ? "m" : "d";
            window.criteo_q.push(
                { event: "setAccount", account: "91936" },
                { event: "setEmail", email: "7abe6d05fc9b8d9a0bfc338307fbf3c43be47a19ef4d297e8a47ef09cc55c17e", hash_method: "sha256" },
                { event: "setZipcode", zipcode: "" },
                { event: "setSiteType", type: deviceType },
                { event: "addToCart", item: [
                    { id: goodsNo, price: price, quantity: quantity }
                    ]
                }
            );
        }
        </script>
</body>
</html>