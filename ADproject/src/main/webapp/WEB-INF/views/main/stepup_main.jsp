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
		crossorigin="anonymous">
	</script>



	<script>
	let isDarkMode = true;
	
	function dlmode() {
	    const icon = document.getElementById('modeicon');
	    const logoicon = document.getElementById('logoIcon');
	    isDarkMode = !isDarkMode;
		
	    document.documentElement.setAttribute('color-theme', isDarkMode ? 'dark' : 'light');
	
	    if (isDarkMode) {
	    	icon.classList.replace('bi-brightness-high', 'bi-moon');
	        icon.innerHTML = '<path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"/>';
	    	logoicon.src = '/a/resources/img/logo.png';
	        
	    } else {
	    	icon.classList.replace('bi-moon', 'bi-brightness-high');
	        icon.innerHTML = '<path d="M8 11a3 3 0 1 1 0-6 3 3 0 0 1 0 6m0 1a4 4 0 1 0 0-8 4 4 0 0 0 0 8M8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0m0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13m8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5M3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8m10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0m-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0m9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707M4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708"/>';
	    	logoicon.src = "/a/resources/img/logo_light.png"
	    }
	}
	</script>
	<script>
	document.addEventListener("DOMContentLoaded", () => {
	    const toggleButton = document.getElementById("toggle");
	    const sideMenu = document.getElementById("side-menu");
	    const mainContent = document.querySelector("main");
	    const categoryTitle = document.querySelector(".category_title");
	    
	    
	
	    // 메뉴 열기/축소 상태 토글
	    toggleButton.addEventListener("click", () => {
	        const isOpen = sideMenu.classList.toggle("collapsed");
	
	        // 메인 콘텐츠 이동 조정
	        if (isOpen) {
	            mainContent.classList.add("shift-collapsed");
	            categoryTitle.innerHTML = categoryTitle.getAttribute("data-short");
	            mainContent.classList.remove("shift");
	            
	        } else {
	            mainContent.classList.remove("shift-collapsed");
	            categoryTitle.innerHTML = categoryTitle.getAttribute("data-full");
	            mainContent.classList.add("shift");
	            
	        }
	        
	    });
	});
	
	</script>



	<link rel="stylesheet" href="/a/resources/css/main.css">
</head>
	<body>
	
		<header>
			<!-- 로고 및 메뉴 아이콘 -->
			<div class="logo">
				<button class="mode" id="toggle">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
						fill="#f5f5f5" class="bi bi-list" viewBox="0 0 16 16">
		  			<path fill-rule="evenodd"
							d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5" />
					</svg>
				</button>
				
				<img id="logoIcon" src="/a/resources/img/logo.png" class="logo-img"
					width="60px">
			</div>
			
			<!-- 검색창 -->
			<div class="search-box">
				<input type="text" class="search-input" placeholder="검색어를 입력하세요">
				<button class="search-button">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="#f5f5f5" class="bi bi-search" viewBox="0 0 16 16">
		 		 		<path
							d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0" />
						</svg>
				</button>

			</div>
			<!-- 라이트모드 쿠폰 장바구니 로그인 -->
			<div class="tool">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="#f5f5f5" class="bi bi-ticket-perforated" viewBox="0 0 16 16">
	  					<path
						d="M4 4.85v.9h1v-.9zm7 0v.9h1v-.9zm-7 1.8v.9h1v-.9zm7 0v.9h1v-.9zm-7 1.8v.9h1v-.9zm7 0v.9h1v-.9zm-7 1.8v.9h1v-.9zm7 0v.9h1v-.9z" />
	  					<path
						d="M1.5 3A1.5 1.5 0 0 0 0 4.5V6a.5.5 0 0 0 .5.5 1.5 1.5 0 1 1 0 3 .5.5 0 0 0-.5.5v1.5A1.5 1.5 0 0 0 1.5 13h13a1.5 1.5 0 0 0 1.5-1.5V10a.5.5 0 0 0-.5-.5 1.5 1.5 0 0 1 0-3A.5.5 0 0 0 16 6V4.5A1.5 1.5 0 0 0 14.5 3zM1 4.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v1.05a2.5 2.5 0 0 0 0 4.9v1.05a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-1.05a2.5 2.5 0 0 0 0-4.9z" />
						</svg>
	
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="#f5f5f5" class="bi bi-cart3" viewBox="0 0 16 16">
	  					<path
						d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5M3.102 4l.84 4.479 9.144-.459L13.89 4zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4m7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4m-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2m7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2" />
						</svg>
	
				<button class="mode" onclick="dlmode()">
					<svg id="modeicon" xmlns="http://www.w3.org/2000/svg" width="16"
						height="16" fill="currentColor" class="bi bi-moon-fill"
						viewBox="0 0 16 16">
	  				<path
							d="M6 .278a.77.77 0 0 1 .08.858 7.2 7.2 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277q.792-.001 1.533-.16a.79.79 0 0 1 .81.316.73.73 0 0 1-.031.893A8.35 8.35 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.75.75 0 0 1 6 .278" />
					</svg>
				</button>
	
				<button class="login-button">로그인</button>
		</header>
	
		<!-- 사이드 메뉴 -->
		<aside id="side-menu">
			<div>
				<ul>
					<li><svg xmlns="http://www.w3.org/2000/svg" width="18"
							height="18" fill="#f5f5f5" class="bi bi-list" viewBox="0 0 16 16">
	                <path fill-rule="evenodd"
								d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5" />
	            </svg> <span class="menu_title">카테고리</span></li>
					<li><svg xmlns="http://www.w3.org/2000/svg" width="16"
							height="16" fill="#f5f5f5" class="bi bi-map" viewBox="0 0 16 16">
	                <path fill-rule="evenodd"
								d="M15.817.113A.5.5 0 0 1 16 .5v14a.5.5 0 0 1-.402.49l-5 1a.5.5 0 0 1-.196 0L5.5 15.01l-4.902.98A.5.5 0 0 1 0 15.5v-14a.5.5 0 0 1 .402-.49l5-1a.5.5 0 0 1 .196 0L10.5.99l4.902-.98a.5.5 0 0 1 .415.103M10 1.91l-4-.8v12.98l4 .8zm1 12.98 4-.8V1.11l-4 .8zm-6-.8V1.11l-4 .8v12.98z" />
	            </svg> <span class="menu_title">지역</span></li>
					<li><svg xmlns="http://www.w3.org/2000/svg" width="16"
							height="16" fill="#f5f5f5" class="bi bi-pen" viewBox="0 0 16 16">
	                <path
								d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001m-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708z" />
	            </svg> <span class="menu_title">과외</span>
				</ul>
				
		<!-- 사이드 메뉴2 -->
				<div class="stu">
					<div class="border_line">
						<hr class="border" />
					</div>
					<span class="category_title" data-full="학원목록" data-short="학원<br>목록">학원목록</span>
					<div class="ac_icon">
						<div class="stu-icon">
							<img class="stu_icon_i" src="/a/resources/img/메가스터디.png"
								alt="메가스터디 로고" width="60px">
						</div>
						<span class="stu_name">메가스터디</span>
					</div>
					<div class="ac_icon2">
						<div class="stu-icon">
							<img class="stu_icon_i" src="/a/resources/img/메가스터디.png"
								alt="메가스터디 로고" width="60px">
						</div>
						<span class="stu_name">메가스터디</span>
					</div>
				</div>
	
				<div class="stu">
					<div class="border_line">
						<hr class="border" />
					</div>
					<span class="category_title" data-full="파트너학원"
						data-short="파트너<br>학원">파트너학원</span>
					<div class="ac_icon">
						<div class="stu-icon">
							<img class="stu_icon_i" src="/a/resources/img/메가스터디.png"
								alt="메가스터디 로고" width="60px">
						</div>
						<span class="stu_name">메가스터디</span>
					</div>
				</div>
	
				<div class="stu">
					<div class="border_line">
						<hr class="border" />
					</div>
					<span class="category_title" data-full="서비스" data-short="서비스">서비스</span>
					<div class="ac_icon">
						<div class="stu-icon">
							<img class="stu_icon_i" src="/a/resources/img/메가스터디.png"
								alt="메가스터디 로고" width="60px">
						</div>
						<span class="stu_name">메가스터디</span>
					</div>
				</div>
		</aside>
		
		<div>
		<main>
			<!-- include 영역 -->
		</main>
		
		<!-- 하단 메뉴 -->
		<footer>
			<nav>
				<a href="#">스텝업 이용약관</a> <a href="#">스텝업 커뮤니티 가이드</a> <a href="#">개인정보
					처리방침</a> <a href="#"><svg xmlns="http://www.w3.org/2000/svg"
						width="8" height="8" fill="#f5f5f5" class="bi bi-c-circle"
						viewBox="0 0 16 16">
	              <path
							d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.146 4.992c-1.212 0-1.927.92-1.927 2.502v1.06c0 1.571.703 2.462 1.927 2.462.979 0 1.641-.586 1.729-1.418h1.295v.093c-.1 1.448-1.354 2.467-3.03 2.467-2.091 0-3.269-1.336-3.269-3.603V7.482c0-2.261 1.201-3.638 3.27-3.638 1.681 0 2.935 1.054 3.029 2.572v.088H9.875c-.088-.879-.768-1.512-1.729-1.512" />
	            </svg>STEPUP Corp.</a>
			</nav>
		</footer>
		</div>
	
	</body>
</html>