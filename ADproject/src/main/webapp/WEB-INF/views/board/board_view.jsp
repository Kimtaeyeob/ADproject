<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<script src="/a/resources/js/httpRequest.js"></script>
	
		
		<script>
		
			/* 보고있는 댓글의 페이지 번호를 저장할 변수 */
			let comm_page = 1;
		
			/* 상세보기 페이지로 오면, 원래 등록되어 있던 댓글을 보여준다 */
			window.onload = function(){
				comment_list( comm_page );
			}
		
			/* 댓글등록 메서드 */
			function send(f){
				let name = f.comment_name.value;
				let content = f.comment_content.value;
				
				if( name === '' ){
					alert("이름을 입력하세요");
					return;
				}
				
				if( content.trim() === '' ){
					alert("내용을 입력하세요");
					return;
				}
				
				let url = "comment_insert.do";
				let param = "board_idx=${vo.board_idx}&comment_name="+name+
				            "&comment_content="+encodeURIComponent(content);
				
				sendRequest(url, param, comm_result, "post");
			}
			
			function comm_result(){
				if( xhr.readyState == 4 && xhr.status == 200 ){
					
					let data = xhr.responseText;
					let json = ( new Function('return '+data) )();
					
					if( json[0].result === 'yes' ){
						//댓글목록 요청
						comment_list( comm_page );
					}else{
						alert("등록실패");
					}
					
				}
			}			
		
			function comment_list( page ){
				
				comm_page = page;
				
				let url = "comment_list.do";
				let param = "board_idx=${vo.board_idx}&page="+page;
				sendRequest(url, param, comm_list_fn, 'post');
			}	
			
			function comm_list_fn(){
				
				if( xhr.readyState == 4 && xhr.status == 200 ){
					let data = xhr.responseText;
					let disp = document.getElementById("comment_disp");
					disp.innerHTML = data;
				}
			}
			
			function del(){
				
				if( !confirm('삭제 하시겠습니까?') ){
					return;
				}
				
				let url = "del.do";
				let param = "board_idx=${vo.board_idx}";
				sendRequest( url, param, resultFn, "post" );
				
			}
			
			function resultFn(){
				
				if( xhr.readyState == 4 && xhr.status == 200 ){
					
					let data = xhr.responseText;
					let json = ( new Function('return '+data) )();
					
					if( json[0].result === 'succ' ){
						alert("삭제성공");
					}else{
						alert("삭제실패");
					}
					
					location.href="list.do?page=${param.page}&search=${param.search}&search_text=${param.search_text}";					
					
				}
				
			}
			
			/* 댓글삭제 함수 */
			function del_comment(f){
				
				let comment_idx = f.comment_idx.value;
				
				if( !confirm("삭제하시겠습니까?") ){
					return;
				}
				
				let url = "comment_del.do";
				let param = "comment_idx="+comment_idx;
				sendRequest(url, param, comm_list_del, "post");
				
			}
			
			function comm_list_del(){
				if( xhr.readyState == 4 && xhr.status == 200 ){
					
					let data = xhr.responseText;
					let json = ( new Function('return ' + data) )();
					
					if( json[0].result === 'yes' ){
						comment_list( comm_page );
					}else{
						alert("삭제실패");
					}
					
				}
			}
			
			function modify() {
				location.href='modify_form.do?board_idx=${vo.board_idx}&page=${param.page}&search=${param.search}&search_text=${param.search_text}';
			}
			
		</script>
		
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
        background-color: #f3f4f6;
        color: #333;
        line-height: 1.8;
    }

    header {
        background-color: #0B0C0D;
        color: white;
        text-align: center;
        padding: 20px;
        font-size: 26px;
        border-radius: 0 0 20px 20px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        text-transform: uppercase;
        letter-spacing: 2px;
    }

    main {
        padding: 30px;
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 20px;
    }

    footer {
        background-color: #0B0C0D;
        color: white;
        text-align: center;
        padding: 15px 0;
        margin-top: 30px;
        border-radius: 20px 20px 0 0;
        cursor: pointer;
        transition: background-color 0.3s ease, color 0.3s ease, transform 0.2s ease;
    }

    footer:hover {
        background-color: #333;
        color: #ddd;
        transform: scale(1.02);
    }

    table {
        width: 90%;
        max-width: 900px;
        border-collapse: separate;
        border-spacing: 0;
        background: #fff;
        border-radius: 15px;
        overflow: hidden;
        box-shadow: 0px 5px 20px rgba(0, 0, 0, 0.1);
        margin: 20px 0;
        animation: fadeIn 0.5s ease-in-out;
    }

    th, td {
        padding: 15px;
        text-align: left;
        border-bottom: 1px solid #eee;
        font-size: 16px;
    }

    th {
        background-color: #0B0C0D;
        color: white;
        text-transform: uppercase;
        font-size: 14px;
    }

    tr:last-child td {
        border-bottom: none;
    }

    input[type="text"], textarea {
        width: 100%;
        padding: 12px;
        border: 1px solid #ddd;
        border-radius: 12px;
        font-size: 14px;
        background-color: #f9fafb;
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

    .button-container img {
        cursor: pointer;
        margin-left: 15px;
        transition: transform 0.2s ease, opacity 0.3s ease;
        border-radius: 10px;
    }

    .button-container img:hover {
        transform: scale(1.1);
        opacity: 0.85;
    }

    .comment-section {
        width: 90%;
        max-width: 900px;
        margin: 20px 0;
        padding: 20px;
        background: #fff;
        border-radius: 15px;
        box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
        animation: slideUp 0.5s ease-in-out;
    }

    #comment_disp {
        margin-top: 20px;
    }

    input[type="button"] {
        background-color: #0B0C0D;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 12px;
        font-family: 'JUA';
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    input[type="button"]:hover {
        background-color: #333;
        transform: scale(1.05);
    }

    /* 애니메이션 효과 */
    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }

    @keyframes slideUp {
        from {
            transform: translateY(20px);
            opacity: 0;
        }
        to {
            transform: translateY(0);
            opacity: 1;
        }
    }
    
</style>
		
		
	</head>
	
	<body>
	
	<header>
            <h1>강사 게시판</h1>
        </header>
        
        <main>
		<table border="1" width="500">
			<tr>
				<th>번호</th>
				<td>${ vo.board_idx }</td>
				
				<th>작성자</th>
				<td>${ vo.board_name }</td>
			</tr>
			
			<tr>
				<th>작성일</th>
				<td>${ vo.board_regdate }</td>
				
				<th>조회수</th>
				<td>${ vo.board_readhit }</td>
			</tr>
			
			<tr>
				<th>제목</th>
			
				<td colspan="3">
					${ vo.board_subject }
				</td>
			</tr>
			
			<tr>
				<td colspan="4">
					<pre>${ vo.board_content }</pre>
				</td>
			</tr>
			
			<tr>
				<td colspan="4" style="text-align : right;">
					<!-- 목록으로 돌아가기 -->
					<img src="/a/resources/img/btn_list.gif" 
					     onclick="location.href='list.do?page=${param.page}&search=${ param.search }&search_text=${ param.search_text }'">                  
					
					<!-- 수정 -->
					<img src="/a/resources/img/btn_modify.gif" onclick="modify()">
					
					<!-- 글삭제 -->
					<img src="/a/resources/img/btn_delete.gif"
					     onclick="del();">
				</td>
			</tr>
		</table>
		
		<div id="comment_form">
			<form>
				<table>
					<tr>
						<th>작성자</th>
						<td><input name="comment_name"></td>
					</tr>
					
					<tr>
						<th>내용</th>
						<td>
							<textarea name="comment_content" 
							          rows="5" cols="30" style="resize:none"></textarea>
						</td>
					</tr>
					
					<tr>
						<td colspan="2" style="text-align: right;">
							<input type="button" value="등록" onclick="send(this.form);">
						</td>
					</tr>
				</table>
			</form>
		</div>
		
		<div id="comment_disp"></div>
		
		</main>
		
		 <footer>
            <p onclick="location.href='mainhome.do';" style="cursor: pointer;">메인으로 돌아가기</p>
        </footer>
		
	</body>
</html>