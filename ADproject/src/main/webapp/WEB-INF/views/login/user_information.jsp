<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
    <link rel="stylesheet" href="/a/resources/css/user.css/"/>
</head>
<body>
    <div class="info_mid">
        <!-- 메뉴 창 -->
        <div class="side_menu">
            <button id="top">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                    <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6m2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0m4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4m-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10s-3.516.68-4.168 1.332c-.678.678-.83 1.418-.832 1.664z"/>
                </svg>
                내 프로필
            </button>
            <div class="wrapper_top">
                <button id="wrapper_top_btn">내정보</button>
                <button id="wrapper_top_btn">내수강내역</button>
                <button id="wrapper_top_btn">팔로잉학원</button>
            </div>
            <div class="wrapper_mid">
                <button id="wrapper_top_btn">STEPUP라운지</button>
                <button id="wrapper_top_btn">작성한글</button>
            </div>
            <div class="wrapper_btm">
                <button id="wrapper_top_btn">작성한댓글</button>
            </div>
            <div class="wrapper_btm_last">
                <button id="wrapper_top_btn" onclick = "location.href = 'logout.do'">로그아웃</button>
            </div>
        </div>
        <!-- 메인창 -->
        <div class="profile_info">
            <div id="info_top">
                <span style="color: #5545D2;">STEPUP</span> 프로필
            </div>
            <div id="info_mid">
                <div id="introduce">
                    <span style="font-weight: bold; font-size: 31px;">${ member.stepup_nickname }</span><br>
                    <p>한줄 자기소개를 작성하세요</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
