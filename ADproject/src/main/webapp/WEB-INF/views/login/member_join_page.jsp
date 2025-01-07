<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<link rel="stylesheet" href="/a/resources/css/member_join_page.css">
		
		<script>
       
        function setGender(value) {
            document.getElementById('genderInput').value = value; 
        }
    </script>
		
		
	</head>

	<body>
		
		<div class = "login_form">
			<div class  = logoicon>
				<img id="logoIcon" src="/a/resources/img/logo_light.png" class="logo-img">
			</div>
		
		<form class="login_form1" action="member_insert.do" method="get">
    <div class="input_form_box">
        <input name="stepup_id" class="input_form"  placeholder="아이디">
        <input name="stepup_password" class="input_form" placeholder="비밀번호">
        <input name="stepup_email" class="input_form" placeholder="이메일">
    </div>

    <div class="input_form_box1">
        <input name="stepup_name" class="input_form" placeholder="이름">
        <input name="stepup_birthday" class="input_form" placeholder="생일">
        <input name="stepup_mobile" class="input_form" placeholder="핸드폰번호">
        <input name="stepup_nickname" class="input_form" placeholder="닉네임">
        <input name="stepup_address" class="input_form" placeholder="주소">
    </div>
     
    <div class = "g_button">
    	<input type="button" value="남자" onclick="setGender('M')">
            <input type="button" value="여자" onclick="setGender('F')">
    </div>
    
    <input type="hidden" id="genderInput" name="stepup_gender" value="">
    
    <div>
    	<input type = "submit" value = "회원가입">
    </div>
</form>
		
		
		</div>
	</body>
</html>