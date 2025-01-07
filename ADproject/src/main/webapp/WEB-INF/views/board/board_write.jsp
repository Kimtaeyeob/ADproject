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

    .button-container {
        display: flex;
        justify-content: flex-end;
        width: 80%;
        max-width: 800px;
        margin: 20px auto;
    }

    .button-container img {
        margin: 0 10px;
        cursor: pointer;
    }

    input, textarea {
        width: 95%;
        padding: 10px;
        font-size: 14px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    textarea {
        resize: none;
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
		<table width="700">

			<tr>
				<th width="120">제목</th>
				<td><input name="board_subject" placeholder="제목을 입력하세요"></td>
			</tr>
			
			<tr>
					<th width="120">작성자</th>
					<td><input name="board_name" placeholder="이름을 입력하세요"></td>
				</tr>
				
				<th width="120">내용</th>
				<td><textarea rows="10" name="board_content" placeholder="내용을 입력하세요"></textarea></td>
			</tr>

			<tr>
				<td colspan="5" style="text-align: right;">
				<img src="/a/resources/img/btn_reg.gif" onclick="send_check();">
				<img src="/a/resources/img/btn_back.gif" onclick="history.back()">
				</td>
			</tr>
		</table>
	</form>
	
<footer>
        <p>메인으로 돌아가기</p>
 </footer>
</body>
</html>