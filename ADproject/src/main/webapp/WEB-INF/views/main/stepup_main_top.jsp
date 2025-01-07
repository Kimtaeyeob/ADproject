<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/a/resources/css/main.css">
<script src="https://kit.fontawesome.com/86028631f0.js"
	crossorigin="anonymous"></script>

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
		
		function member_drop(){
			 const memberInfo = document.querySelector('.member_info');
		        if (memberInfo.style.display === 'none' || memberInfo.style.display === '') {
		            memberInfo.style.display = 'flex'; 
		        } else {
		            memberInfo.style.display = 'none';
		        }
		}
		
		</script>
		
</head>
<body>
<div class="head_line">
		<div class="head">
			<a href="mainhome.do"><img src="/a/resources/img/b_logo.png"
				class="logo_img" style="width: 150px; height: 75px;"></a>
			<div class="search_bar">
				<div class="button_search" id="category_button">
					<span class="label">과목</span> <input type="text"
						placeholder="과목 검색" class="search_input" id="category_btn">
				</div>

				<div class="button_search" id="region_button">
					<span class="label">지역</span> <input type="text"
						placeholder="지역 검색" class="search_input" id="region_btn">
				</div>

				<div id="academy_button">
					<div class="academy_tag">
						<div class="button_search">
							<span class="label">학원</span> <input type="text"
								placeholder="학원 검색" class="search_input" id="academy_btn">
						</div>
					</div>

					<div id="icon">
						<div class="icon_button">
							<i class="fa-solid fa-magnifying-glass" id="glass_icon"></i> <span
								class="label1">검색</span>
						</div>
					</div>
				</div>

			</div>

			<div class="category_box">
				<h4>과목</h4>
				<div class="subject">
					<input type="button" value="영어" class="button_design"> <input
						type="button" value="영어" class="button_design"> <input
						type="button" value="영어" class="button_design"> <input
						type="button" value="영어" class="button_design"> <input
						type="button" value="영어" class="button_design"> <input
						type="button" value="영어" class="button_design">
				</div>
			</div>

			<div class="region_box">
				<h4>지역</h4>
				<div class="subject">
					<input type="button" value="서울" class="button_design"> <input
						type="button" value="영어" class="button_design"> <input
						type="button" value="영어" class="button_design"> <input
						type="button" value="영어" class="button_design"> <input
						type="button" value="영어" class="button_design"> <input
						type="button" value="영어" class="button_design">
				</div>
			</div>

			<div class="sub_nav">
				<i class="fa-solid fa-message fa-2xl" class ="board_icon" onclick ="location.href='list.do'"></i>
				<i class="fa-solid fa-cart-shopping fa-2xl" class="cart_icon" onclick = "location.href='cart_page.do'"></i>
				 
				 <c:if test = "${member eq null}">
				 <input type="button" value="로그인" class="button_design2"
					onclick="location.href='login_page.do'">
				</c:if>
				<c:if test="${member ne null}">
				<input type="button" value="${ member.stepup_id }" class="button_design2" onclick = "member_drop();">
				<div class = "member_info">
					<a href = "member_info.do?stepup_id=${ sessionScope.stepup_id }" class = "member_ship">내정보</a>
					<a href = "#" class = "member_ship">수강내역</a>
					<a href = "logout.do" class = "member_ship">로그아웃</a>
				</div>
				</c:if>
			</div> 
 
		</div>

		<div class="category_icon">
			<i class="fa-solid fa-person-swimming fa-2xl"></i> 
			<i class="fa-solid fa-futbol fa-2xl"></i> 
			<i class="fa-solid fa-baseball fa-2xl"></i>
			<i class="fa-solid fa-square-root-variable fa-2xl"></i>
			<i class="fa-solid fa-e fa-2xl"></i>
			<i class="fa-solid fa-book-bookmark fa-2xl"></i> 
			<i class="fa-solid fa-eye fa-2xl"></i> 
			<i class="fa-solid fa-school-flag fa-2xl"></i> 
			<i class="fa-solid fa-notes-medical fa-2xl"></i>
			<i class="fa-brands fa-instagram fa-2xl"></i>
		</div>
	</div>

</body>
</html>