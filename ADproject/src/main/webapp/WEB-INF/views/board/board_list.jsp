<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>자유게시판</title>
		
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

        tr:hover {
            background-color: #f1f1f1;
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

        .button-container input:hover {
            background-color: #0056b3;
        }
        
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
		
		<script>
		
			window.onload = function(){
				let search = document.getElementById("search");
				let search_text = document.getElementById("search_text");
				
				let search_arr = 
					['board_subject', 'board_name', 'board_content'];
				
				for( let i = 0; i < search_arr.length; i++ ){
					
					if( '${param.search}' === search_arr[i] ){
						search[i].selected = true;
						search_text.value = '${param.search_text}';
						break;
					}
					
				}
				
			}
		
			function search(){
				//검색할 카테고리 조회
				let search = document.getElementById("search").value;
				
				//검색어
				let search_text = document.getElementById("search_text").value;
				
				//전체보기가 아닐때는 반드시 검색어가 포함되어 있어야 한다
				if( search != 'all' && search_text === '' ){
					alert("검색할 내용을 입력하세요");
					return;
				}
				
				location.href="list.do?search="+search+
						      "&search_text="+encodeURIComponent(search_text)+
						      "&page=1";
				
			}
		</script>
	</head>
	
	<body>
	
	<header>
        <h1>강사 게시판</h1>
    </header>
    
    <main>
		<table width="700" align="center">
			<tr>
				<th width="50">번호</th>
				<th width="300">제목</th>
				<th width="90">작성자</th>
				<th width="90">작성일</th>
				<th width="60">조회수</th>
			</tr>
			
			<c:forEach var="vo" items="${list}">
					<c:if test="${ vo.board_del_info ne -1 }">
			<tr>
				<td align="center">${vo.board_idx}</td>
				<td>
						<a style="text-decoration: none;" href="view.do?board_idx=${ vo.board_idx }&page=${ empty param.page ? 1 : param.page }&search=${param.search}&search_text=${param.search_text}">          
							${ vo.board_subject }	
						</a>					
				</td>
				
				<td>
					${ vo.board_name }<br>
					(${ vo.board_ip })
				</td>
				
				<td>${ vo.board_regdate }</td>
				
				<td align="center">${ vo.board_readhit }</td>
				
			</tr>
					</c:if>
			
			</c:forEach>
			
			<tr>
				<td colspan="9" style="text-align: center;">
					<div class="page-menu">
                     ${pageMenu}
                     </div>
				</td>
			</tr>
			
			<div class="button-container">
            <input type="button" value="전체글" onclick="location.href='list.do?search=all&page=1'">
            <input type="button" value="글쓰기" onclick="location.href='write_form.do'">
        </div>
			
			<tr>
				<td colspan="9" style="text-align: center;">
					<select id="search">
						<option value="board_subject">제목</option>	
						<option value="board_name">이름</option>
						<option value="board_content">내용</option>
					</select>
					
					<input id="search_text">
					<input type="button" value="검색" onclick="search();">
					
				</td>
			</tr>
		</table>
		 </main>
		 
    <footer>
        <p onclick="location.href='mainhome.do';" style="cursor: pointer;">메인으로 돌아가기</p>
    </footer>
	</body>
</html>