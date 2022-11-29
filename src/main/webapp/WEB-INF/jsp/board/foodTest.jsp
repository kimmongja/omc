<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
<title>오늘 뭐 먹지?! 오메추</title>
<%@ include file="/WEB-INF/include/include-header.jspf" %>

<!-- 취향 테스트 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/omc/resoutces/css/foodtest/default.css">
<link rel="stylesheet" href="/omc/resoutces/css/foodtest/main.css">
<link rel="stylesheet" href="/omc/resoutces/css/foodtest/qna.css">
<link rel="stylesheet" href="/omc/resoutces/css/foodtest/animation.css">
<link rel="stylesheet" href="/omc/resoutces/css/foodtest/result.css">

</head>
<body>
<button id="foodTestBtn" class="btn">모달 테스트</button>
  <!-- 회원가입 확인 Modal-->
	<div class="modal fade" id="foodTestModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<div class="modal-body pb-5">
					<button type="button" style="float: right;" class="close" id="close" data-dismiss="modal" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					</button>
					<div class="container">
					    <section id="main" class="mx-auto my-5 py-5 px-3">
					    	<h1>오늘 땡기는 음식은?!</h1>
					    	<div class="col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
					    		<img src="/omc/resoutces/img/main.png" alt="mainImage" class="img-fluid">
					    	</div>
					    	<p>
					        	재미로 알아보는 음식 취향 테스트입니다! <br>
					        	아래 시작하기 버튼을 눌러 시작해주세요~
					    	</p>
					    	<button type="button" class="btn btn-outline-danger mt-3" onclick="js:begin()">시작하기</button>
					    </section>
					    <section id="qna">
					    	<div class="status mx-auto mt-5">
					    		<div class="statusBar">
					    		</div>
					    	</div>
					    	<div class="qBox my-5 py-3 mx-auto">
					
					   		</div>
					    	<div class="row row-cols-1 row-cols-md-2 g-2 answerBox mx-auto">
					   			<div class="col">
									<div class="card">
					    				<img src="/omc/resoutces/img/main.png" class="card-img-top leftImage" alt="...">
					    			</div>
					    		</div>
					    		<div class="col">
					    			<div class="card">
					    				<img src="/omc/resoutces/img/main.png" class="card-img-top rightImage" alt="...">
					    			</div>
					    		</div>
					    	</div>
					    </section>
					    <section id="result" class="mx-auto my-5 py-5 px-3">
					    	<h1>당신의 결과는?!</h1>
					    	<div class="resultname">
					
					    	</div>
					    	<div id="resultImg" class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
				
					    	</div>
					    	<div class="resultDesc">
					
					    	</div>
					    	<button type="button" class="kakao mt-3 py-2 px-3" onclick="js:setShare()">공유하기</button>
					    	<button type="button" class="btn btn-outline-danger mt-3" id="exit" data-dismiss="modal" aria-label="Close">종료하기</button>
					    </section>
					
					    <script src="/omc/resoutces/js/foodtest/data.js" charset="utf-8"></script>
					    <script src="/omc/resoutces/js/foodtest/start.js" charset="utf-8"></script>
					    <script src="/omc/resoutces/js/foodtest/share.js" charset="utf-8"></script>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //Modal -->
	<script>
		$('#foodTestBtn').click(function(e){
			e.preventDefault();
			$('#foodTestModal').modal("show");
		});
	
		$('#close').click(function(e){
			e.preventDefault();
			$('#foodTestModal').modal("hide");
		});
		
		$('#exit').click(function(e){
			e.preventDefault();
			$('#foodTestModal').modal("hide");
		});
	</script>
</body>
</html>