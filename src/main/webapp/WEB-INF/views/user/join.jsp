<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 박보헌
  Date: 2023-09-07
  Time: 오후 1:29
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
            <input type="checkbox" name="hobby" value="축구"> 축구
            <input type="checkbox" name="hobby" value="축구"> 농구
            <input type="checkbox" name="hobby" value="축구"> 배구
            <br>
        생일 : <input type="text" name="birthDate" placeholder="yyyy-MM-dd" value="2010-12-23"><br>
        <input type="submit">
    </form>
</body>
</html>
