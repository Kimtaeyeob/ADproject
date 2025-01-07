<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>스텝업 고객센터</title>
    <style>
        @charset "UTF-8";

        /* 전체 레이아웃 */
        body {
            font-family: 'JUA', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
            line-height: 1.6;
        }

        /* 헤더 스타일 */
        h1 {
            font-size: 36px;
            text-align: center;
            margin: 30px 0;
            color: #2c3e50;
            border-bottom: 2px solid #ddd;
            padding-bottom: 15px;
        }

        h2 {
            font-size: 24px;
            color: #2c3e50;
            margin-top: 30px;
            border-bottom: 1px solid #ddd;
            padding-bottom: 10px;
        }

        h3 {
            font-size: 20px;
            margin-top: 20px;
            color: #555;
        }

        /* 본문 스타일 */
        p {
            margin: 10px 20px;
            font-size: 18px;
            color: #555;
        }

        ul {
            list-style-type: disc;
            padding-left: 40px;
            margin: 10px 20px;
        }

        /* 섹션 컨테이너 */
        .content-container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
        }

        /* 문의 정보 스타일 */
        .contact-info {
            margin-top: 20px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 10px;
            background-color: #f5f5f5;
            font-size: 18px;
            line-height: 1.8;
        }

        /* FAQ 스타일 */
        .faq {
            margin-top: 20px;
        }

        .faq h3 {
            font-size: 20px;
            color: #333;
        }

        .faq p {
            font-size: 18px;
            color: #666;
            margin: 5px 20px;
        }
        
         /* 버튼 스타일 */
        .button-container {
            display: flex;
            justify-content: center; /* 가로 중앙 정렬 */
            margin-top: 30px; /* 상단 여백 */
        }

        /* 버튼 스타일 */
        .back-button {
            display: inline-block;
            margin: 30px auto;
            padding: 10px 20px;
            font-size: 18px;
            font-family: 'JUA';
            color: #fff;
            background-color: #2c3e50;
            border: none;
            border-radius: 30px;
            text-align: center;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s ease, transform 0.2s ease;
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.1);
        }

        .back-button:hover {
            background-color: #1a252f;
            transform: scale(1.05);
        }
    </style>
</head>

<body>
    <div class="content-container">
        <h1>스텝업 고객센터</h1>
        <p>StepUp을 이용해 주셔서 감사합니다. 아래에서 고객 지원 및 문의 방법을 확인하실 수 있습니다.</p>

        <h2>문의 방법</h2>
        <div class="contact-info">
            <p>전화: 1234-5678</p>
            <p>이메일: support@stepup.com</p>
            <p>운영 시간: 월~금, 오전 9시 ~ 오후 6시</p>
            <p>주소: 서울특별시 강남구 테헤란로 123, StepUp 본사</p>
        </div>

        <h2>자주 묻는 질문 (FAQ)</h2>
        <div class="faq">
            <h3>Q1. 회원 가입은 어떻게 하나요?</h3>
            <p>A1. 홈페이지 상단의 "회원가입" 버튼을 클릭한 후 필요한 정보를 입력하시면 됩니다.</p>

            <h3>Q2. 학원 정보를 수정하려면 어떻게 하나요?</h3>
            <p>A2. 학원 관계자 계정으로 로그인한 후 "내 학원 관리" 메뉴에서 정보를 수정할 수 있습니다.</p>

            <h3>Q3. 비밀번호를 잊어버렸어요.</h3>
            <p>A3. 로그인 페이지에서 "비밀번호 찾기"를 클릭하여 이메일을 통해 비밀번호를 재설정하세요.</p>
        </div>

        <h2>기타 문의</h2>
        <p>위 FAQ에서 해결되지 않는 문제가 있다면 언제든지 고객센터로 연락해 주세요.</p>

         <div class="button-container">
            <!-- 뒤로가기 버튼 -->
            <button class="back-button" onclick="history.back()">뒤로가기</button>
        </div>
        
    </div>
</body>
</html>
