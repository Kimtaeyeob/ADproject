<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${termsTitle}</title>
   
      <style>
        @charset "UTF-8";

        /* 전체 레이아웃 */
        body {
            font-family: 'JUA', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
        }

        /* 헤더 스타일 */
        h1 {
            font-size: 36px;
            text-align: center;
            margin-top: 50px;
            color: #2c3e50;
            border-bottom: 2px solid #ddd;
            padding-bottom: 15px;
        }

        /* 섹션 헤더 스타일 */
        h2 {
            font-size: 24px;
            color: #2c3e50;
            margin-top: 30px;
            margin-bottom: 10px;
            border-bottom: 1px solid #ddd;
            padding-bottom: 5px;
        }

        /* 본문 텍스트 스타일 */
        p, ul {
            margin: 10px 20px;
            font-size: 18px;
            color: #555;
        }

        ul {
            list-style-type: disc;
            padding-left: 40px;
        }

        ul li {
            margin-bottom: 8px;
        }

        /* 컨테이너 스타일 */
        .content-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
        }

        /* 버튼 스타일 */
        .button-container {
            display: flex;
            justify-content: center; /* 가로 중앙 정렬 */
            margin-top: 30px; /* 상단 여백 */
        }

        .back-button {
            display: inline-block;
            padding: 15px 30px;
            font-size: 18px;
            font-family: 'JUA', sans-serif;
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
    </style>
   
</head>

<body>
    <div class="content-container">
        <h1>${termsTitle}</h1>
        <h2>제1조 목적</h2>
        <p>본 약관은 학원 찾기 서비스를 제공하는 StepUp과 이를 이용하는 사용자 간의 권리, 의무 및 책임 사항을 규정하는 것을 목적으로 합니다.</p>

        <h2>제2조 서비스 제공</h2>
        <p>StepUp은 학원 검색, 학원 정보 제공, 사용자 리뷰 작성, 학원 비교 등의 서비스를 제공합니다.</p>

        <h2>제3조 사용자의 의무</h2>
        <ul>
            <li>사용자는 StepUp이 제공하는 서비스를 불법적인 목적으로 이용해서는 안 됩니다.</li>
            <li>사용자는 자신의 계정 정보를 타인에게 양도하거나 공유할 수 없습니다.</li>
            <li>허위 정보를 등록하거나 타인의 개인정보를 도용하여 서비스를 이용해서는 안 됩니다.</li>
        </ul>

        <h2>제4조 StepUp의 책임</h2>
        <ul>
            <li>StepUp은 서비스 제공과 관련하여 필요한 최선의 노력을 다합니다.</li>
            <li>StepUp은 사용자에게 학원 정보를 제공하지만, 정보의 정확성과 신뢰성에 대해 보장하지 않습니다.</li>
            <li>StepUp은 사용자 간, 또는 사용자와 학원 간의 거래에 대해 책임을 지지 않습니다.</li>
        </ul>

        <h2>제5조 개인정보 보호</h2>
        <ul>
            <li>StepUp은 사용자의 개인정보를 개인정보 처리방침에 따라 안전하게 관리합니다.</li>
            <li>StepUp은 사용자의 동의 없이 제3자에게 개인정보를 제공하지 않습니다. 다만, 법령에 따라 요구되는 경우 예외로 합니다.</li>
        </ul>

        <h2>제6조 면책 조항</h2>
        <ul>
            <li>StepUp은 천재지변, 시스템 장애, 통신 장애 등으로 인한 서비스 중단에 대해 책임을 지지 않습니다.</li>
            <li>StepUp은 사용자가 게시한 콘텐츠에 대해 어떠한 책임도 지지 않으며, 법령을 위반하거나 부적절한 콘텐츠는 삭제할 수 있습니다.</li>
        </ul>

        <h2>제7조 서비스 이용 제한</h2>
        <ul>
            <li>StepUp은 법령 또는 약관을 위반한 경우, 사용자에게 사전 통지 없이 서비스 이용을 제한할 수 있습니다.</li>
            <li>StepUp은 서비스의 정상적인 운영을 방해한 경우, 기타 필요하다고 판단되는 경우 서비스 제한을 할 수 있습니다.</li>
        </ul>

        <h2>제8조 저작권 및 지적 재산권</h2>
        <ul>
            <li>StepUp이 제공하는 모든 콘텐츠의 저작권은 StepUp 또는 해당 권리자에게 있습니다.</li>
            <li>사용자는 StepUp의 사전 동의 없이 콘텐츠를 복제, 배포하거나 상업적으로 이용할 수 없습니다.</li>
        </ul>

        <h2>제9조 분쟁 해결</h2>
        <ul>
            <li>본 약관과 관련하여 분쟁이 발생할 경우, StepUp과 사용자는 성실히 협의하여 해결하도록 노력합니다.</li>
            <li>분쟁이 해결되지 않을 경우, 관할 법원은 StepUp 본사가 위치한 지역의 법원으로 합니다.</li>
        </ul>

        <h2>제10조 기타</h2>
        <ul>
            <li>본 약관에서 정하지 않은 사항은 관련 법령에 따릅니다.</li>
            <li>StepUp은 필요 시 약관을 변경할 수 있으며, 변경된 약관은 공지된 날로부터 7일 후 효력을 가집니다.</li>
        </ul>
        
        <div class="button-container">
            <!-- 뒤로가기 버튼 -->
            <button class="back-button" onclick="history.back()">뒤로가기</button>
        </div>
        
    </div>
    
    

    <div class="footer">
        <p>&copy; 2025 StepUp Corp. All Rights Reserved.</p>
        <a href="terms.do">이용약관</a>
        <a href="privacy-policy.do">개인정보 처리방침</a>
    </div>
</body>
</html>
