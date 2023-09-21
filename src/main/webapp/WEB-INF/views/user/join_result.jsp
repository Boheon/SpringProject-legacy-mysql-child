<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
  Created by IntelliJ IDEA.
  User: 박보헌
  Date: 2023-09-07
  Time: 오후 3:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1>회원가입</h1>
<form method="POST">
    회원 ID : <input type="text" name="userid"><br>
    비밀번호 : <input type="password" name="password"><br>
    비밀번호 : <input type="password" name="password2"><br>
    email : <input type="email" name="email"><br>
    취미 :
    <c:forEach var="hobby" items="${userDTO.hobbies}">
        ${hobby}
    </c:forEach>

    <br>
    생일 : <fmt:formatDate value="${userDTO.birthDate}" pattern="yyyy-MM-dd"/>
    <input type="submit">
</form>
</body>
</html>
