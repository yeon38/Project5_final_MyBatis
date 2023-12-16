<%--
  Created by IntelliJ IDEA.
  User: chaeyeon
  Date: 2023/12/01
  Time: 5:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>board list</title>

    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'deleteok/' + id;
        }
    </script>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            color: #333;
            margin: 0;
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #ff8c00;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #fff;
        }

        tr:hover {
            background-color: #f9f9f9;
        }

        button {
            padding: 10px 20px;
            background-color: #ff8c00;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #ffa500;
        }

        a {
            text-decoration: none;
            padding: 5px 10px;
            border-radius: 3px;
            font-size: 14px;
        }

        a[href^="editform"] {
            background-color: #9fd687;
            color: white;
            margin-right: 5px;
        }

        a[href^="editform"]:hover {
            background-color: #80a86f;
        }

        a[href^="javascript:delete_ok"] {
            background-color: #f29494;
            color: white;
        }

        a[href^="javascript:delete_ok"]:hover {
            background-color: #d18282;
        }

    </style>

</head>
<body>

<table>
    <tr>
        <th>No.</th>
        <th>Name</th>
        <th>Region</th>
        <th>detail</th>
        <th>Category</th>
        <th>Address</th>
        <th>Rating</th>
        <th>Usage Fee</th>
        <th>Operating Hour</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.getId()}</td>
            <td>${u.getTitle()}</td>
            <td>${u.getCity()}</td>
            <td>${u.getDetail()}</td>
            <td>${u.getCategory()}</td>
            <td>${u.getAddress()}</td>
            <td>${u.getRating()}</td>
            <td>${u.getFee()}</td>
            <td>${u.getOperatingHours()}</td>
            <td><a href="editform/${u.id}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.id}')">delete</a></td>
        </tr>
    </c:forEach>
</table>
<br><button type="button" onclick="location.href='add'">new post</button>

</body>
</html>