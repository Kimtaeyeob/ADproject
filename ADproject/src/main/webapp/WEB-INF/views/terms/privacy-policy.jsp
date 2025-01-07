<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>개인정보 처리방침</title>
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

        /* 메인 컨테이너 스타일 */
        .content-container {
            max-width: 800px;
            margin: 30px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
        }

        /* 헤더 스타일 */
        h1 {
            font-size: 36px;
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
            border-bottom: 2px solid #ddd;
            padding-bottom: 10px;
        }

        /* 섹션 제목 스타일 */
        h2 {
            font-size: 24px;
            color: #2c3e50;
            margin-top: 30px;
            border-bottom: 1px solid #ddd;
            padding-bottom: 10px;
        }

        /* 본문 텍스트 스타일 */
        p {
            margin: 10px 0;
            font-size: 18px;
            color: #555;
        }

        /* 리스트 스타일 */
        ul {
            list-style-type: disc;
            padding-left: 40px;
            margin: 10px 0;
        }

        ul li {
            margin-bottom: 8px;
            font-size: 18px;
            color: #555;
        }

        /* 푸터 스타일 */
        .footer {
            margin-top: 50px;
            text-align: center;
            font-size: 14px;
            color: #999;
            padding: 10px 0;
            background-color: #f5f5f5;
        }

        .footer a {
            text-decoration: none;
            color: #2c3e50;
            margin: 0 10px;
            transition: color 0.3s ease;
        }

        .footer a:hover {
            color: #000;
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
        <h1>개인정보 처리방침</h1>

        <h2>제1조 개인정보의 수집 및 이용 목적</h2>
        <p>StepUp은 다음과 같은 목적을 위해 개인정보를 수집하고 이용합니다:</p>
        <ul>
            <li>회원 가입 및 관리</li>
            <li>서비스 제공 및 개선</li>
            <li>고객 문의 응대</li>
            <li>마케팅 및 광고 활용</li>
        </ul>

        <h2>제2조 수집하는 개인정보 항목</h2>
        <p>StepUp은 다음과 같은 개인정보를 수집합니다:</p>
        <ul>
            <li>필수 항목: 이름, 이메일 주소, 전화번호</li>
            <li>선택 항목: 주소, 관심 학원 정보</li>
            <li>자동 수집 항목: 접속 IP, 쿠키, 접속 로그</li>
        </ul>

        <h2>제3조 개인정보의 보유 및 이용 기간</h2>
        <p>StepUp은 법령에 따라 개인정보를 보유하며, 수집 목적이 달성된 후에는 즉시 파기합니다.</p>

        <h2>제4조 개인정보의 파기 절차 및 방법</h2>
        <p>StepUp은 개인정보 파기 시 다음 절차와 방법을 따릅니다:</p>
        <ul>
            <li>전자적 파일 형태: 복구 불가능한 방법으로 영구 삭제</li>
            <li>종이 문서: 분쇄기로 분쇄하거나 소각</li>
        </ul>

        <h2>제5조 개인정보 제3자 제공</h2>
        <p>StepUp은 원칙적으로 사용자의 개인정보를 제3자에게 제공하지 않습니다. 단, 다음의 경우는 예외로 합니다:</p>
        <ul>
            <li>사용자가 사전에 동의한 경우</li>
            <li>법령에 따라 요구되는 경우</li>
        </ul>

        <h2>제6조 개인정보 처리 위탁</h2>
        <p>StepUp은 원활한 서비스 제공을 위해 일부 업무를 외부 업체에 위탁할 수 있습니다. 이 경우 위탁 업체와의 계약을 통해 개인정보를 안전하게 보호합니다.</p>

        <h2>제7조 사용자의 권리와 행사 방법</h2>
        <p>사용자는 개인정보에 대해 다음과 같은 권리를 행사할 수 있습니다:</p>
        <ul>
            <li>개인정보 열람, 수정, 삭제 요청</li>
            <li>동의 철회 및 처리 정지 요청</li>
        </ul>
        <p>위 요청은 StepUp 고객센터를 통해 처리됩니다.</p>

        <h2>제8조 개인정보 보호책임자</h2>
        <p>StepUp은 개인정보 보호를 위해 다음의 책임자를 지정하고 있습니다:</p>
        <ul>
            <li>성명: 정서한</li>
            <li>직위: 개인정보 보호책임자</li>
            <li>연락처: macseo@stepup.com</li>
        </ul>

        <h2>제9조 변경사항 고지</h2>
        <p>StepUp은 개인정보 처리방침을 변경할 경우, 웹사이트 공지사항을 통해 변경 내용을 고지합니다.</p>
        
         <div class="button-container">
            <!-- 뒤로가기 버튼 -->
            <button class="back-button" onclick="history.back()">뒤로가기</button>
        </div>
        
    </div>
</body>
</html>
