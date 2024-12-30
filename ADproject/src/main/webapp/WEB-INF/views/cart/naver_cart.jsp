<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>


<link rel="stylesheet" href="/naver/resources/css/cart.css">

<script>
	function list_up() {
		let up = document.getElementById("up");
		let payment_list = document.getElementById("payment_list");

		up.addEventListener("click", function() {
			if (payment_list.style.display === "none"
					|| payment_list.style.display === "") {
				payment_list.style.display = "block"; // 보이기

			} else {
				payment_list.style.display = "none"; // 숨기기
			}
		});

	}
</script>

<script>/*체크 박스*/

let check = true;

function check_click() {
  let check_box = document.getElementById("check_box");
  let check_img = document.getElementById("check_img");

  check = !check;

  if (check) {
    // 클래스 변경 및 이미지 업데이트
    check_img.setAttribute("class", "bi bi-check-square-fill");
    check_img.setAttribute("fill", "#69C368"); // 색상 변경
    check_img.innerHTML = `
      <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zm10.03 4.97a.75.75 0 0 1 .011 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.75.75 0 0 1 1.08-.022z"/>
    `;
  } else {
    // 클래스 변경 및 이미지 복구
    check_img.setAttribute("class", "bi bi-check-square");
    check_img.innerHTML = `
      <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2z"/>
      <path d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425z"/>
    `;
  }
}


</script>


<script>
	function show_info() {
		let cart_label_btn = document.getElementById("cart_label_btn");
		let label_btn_info = document.getElementById("label_btn_info");

		cart_label_btn.addEventListener("click", function() {
			if (label_btn_info.style.display === "none"
					|| label_btn_info.style.display === "") {
				label_btn_info.style.display = "block"; // 보이기

			} else {
				label_btn_info.style.display = "none"; // 숨기기
			}
		});
		
	}


</script>



</head>

<body>
	<header>
		<div class="search_box" class="search_bar">
			<img src="/naver/resources/img/naver_store.png" />
			<div>
				<div class="input_search">
					<input type="text" placeholder="상품명 또는 브랜드 입력" id="text_box">
					<input type="button" value="검색" id="search_btn">
				</div>
			</div>

		</div>
		<hr>

		<div class="second">
			<div class="dev">
				<a href="/" class="link_dev">일반배송</a> | <a href="/"
					class="link_dev2">지정배송</a>

			</div>

			<div class="dev2">

				<p>
					<b>장바구니</b>> 주문/결제 > 완료
				</p>

			</div>
		</div>
	</header>
	<hr>
	<main>

		<div class="select">

			<div class="select_all">
				<button id="check_box" onclick="check_click();">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-check-square" viewBox="0 0 16 16"
						id="check_img">
  					<path
							d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2z" />
  					<path
							d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425z" />
					</svg>
					전체 선택
				</button>

				<div id="select_del">
					<input type="button" value="X 선택삭제" id="select_del_btn">
				</div>
			</div>
		</div>


		<div class="cart_main_back">

			<div class="cart_main_front">

				<!-- 카트 부분 헤더부분 코드임 -->

				<div class="cart_header">

					<button id="check_box2" onclick="check_click();">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-check-square"
							viewBox="0 0 16 16" id="check_img">
  					<path
								d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2z" />
  					<path
								d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425z" />
					</svg>
					</button>
					<h2 class="cart_link">
						<a href="/" id="cart_link2"> 학원가는 링크</a>
					</h2>

					<input type="button" value="쿠폰받기" id="cupon">
			
				</div>
			

			<!-- 카트 바디  부분 임!!!!! -->

				
				<div class="cart_body">
 	        	 <div class="checkbox-wrapper">
              <input type="checkbox" id="cart-checkbox" />
                     </div>

					<div class="cart_body1">
					
					<div id="cart_body_head">
						<span style="color:green; margin-right: 280px;">선물가능상품</span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
  <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z"/>
</svg>
					
					</div>
					
					<div id="cart_body_mid">
					
						<label id="cart_label"> 오늘출발</label> 15:00 까지 결제 시 오늘 바로 발송 <button id="cart_label_btn" onclick="show_info()"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-circle" viewBox="0 0 16 16">
  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
  <path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286m1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94"/>
</svg></button>
					<div id="label_btn_info" style="display:none;">
					오늘출발 정보는 판매자가 설정한<br> 정보에의해 제공되며 , 물류 위탁 상<br>품인 경우
					물류상의 사정에 따라 실<br>제와 다를 수 있습니다. 
					</div>
					</div>
					<a href="/" id="cart_body_btm"><img src="/naver/resources/img/product.png"></a>
					
					</div>


					<div class="cart_body2">
					<div id="cart_body2_head">
					상품 주문 수량 :1개	
			    	</div>
					<div id="cart_body2_mid">
					추가상품: SSD 케이블 : 고성능 USB C <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
  <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z"/>
</svg><br>플랫 숏 케이블 / 1개 (+10.900원)
		    	</div>
					<input type="button" id="cart_body2_btn" value="주문수정">
					
					</div>
							
							
							
							

					<div class="cart_body3">
						<span
							style="font-weight: bold; font-size: 15px; text-align: center;">상품금액<br>
						<span style="font-weight: bold; font-size: 20px;">16,800원</span></span>


						<div>
							<input type="button" value="주문하기" id="cart_body3_btn">

						</div>


					</div>


					<div class="cart_body4">

						<span style="font-weight: bold; font-size: 15px; margin: -20px">배송비</span><br>
						<span style="font-weight: bold; font-size: 20px;">3,000원</span>

					</div>

				</div>
				
				<!--  아래는 카트라스트임 -->

				<div class="cart_last">

					<div class="cart_last2">

						<span
							style="font-weight: bold; font-size: 20px; align-items: center;">
							선택상품금액<br>
						</span> <span
							style="font-weight: bold; font-size: 20px; align-items: center;">
							19,800원</span>

					</div>


					<div class="cart_plus">
						<!-- + 이미지 임  -->
						<svg xmlns="http://www.w3.org/2000/svg" width="100" height="28"
							fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
  <path
								d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2z" />
  <path
								d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4" />
</svg>
					</div>



					<div class="cart_last3">

						<span style="font-weight: bold; font-size: 20px;"> 총 배송비</span><br>
						<span style="font-weight: bold; font-size: 20px;"> 3,000원</span>

					</div>



					<div calss="cart_minus">
						<svg xmlns="http://www.w3.org/2000/svg" width="100" height="28"
							fill="currentColor" class="bi bi-dash-square" viewBox="0 0 16 16">
  <path
								d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2z" />
  <path d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8" />
</svg>

					</div>


					<div class="cart_last4">
						<span style="font-weight: bold; font-size: 20px;">즉시할인예상금액</span>
						<br> <span
							style="color: red; font-weight: bold; font-size: 20px; align-items: center;">3,100</span>

					</div>



					<div class="cart_last5">
						<span style="font-weight: bold; font-size: 20px;">주문금액</span> <span
							style="color: green; font-weight: bold; font-size: 20px;">19,800</span>
					</div>

					<div class="cart_last6">
						<input type="button" value="크리에이템 1건 주문하기" id="cart_order_btn">

					</div>

				</div>



			</div>

		</div>
		<!--여기까지 위에 부분은 카트 부분입니다 다음 부분은 유희 사항입니다  -->





		<ul class="story">

			<li>장바구니에 최대 200개의 상품을 담을 수 있습니다.</li>
			<li>장바구니 상품은 최대 90일간 저장됩니다.</li>
			<li>장바구니에 담긴 상품은 옵션 또는 추가상품 단위로 최대 100개의 상품만 동시 주문할 수 있습니다.</li>
			<li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
			<li>오늘출발 정보는 판매자가 설정한 정보에 의해 제공되며, 물류위탁 상품인 경우 물류사의 사정에 따라 실제와
				다를 수 있습니다.</li>
			<li>일부 상품의 경우 카드 할부기간이 카드사 제공 기간보다 적게 제공될 수 있습니다.</li>


		</ul>
		<hr>

		<div class="last_info">

			<div class="last_info_head">

				<a href="/">네이버 이용약관 |</a> <a href="/">네이버페이 이용약관 |</a> <a href="/"><b>개인정보
						처림방침</b> |</a> <a href="/">법적고지 및 주의사항 | </a> <a href="/">입점안내 |</a> <a
					href="/">쇼핑윈도 노출안내 </a><br> <a href="/">쇼핑파트너센터 |</a> <a
					href="/">스마트토어센터 |</a> <a href="/">안전거래센터 |</a> <a href="/">전자금융거래약관
					|</a> <a href="/">쇼핑 & 페이 고객센터 |</a>


			</div>


			<div id="last_info_mid">네이버(주)는 통신판매중개자이며,통신판매의 당사자가
				아닙니다.상품,상품정보,거래에 관한 의무와 책임은 판매자에게 있습니다.</div>



			<div class="last_info_bot">


				<span>사업자등록번호: 220-81-62517 |</span> <span>통신판매업신고번호:
					제2006-경기성남-0692호 |</span> <span>대표이사: 최수연 |</span> <span>사업자등록정보확인
					|</span> <span>이메일: <a href="mailto:helpcustomer@naver.com"
					class="highlight">helpcustomer@naver.com</a></span><br> <span>주소:
					경기도 성남시 분당구 정자일로 95, NAVER 1784, 13561 |</span> <span>대표전화:
					1588-3819 |</span> <span><a href="/" class="highlight">1:1문의
						바로가기 |</a></span> <span>호스팅 서비스 제공: NAVER Cloud</span>



				<div id="copyright">


					<a href="https://www.naver.com/" id="naver_logo"><img
						src="/naver/resources/img/naver_logo.png" /></a>

					<div class="copyright">
						Copyright © <span style="font-weight: bold;">NAVER Corp</span>.
						All Rights Reserved.
					</div>



				</div>
			</div>
		</div>




	</main>
	<footer>
		<nav class="payment">

			<div id="payment_list">
				<div>
					<h6 class="payment_list1">주문금액 상세내역</h6>
					<div class="list">
						<div>총 선택상품 금액</div>
						<div>총 배송비</div>
						<div>즉시할인예상금액</div>
					</div>
					<hr />

					<h6 class="payment_list2">총 주문금액</h6>
				</div>
			</div>

			<div class="payment2">
				<span class="order">총 1건 주문금액</span>
				<h2 class="order2">19,800원</h2>
				<button id="up" onclick="list_up()">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="#f5f5f5" class="bi bi-arrow-up-circle" viewBox="0 0 16 16">
  						<path fill-rule="evenodd"
							d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0m-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707z" /></svg>
				</button>
				<button class="naver_pay_btn">선물하기</button>
				<button class="naver_pay_btn2">주문하기</button>


			</div>
		</nav>


	</footer>
</body>
</html>


































