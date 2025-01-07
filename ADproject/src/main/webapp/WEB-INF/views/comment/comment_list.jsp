<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
		
		<style>
			/* 공통 스타일 */
			body {
				width: 800px;
				margin: 0 auto;
				font-family: Arial, sans-serif;
				background-color: #f9f9f9;
			}
			a {
				text-decoration: none;
				color: #333;
			}

			/* 댓글 박스 스타일 */
			.comment-box {
				border: 1px solid #ddd;
				padding: 15px;
				margin: 10px 0;
				border-radius: 5px;
				background-color: #ffffff;
			}
			.comment-box pre {
				background-color: #f4f4f4;
				padding: 10px;
				border-radius: 5px;
				margin: 0;
				white-space: pre-wrap; /* 줄바꿈 */
				word-wrap: break-word;
			}

			.comment-box .meta {
				margin-top: 10px;
				font-size: 0.9em;
				color: #666;
			}

			.comment-box .actions {
				margin-top: 10px;
				text-align: right;
			}

			.comment-box .delete-button {
				padding: 5px 10px;
				background-color: #ff6b6b;
				color: #fff;
				border: none;
				border-radius: 3px;
				cursor: pointer;
			}
			.comment-box .delete-button:hover {
				background-color: #ff4a4a;
			}

			/* 페이지 메뉴 스타일 */
			.page-menu {
				text-align: center;
				margin: 15px 0;
			}
			.page-menu a {
				display: inline-block;
				padding: 5px 10px;
				margin: 0 5px;
				background-color: #ddd;
				color: #333;
				border-radius: 3px;
			}
			.page-menu a:hover {
				background-color: #bbb;
			}
		</style>
	
	</head>
	<body>
		<!-- 댓글 목록 반복 -->
		<c:forEach var="vo" items="${list}">
			<div class="comment-box">
				<form>
					<!-- Hidden Inputs -->
					<input type="hidden" name="board_idx" value="${board_idx}">
					<input type="hidden" name="comment_idx" value="${vo.comment_idx}">
					
					<!-- 댓글 내용 -->
					<pre>${vo.comment_content}</pre>
					
					<!-- 작성자 정보 -->
					<div class="meta">
						작성자: ${vo.comment_name} (IP: ${vo.comment_ip})
					</div>
					
					<!-- 삭제 버튼 -->
					<div class="actions">
						<input type="button" class="delete-button" value="삭제" onclick="del_comment(this.form);">
					</div>
				</form>
			</div>
		</c:forEach>
		
		<!-- 페이지 메뉴 -->
		<div class="page-menu">	
			${pageMenu}
		</div>
	</body>
</html>












