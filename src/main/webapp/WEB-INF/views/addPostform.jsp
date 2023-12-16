<%--
  Created by IntelliJ IDEA.
  User: chaeyeon
  Date: 2023/12/01
  Time: 10:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

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
    button {
        padding: 10px 20px;
        margin-right: 10px;
        border: none;
        cursor: pointer;
        border-radius: 5px;
        font-size: 16px;
    }

    /* View List */
    .view-list-btn {
        background-color: #ff8c00;
        color: white;
        transition: background-color 0.3s ease;
    }

    .view-list-btn:hover {
        background-color: #ffA500;
    }

    /* Submit */
    .submit-btn {
        background: linear-gradient(to right, #ff8c00, #ffa500);
        color: white;
        transition: background-color 0.3s ease;
    }

    .submit-btn:hover {
        background: linear-gradient(to right, #ffA500, #ff8c00);
    }
    </style>
</head>
<body>

<form action="addok" method="post" class="form-container">
    <table id="edit">
        <tr><td>Title</td><td><input type="text" name="title"/></td></tr>
        <tr><td>Region</td><td><input type="text" name="city"/></td></tr>
        <tr><td>Operating Hour</td><td><input type="text" name="operatingHours"/></td></tr>
        <tr><td>Detail</td><td><input type="text" name="detail"></td></tr>
        <tr><td>Address</td><td><input type="text" name="address"></td></tr>
        <tr><td>Rating</td><td><input type="text" name="rating"></td></tr>
        <tr><td>Fee</td><td><input type="text" name="fee"></td></tr>
        <tr><td>Category</td><td><input type="text" name="category"/></td></tr>
    </table>
    <button type="button" onclick="location.href='list'" class="view-list-btn">View List</button>
    <button type="submit" class="submit-btn">Submit</button>
</form>

</body>
</html>