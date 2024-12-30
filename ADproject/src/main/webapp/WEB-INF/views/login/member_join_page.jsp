<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<!-- 부트스트랩 CDN -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
			crossorigin="anonymous">
			
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
			crossorigin="anonymous">
		</script>
		
		<!-- css -->
		<link rel="stylesheet" href="/a/resources/css/member_join_page.css">
		
	</head>
	
	<script>
		window.onload=()=>{
			 document.querySelector('.telecom_drop_btn').onclick = ()=>{
			        dropdown();
			      }
			
			dropdown = () => {
				var telecom_company_content = document.querySelector("telecom_company_content");
				telecom_company_content.classList.toggle("show");
			}
		}
	
	</script>
	
	
	<body>
		<img id="logoIcon" src="/a/resources/img/logo_light.png" class="logo-img"
						width="60px">
		<div class = "join_form">
			<form>
				<div class = "member_infor">
					<input>
					<input>
					<input>
					<span>입력</span>
					<span>입력</span>
				</div>
				
				<div class = "personal_infor">
					<input>
					<input>
					
				<div>
					<button class = "telecom_drop_btn">
						<span>
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-broadcast" viewBox="0 0 16 16">
	  							<path d="M3.05 3.05a7 7 0 0 0 0 9.9.5.5 0 0 1-.707.707 8 8 0 0 1 0-11.314.5.5 0 0 1 .707.707m2.122 2.122a4 4 0 0 0 0 5.656.5.5 0 1 1-.708.708 5 5 0 0 1 0-7.072.5.5 0 0 1 .708.708m5.656-.708a.5.5 0 0 1 .708 0 5 5 0 0 1 0 7.072.5.5 0 1 1-.708-.708 4 4 0 0 0 0-5.656.5.5 0 0 1 0-.708m2.122-2.12a.5.5 0 0 1 .707 0 8 8 0 0 1 0 11.313.5.5 0 0 1-.707-.707 7 7 0 0 0 0-9.9.5.5 0 0 1 0-.707zM10 8a2 2 0 1 1-4 0 2 2 0 0 1 4 0"/></svg>
							통신사 선택 
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
	  							<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/></svg>
						</span>
					</button>
					
					<div class = "telecom_company_content">
						<div class = "telecom_category">
							<div class="telecom" onclick="dropMenu">SKT</div>
							<div class="telecom" onclick="dropMenu">SKT 알뜰폰</div>
						</div>
						
						<div class = "telecom_category">
							<div class="telecom" onclick="dropMenu">KT</div>
							<div class="telecom" onclick="dropMenu">KT 알뜰폰</div>
						</div>
						
						<div class = "telecom_category">
							<div class="telecom" onclick="dropMenu">LG U+</div>
							<div class="telecom" onclick="dropMenu">LG U+ 알뜰폰</div>
						</div>
					</div>
				</div>
					<input type = "button" value = "남자">
					<input type = "button" value = "여자">
					<input type = "button" value = "선택안함">
					
				<input>
				</div>
			
			</form>				
		</div>
	</body>
</html>