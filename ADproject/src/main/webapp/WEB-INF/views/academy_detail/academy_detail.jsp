<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	
		<link rel="stylesheet" href="/a/resources/css/academy_detail.css">
		
		<script src="https://kit.fontawesome.com/86028631f0.js" crossorigin="anonymous"></script>
		
		
		<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=2hvgemd6sm"></script>
    <script id="code">
    document.addEventListener('DOMContentLoaded', function() {
    	
        var latitude = parseFloat("${vo.academy_latitude}").toFixed(4); // 학원 위도
        var longitude = parseFloat("${vo.academy_longitude}").toFixed(4); // 학원 경도
        var academyName = "${vo.academy_name}"; // 학원 이름
        console.log(latitude,longitude);
        // 지도 표시할 div 가져오기
        var mapDiv = document.getElementById('map');

        // 지도 생성
        var map = new naver.maps.Map(mapDiv, {
            center: new naver.maps.LatLng(longitude,latitude ), // 학원의 중심 좌표
            zoom: 18 // 지도 확대 레벨
        });

        // 초기 마커 추가
        var marker = new naver.maps.Marker({
            position: new naver.maps.LatLng(longitude, latitude), // 학원 위치
            map: map,
            title: academyName // 마커 제목
        });

    }); // DOMContentLoaded 이벤트 닫힘
</script>
		
</head>
<body>
<h1>
	
</h1>
	<div class = "title">
		<span class = "title_line">${ vo.academy_name }</span>
	</div>
	
	<div class = "academy_box">
		<div class = "main_img">
			<img src="/a/resources/img/${ vo.academy_profile }" class = "main1" style="width: 600px; height: 600px;">
		</div>
			<div class = "sub_center">
				<div class = "sub_img">
					<img src="/a/resources/img/72h_2.PNG" class = "main1" style="width: 334px; height: 300px;" >
					<img src="/a/resources/img/72_3.PNG" class = "main1" style="width: 334px; height: 300px;" >
				</div>
				
				 <div class= "sub_bottom">
					<img src="/a/resources/img/72h_1.PNG" class = "main1" style="width: 400px; height: 295px;" >
				</div>
			</div>
	</div>
	 
	<div class = "content">
		<span class = "title_line1">${ vo.academy_name }</span>
		<span class = "title_line1">${ vo.academy_phone }</span>
		<span class = "title_line1">${ vo.academy_category }</span>
	</div>
	
	
	
	<div class = "academy_content">
		<span class = "title_line1">${ vo.academy_content }</span>
	</div>
	
	<div class = "academy_teacher">
		<span class = "title_line1">강사진</span>
	</div>
	
	<div class = "academy_schedule">
   <table border="1">
    <thead>
        <tr>
            <th class="time-column">시간대</th>
            <th class="day-column">월</th>
            <th class="day-column">화</th>
            <th class="day-column">수</th>
            <th class="day-column">목</th>
            <th class="day-column">금</th>
            <th class="day-column">토</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="hour" items="${hours}">
            <tr>
                <td>${hour}</td>
                <c:forEach var="day" items="${days}">
                    <td>
                        <!-- 해당 시간대와 요일에 해당하는 선생님과 과목을 출력 -->
                        <c:forEach var="schedule" items="${schedules}">
                            <c:if test="${schedule.classTime == hour && schedule.classDay == day}">
                                ${schedule.instructorName} (${schedule.className})<br>
                            </c:if>
                        </c:forEach>
                    </td>
                </c:forEach>
            </tr>
        </c:forEach>
    </tbody>
   </table>
	</div>
	
	<div class = "academy_map">
		 <div id="map" style="width: 70%; height: 450px; margin:auto"></div>
		<span class = "title_line1">${ vo.academy_address }</span>
		<span class = "title_line1">${ vo.academy_region }</span>
		
	</div>
	
	<div class = "academy_review">
		<span class = "title_line1">${ vo.rating }</span>
	</div>
	
	<div class = "academy_Amenities">
		<span class = "title_line1">학원 편의시설</span>
	</div>
	
</body>
</html>
