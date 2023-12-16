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

<%--    <script>--%>
<%--        function delete_ok(id) {--%>
<%--            var a = comfirm("정말 삭제하시겠습니까?");--%>
<%--            if (a) location.href='deleteok/' + id;--%>
<%--        }--%>
<%--    </script>--%>

    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 8px;
            border: 1px solid #ddd;
            text-align: left;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        th {
            background-color: #04AA6D;
            color: white;
        }

        th, td {
            font-family: sans-serif;
            font-size: 14px;
            font-weight: normal;
        }

        td.content {
            max-height: 70px;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        button[type="button"] {
            padding: 12px 20px;
            font-size: 16px;
            background-color: #04AA6D;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button[type="button"]:hover {
            background-color: #04AA6D;
        }

    </style>

    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'deleteok/' + id;
        }
    </script>
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
