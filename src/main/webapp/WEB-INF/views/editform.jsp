<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: chaeeyeon
  Date: 2023/12/01
  Time: 10:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>edit form</title>

    <style>/* 전체 폼 컨테이너 */
    .form-container {
        margin: 50px auto;
        width: 400px;
        text-align: center;
    }

    /* 테이블 스타일 */
    #edit {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    #edit td {
        padding: 10px;
        border-bottom: 1px solid #ccc;
    }

    /* 버튼 스타일 */
    input[type="submit"],
    input[type="button"] {
        padding: 10px 20px;
        margin-right: 10px;
        border: none;
        cursor: pointer;
        border-radius: 5px;
        font-size: 16px;
    }


    input[type="submit"].postlink {
        background-color: #ff8c00;
        color: white;
        transition: background-color 0.3s ease;
    }

    input[type="submit"].postlink:hover {
        background-color: #ffA500;
    }


    input[type="button"].postlink {
        background: linear-gradient(to right, #ff8c00, #ffa500);
        color: white;
        transition: background-color 0.3s ease;
    }

    input[type="button"].postlink:hover {
        background: linear-gradient(to right, #ffA500, #ff8c00);
    }
    </style>
</head>
<body>

<%--@elvariable id="boardVO" type=""--%>
<form:form modelAttribute="boardVO" method="post" action="../editok">
    <form:hidden path="id"/>
    <table id="edit">
        <tr><td>Title</td><td><form:input path="title"/></td></tr>
        <tr><td>Region</td><td><form:input path="city"/></td></tr>
        <tr><td>Operating Hour</td><td><form:input path="operatingHours"/></td></tr>
        <tr><td>Detail</td><td><form:input path="detail"/></td></tr>
        <tr><td>Address</td><td><form:input path="address"/></td></tr>
        <tr><td>Rating</td><td><form:input path="rating"/></td></tr>
        <tr><td>Fee</td><td><form:input path="fee"/></td></tr>
        <tr><td>category</td><td><form:input path="category"/></td></tr>
    </table>
    <input type="submit" class="postlink" value="edit">
    <input type="button" class="postlink" value="cancel" onclick="history.back()">
</form:form>

</body>
</html>
