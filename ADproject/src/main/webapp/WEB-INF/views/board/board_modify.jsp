<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
        }

        header {
            background-color: #343a40;
            color: #fff;
            padding: 15px 20px;
            text-align: center;
        }

        main {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }

        footer {
            text-align: center;
            background-color: #343a40;
            color: white;
            padding: 10px 0;
            margin-top: 20px;
        }

        table {
            width: 80%;
            max-width: 800px;
            margin: 20px auto;
            border-collapse: collapse;
            background: white;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #495057;
            color: white;
        }

        .search-bar {
            display: flex;
            justify-content: center;
            margin: 20px 0;
        }

        .search-bar select, .search-bar input, .search-bar button {
            margin: 0 5px;
            padding: 5px;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            width: 80%;
            max-width: 800px;
            margin: 20px 0;
        }

        .button-container input {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            cursor: pointer;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s;
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

<table border="1">
<tr>
<th>작성자</th>
<td><input name="board_name" value="${vo.board_name}"></td>
</tr>
<tr>
<th>제목</th>
<td><input name="board_subject" value="${vo.board_subject}"></td>
</tr>
<tr>
<th>내용</th>
<td><textarea rows="10" cols="80" name="board_content" style="resize:none;">${vo.board_content}</textarea></td>
</tr>
<tr>
<td colspan="2" style="text-align: right;">
<img src="/a/resources/img/btn_reg.gif" onclick="send_check()">
<img src="/a/resources/img/btn_back.gif" onclick="history.back()">
</td>
</tr>
</table>
</form>

<footer>
     <p onclick="location.href='mainhome.do';" style="cursor: pointer;">메인으로 돌아가기</p>
 </footer>
</body>
</html>