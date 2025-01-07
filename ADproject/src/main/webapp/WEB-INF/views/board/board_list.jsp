<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>강사 게시판</title>

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
            background-color: #0B0C0D; /* 어두운 색상 */
            color: #fff;
            padding: 20px;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        main {
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        footer {
            background-color: #0B0C0D; /* 어두운 색상 */
            color: #fff;
            text-align: center;
            padding: 15px 0;
            margin-top: 20px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        footer:hover {
            background-color: #333; /* 살짝 밝은 회색 */
        }

        table {
            width: 90%;
            max-width: 1000px;
            border-collapse: collapse;
            background: #fff;
            margin: 20px auto;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #0B0C0D; /* 어두운 색상 */
            color: #fff;
        }

        tr:hover {
            background-color: #f4f4f4; /* 밝은 회색 */
        }

        a {
            text-decoration: none;
            color: #0B0C0D; /* 어두운 색상 */
            transition: color 0.3s;
        }

        a:hover {
            color: #555; /* 중간 회색 */
        }

        .button-container {
            width: 90%;
            max-width: 1000px;
            margin: 20px auto;
            display: flex;
            justify-content: space-between;
        }

        .button-container input {
            padding: 12px 20px;
            font-size: 16px;
            font-family: 'JUA';
            border: none;
            border-radius: 30px;
            background-color: #0B0C0D; /* 어두운 색상 */
            color: white;
            cursor: pointer;
            box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .button-container input:hover {
            background-color: #333;
            transform: scale(1.05);
        }

        .search-bar {
            margin: 20px auto;
            text-align: center;
        }

        .search-bar select, .search-bar input {
            padding: 10px;
            margin: 5px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .search-bar input[type="button"] {
            background-color: #0B0C0D; /* 어두운 색상 */
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .search-bar input[type="button"]:hover {
            background-color: #333;
        }

        .page-menu {
            margin: 20px 0;
            text-align: center;
        }

        .page-menu a {
            display: inline-block;
            padding: 8px 12px;
            margin: 0 5px;
            background-color: #f4f4f4; /* 밝은 회색 */
            color: #0B0C0D; /* 어두운 색상 */
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .page-menu a:hover {
            background-color: #ddd; /* 더 밝은 회색 */
            color: #333; /* 중간 회색 */
        }
    </style>

    <script>
        window.onload = function() {
            let search = document.getElementById("search");
            let search_text = document.getElementById("search_text");

            let search_arr = ['board_subject', 'board_name', 'board_content'];

            for (let i = 0; i < search_arr.length; i++) {
                if ('${param.search}' === search_arr[i]) {
                    search[i].selected = true;
                    search_text.value = '${param.search_text}';
                    break;
                }
            }
        }

        function search() {
            let search = document.getElementById("search").value;
            let search_text = document.getElementById("search_text").value;

            if (search !== 'all' && search_text === '') {
                alert("검색할 내용을 입력하세요");
                return;
            }

            location.href = "list.do?search=" + search +
                            "&search_text=" + encodeURIComponent(search_text) +
                            "&page=1";
        }
    </script>
</head>

<body>
    <header>
        <h1>스텝업 라운지</h1>
    </header>

    <main>
        <table>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
                <th>조회수</th>
            </tr>

            <c:forEach var="vo" items="${list}">
                <c:if test="${vo.board_del_info ne -1}">
                    <tr>
                        <td>${vo.board_idx}</td>
                        <td>
                            <a href="view.do?board_idx=${vo.board_idx}&page=${empty param.page ? 1 : param.page}&search=${param.search}&search_text=${param.search_text}">
                                ${vo.board_subject}
                            </a>
                        </td>
                        <td>${vo.board_name}<br>(${vo.board_ip})</td>
                        <td>${vo.board_regdate}</td>
                        <td>${vo.board_readhit}</td>
                    </tr>
                </c:if>
            </c:forEach>

            <tr>
                <td colspan="5">
                    <div class="page-menu">
                        ${pageMenu}
                    </div>
                </td>
            </tr>
        </table>

        <div class="button-container">
            <input type="button" value="전체글" onclick="location.href='list.do?search=all&page=1'">
            <input type="button" value="글쓰기" onclick="location.href='write_form.do'">
        </div>

        <div class="search-bar">
            <select id="search">
                <option value="board_subject">제목</option>
                <option value="board_name">이름</option>
                <option value="board_content">내용</option>
            </select>
            <input id="search_text">
            <input type="button" value="검색" onclick="search();">
        </div>
    </main>

    <footer>
        <p onclick="location.href='mainhome.do';">메인으로 돌아가기</p>
    </footer>
</body>
</html>
