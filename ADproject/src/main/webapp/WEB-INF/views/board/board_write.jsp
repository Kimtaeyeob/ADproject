<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>새 글 작성하기</title>

    <style>
        @charset "UTF-8";

        /* 기본 설정 */
        body {
            font-family: 'JUA', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f3f4f6;
            color: #0B0C0D;
            line-height: 1.6;
        }

        header {
            background-color: #0B0C0D;
            color: #fff;
            text-align: center;
            padding: 20px;
            font-size: 28px;
            border-radius: 0 0 15px 15px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }

        form {
            width: 90%;
            max-width: 700px;
            margin: 20px auto;
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 15px;
            font-size: 16px;
        }

        th {
            text-align: left;
            color: #fff;
            background-color: #0B0C0D;
            border-radius: 10px 0 0 10px;
        }

        td {
            background-color: #f9f9f9;
            border-radius: 0 10px 10px 0;
        }

        input, textarea {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 5px 0;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-sizing: border-box;
            background-color: #f3f4f6;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        input:focus, textarea:focus {
            border-color: #0B0C0D;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
            outline: none;
        }

        textarea {
            resize: none;
        }

        .button-container {
            text-align: right;
            margin-top: 20px;
        }

        .button-container button {
            padding: 10px 20px;
            font-size: 16px;
            font-family: 'JUA', sans-serif;
            color: #fff;
            background-color: #0B0C0D;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            margin-left: 10px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .button-container button:hover {
            background-color: #333;
            transform: scale(1.05);
        }

        footer {
            background-color: #0B0C0D;
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: 30px;
            font-size: 14px;
            border-radius: 15px 15px 0 0;
            box-shadow: 0px -4px 10px rgba(0, 0, 0, 0.1);
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease, transform 0.2s ease;
        }

        footer:hover {
            background-color: #333;
            color: #ddd;
            transform: scale(1.02);
        }
    </style>

    <script>
        function send_check() {
            let f = document.f;

            if (f.board_subject.value === '') {
                alert("제목을 입력하세요");
                return;
            }

            if (f.board_content.value === '') {
                alert("내용을 입력하세요");
                return;
            }

            f.method = "post";
            f.action = "insert.do";
            f.submit();
        }
    </script>

</head>

<body>
<header>
    <h1>새 글 작성하기</h1>
</header>

<form name="f">
    <table>
        <tr>
            <th>제목</th>
            <td><input type="text" name="board_subject" placeholder="제목을 입력하세요"></td>
        </tr>
        <tr>
            <th>작성자</th>
            <td><input type="text" name="board_name" placeholder="이름을 입력하세요"></td>
        </tr>
        <tr>
            <th>내용</th>
            <td><textarea name="board_content" rows="10" placeholder="내용을 입력하세요"></textarea></td>
        </tr>
    </table>

    <div class="button-container">
        <button type="button" onclick="send_check();">등록</button>
        <button type="button" onclick="history.back();">취소</button>
    </div>
</form>

<footer>
    메인으로 돌아가기
</footer>
</body>
</html>
