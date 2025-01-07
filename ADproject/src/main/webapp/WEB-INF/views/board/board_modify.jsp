<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 수정하기</title>

<style>
    @charset "UTF-8";

    /* 전체 초기화 */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    /* 폰트 */
    @font-face {
        font-family: 'JUA';
        src: url("/a/resources/font/JUA.ttf") format('truetype');
    }

    body {
        font-family: 'JUA', sans-serif;
        background-color: #f9f9f9;
        color: #333;
    }

    header {
        background-color: #0B0C0D;
        color: #fff;
        padding: 20px;
        text-align: center;
        font-size: 24px;
        border-radius: 0 0 15px 15px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }

    form {
        max-width: 800px;
        margin: 30px auto;
        background-color: #fff;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        padding: 15px;
        text-align: left;
        border-bottom: 1px solid #eee;
        font-size: 18px;
    }

    th {
        background-color: #0B0C0D;
        color: white;
        font-weight: bold;
        border-radius: 8px;
    }

    input[type="text"], textarea {
        width: 100%;
        padding: 12px;
        border: 1px solid #ddd;
        border-radius: 10px;
        font-size: 16px;
        background-color: #f5f5f5;
        transition: box-shadow 0.3s ease, border-color 0.3s ease;
    }

    input[type="text"]:focus, textarea:focus {
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        border-color: #0B0C0D;
        outline: none;
    }

    textarea {
        resize: none;
    }

    .button-container {
        text-align: right;
        margin-top: 20px;
    }

    .button-container img {
        cursor: pointer;
        margin-left: 15px;
        transition: transform 0.2s ease, opacity 0.3s ease;
        border-radius: 8px;
    }

    .button-container img:hover {
        transform: scale(1.1);
        opacity: 0.9;
    }

    footer {
        background-color: #0B0C0D;
        color: #fff;
        text-align: center;
        padding: 20px 0;
        margin-top: 40px;
        border-radius: 15px 15px 0 0;
        cursor: pointer;
        transition: background-color 0.3s ease, color 0.3s ease;
    }

    footer:hover {
        background-color: #333;
        color: #ddd;
    }
</style>

<script>
    function send_check() {
        let f = document.f;

        f.method = "get";
        f.action = "modify_fin.do";

        f.submit();
    }
</script>
</head>
<body>

<header>
    <h1>게시물 수정하기</h1>
</header>

<form name="f">
    <input type="hidden" name="board_idx" value="${param.board_idx}">
    <input type="hidden" name="page" value="${param.page}">

    <table>
        <tr>
            <th>작성자</th>
            <td><input type="text" name="board_name" value="${vo.board_name}"></td>
        </tr>
        <tr>
            <th>제목</th>
            <td><input type="text" name="board_subject" value="${vo.board_subject}"></td>
        </tr>
        <tr>
            <th>내용</th>
            <td><textarea rows="10" name="board_content">${vo.board_content}</textarea></td>
        </tr>
        <tr>
            <td colspan="2" class="button-container">
                <img src="/a/resources/img/btn_reg.gif" onclick="send_check()" alt="등록" title="등록">
                <img src="/a/resources/img/btn_back.gif" onclick="history.back()" alt="뒤로가기" title="뒤로가기">
            </td>
        </tr>
    </table>
</form>

<footer onclick="location.href='mainhome.do';">
    메인으로 돌아가기
</footer>

</body>
</html>
