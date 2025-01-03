<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="/a/resources/css/cart.css">
		<script src="https://kit.fontawesome.com/86028631f0.js" crossorigin="anonymous"></script>
		
		<script>
		document.addEventListener("DOMContentLoaded", () => {
		    let category_button = document.getElementById("category_button");
		    let region_button = document.getElementById("region_button");
		    let academy_button = document.getElementById("academy_button");
		    let category_btn = document.getElementById("category_btn");
		    let region_btn = document.getElementById("region_btn");
		    let academy_btn = document.getElementById("academy_btn");
		    let searchBar = document.querySelector('.search_bar');
		    let main = document.querySelector('.main');
		    let category_box = document.querySelector('.category_box');
		    let region_box = document.querySelector('.region_box');
		    let isSmall = false;
		    const head = document.querySelector('.head');
		    let icon_btn = document.getElementById("icon");
		    let glass_icon = document.getElementById("glass_icon");
		    
		    

		    let buttons = [category_button, region_button, academy_button];

		    function hover_re(button) {
		        button.classList.add("hover-r");
		    }
		    
		    function hover_c(event) {
		        
		        if (!buttons.some((button) => button.contains(event.target))) {
		            buttons.forEach((button) => button.classList.remove("hover-r"));
		        }
		        if (!category_box.contains(event.target) && !category_button.contains(event.target)) {
		            category_box.classList.remove("show"); 
		        }
		        if (!region_box.contains(event.target) && !region_button.contains(event.target)) {
		            region_box.classList.remove("show"); 
		        }
		        
		    }

		    category_button.addEventListener("click", () => {
		        hover_re(category_button);
		        if (isSmall) {
		        	toggleSmall();
		        	isSmall = false;
		        	main.style.backgroundColor = "rgba(245, 245, 245, 0.5)";
		        	
		           
		        }
		        category_box.classList.add("show");
		        category_btn.focus();
		       
		       
		    });

		    region_button.addEventListener("click", () => {
		        hover_re(region_button);
				if (isSmall) {
					toggleSmall();
					isSmall = false;
					main.style.backgroundColor = "rgba(245, 245, 245, 0.5)";
					
		           
		        }
				region_box.classList.add("show");
		        region_btn.focus();
		       
		    });

		    academy_button.addEventListener("click", () => {
		        hover_re(academy_button);
				if (isSmall) {
					toggleSmall();
					isSmall = false;
					main.style.backgroundColor = "rgba(245, 245, 245, 0.5)";
					
		           
		        }
		        academy_btn.focus();
		      
		    });

		    
		    document.addEventListener("click", hover_c);
		    
		   
		    
		    function toggleSmall() {

		        let search_inputs = document.querySelectorAll('.search_input'); 
		        let label = document.querySelector('.label1');
		        let icon = document.querySelector('.icon_button');
		        let academyButton = document.getElementById("academy_button");
 
		        if (!isSmall) {
 
		            search_inputs.forEach((input) => {
		                input.style.display = "none"; 
		            });
		            if (label) label.style.display = "none";
		            icon.style.width = "40px";
		            icon.style.height = "40px";
		            academy_button.style.margin_top = "1px";
		            searchBar.style.width = '380px';
		            searchBar.style.height = "45%";
		            searchBar.querySelectorAll('.button_search, #academy_button').forEach(button => {
		                button.style.flexGrow = '0.5';
		            });
		            academyButton.style.marginRight = "0";
		            head.style.height = "80px";
		            
		            
		        } else {
		            search_inputs.forEach((input) => {
		                input.style.display = "block"; 
		            });
		            if (label) label.style.display = "block";
		            icon.style.width = "100px";
		            icon.style.height = "60px";
		            searchBar.style.width = '900px';
		            searchBar.style.height = "60%";
		            searchBar.querySelectorAll('.button_search, #academy_button').forEach(button => {
		                button.style.flexGrow = '';
		            });
		            academyButton.style.marginRight = "10px";
		            head.style.height = "120px";
		            category_button.classList.remove("hover-r");
		            region_button.classList.remove("hover-r");
		            academy_button.classList.remove("hover-r");
		            
		        }

		        isSmall = !isSmall;  
		    }

		 
		    
		    window.addEventListener('scroll', () => {

		        const scrollPosition = window.scrollY;
		       
		        
		       if (scrollPosition > 100 && !isSmall) {
          			toggleSmall();
          			main.style.backgroundColor = "";
          			category_box.classList.remove("show");
          			region_box.classList.remove("show");
          			 buttons.forEach((button) => {
          	            button.classList.add("hover-r");
          	        });
          			
          			
		        } else if (scrollPosition <= 100 && isSmall) {
		            toggleSmall();
		            main.style.backgroundColor = "";
		            category_box.classList.remove("show");
		            region_box.classList.remove("show");
		            buttons.forEach((button) => {
          	            button.classList.remove("hover-r");
          	        });
		        }
		       
		       
		    }); 
		    
		    
		    
		});
		</script>
		
		
		
	</head>  
	
	<body>
		<div class = "head_line">
		<div class = "head">
		<a href = "/a/mainhome.do"><img src="/a/resources/img/b_logo.png" class="logo_img" style="width: 150px; height: 75px;"></a>
			<div class = "search_bar">
				<div class = "button_search" id = "category_button" >
					<span class = "label">과목</span>
					<input type = "text" placeholder="과목 검색" class = "search_input" id = "category_btn">
				</div>
				
				<div class = "button_search" id = "region_button">
					<span class = "label">지역</span> 
					<input type = "text" placeholder="지역 검색" class = "search_input" id = "region_btn">
				</div>
				
				<div id = "academy_button" >
					<div class = "academy_tag">
						<div class = "button_search">
							<span class = "label">학원</span>
							<input type = "text" placeholder="학원 검색" class = "search_input" id = "academy_btn">
						</div>
					</div>
						
					<div id = "icon">
						<div class = "icon_button">
							<i class="fa-solid fa-magnifying-glass" id = "glass_icon"></i>
							<span class = "label1">검색</span>
						</div>
					</div> 
				</div> 
				
			</div>
			
		<div class = "category_box"> 
			<h4>과목</h4>
			<div class = "subject">
			<input type = "button" value = "영어" class = "button_design">
			<input type = "button" value = "영어" class = "button_design">
			<input type = "button" value = "영어" class = "button_design">
			<input type = "button" value = "영어" class = "button_design">
			<input type = "button" value = "영어" class = "button_design">
			<input type = "button" value = "영어" class = "button_design">
			</div>
		</div>
		
		<div class = "region_box">  
			<h4>지역</h4>
			<div class = "subject">
			<input type = "button" value = "서울" class = "button_design">
			<input type = "button" value = "영어" class = "button_design">
			<input type = "button" value = "영어" class = "button_design">
			<input type = "button" value = "영어" class = "button_design">
			<input type = "button" value = "영어" class = "button_design">
			<input type = "button" value = "영어" class = "button_design">
			</div>
		</div>
		
		<div class = "sub_nav">
		<i class="fa-solid fa-cart-shopping fa-2xl cart_icon" onclick="location.href='cart_page.do'"></i>
			<input type = "button" value = "로그인" class = "button_design2" onclick = "location.href='login_page.do'">
		</div>
			
		</div> 
	

		</div>
		
		 
	<!-- main자리 -->
		
			<main>




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

				<!-- 이 부분에  for-each를 써야할것으로 예상 -->
				<div class="cart_body">
 	        	 <div class="checkbox-wrapper">
              <input type="checkbox" id="cart-checkbox" />
                     </div>

					<div class="cart_body1">
					
					학원명 
					
					수강과목
					
					들어가는 부분입니다
					
					</div>


					<div class="cart_body2">
					
					강사님 및 수업 일자 시간 들어가는것입니다
					
					</div>
							
							
							
							

					<div class="cart_body3">
					
					수강료 들어갈 부분입니다

					</div>


					<div class="cart_body4">

						<span style="font-weight: bold; font-size: 15px; margin: -20px">중계수수료</span><br>
						<span style="font-weight: bold; font-size: 20px;">3,000원</span>

					</div>

				</div>
				
				<!--  아래는 카트라스트임 -->

		


			</div>

		</div>
		<!--여기까지 위에 부분은 카트 부분입니다 다음 부분은 주의 사항입니다  -->



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
				
				<button class="naver_pay_btn" onclick="location.href='check_out.do'">주문하기</button>


			</div>
		</nav>






		
		<ul class="story">

			<li>장바구니에 최대 200개의 상품을 담을 수 있습니다.</li>
			<li>장바구니 상품은 최대 90일간 저장됩니다.</li>
			<li>장바구니에 담긴 상품은 옵션 또는 추가상품 단위로 최대 100개의 상품만 동시 주문할 수 있습니다.</li>
			<li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
			<li>오늘출발 정보는 판매자가 설정한 정보에 의해 제공되며, 물류위탁 상품인 경우 물류사의 사정에 따라 실제와
				다를 수 있습니다.</li>
			<li>일부 상품의 경우 카드 할부기간이 카드사 제공 기간보다 적게 제공될 수 있습니다.</li>


		</ul>
		
			</main>
		
		<hr class ="border2"/>
		
		<footer>
			<div class ="foot">
				<a href = "#">스텝업 이용약관</a>
				<a href = "#">개인정보 처리방침</a>
				<a href = "#">스텝업 라운지</a>
				<a href = "#">스텝업 고객센터</a>
				<a href = "#"><i class="fa-regular fa-copyright"></i>SETPUP Corp.</a>
			</div>
		</footer>
	</body>
</html>