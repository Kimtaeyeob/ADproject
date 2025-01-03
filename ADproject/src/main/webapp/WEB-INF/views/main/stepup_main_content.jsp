<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div class="main">
		<c:forEach var="vo" items="${ list }">
			<div class="academy_content"
				onclick="location.href='academy_detail.do?academy_idx=${vo.academy_idx}'">
				<div class="img_tag">
					<input type="hidden" value="${ vo.academy_idx }"> <img
						src="/a/resources/img/${ vo.academy_profile }" class="academy_img"
						style="width: 265px; height: 260px;">
				</div>
				<span class="content2">${ vo.academy_category }</span> <span
					class="content">${ vo.academy_name }</span> <span class="content2">${ vo.academy_region }</span>
				<div class="star">
					<i class="fa-solid fa-star"></i><span id="star_score">${ vo.rating }</span>
				</div>
			</div>

		</c:forEach>

	</div>
</body>
</html>