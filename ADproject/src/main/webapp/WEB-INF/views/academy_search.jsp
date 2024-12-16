<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 전국 학원목록 </title>
</head>
<body>
    <h1>List</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Details</th>
        </tr>
        <c:forEach var="vo" items="${list}">
            <tr>
                <td>${vo.id}</td>
                <td>${vo.name}</td>
                 <td> <a href="academyDetail.do?id=${vo.id}">Details</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>