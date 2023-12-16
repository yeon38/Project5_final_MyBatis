<%--
  Created by IntelliJ IDEA.
  User: chaeyeon
  Date: 2023/12/15
  Time: 10:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>

    <style>
        .login-form {
            width: 300px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .login-form div {
            margin-bottom: 15px;
        }

        .login-form label {
            display: inline-block;
            width: 100px;
            font-weight: bold;
        }

        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: calc(100% - 120px);
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .login-form button[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 3px;
            background-color: #ff8c00;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-form button[type="submit"]:hover {
            background-color: #ffa500;
        }

    </style>
</head>
<body><form method="post" action="loginOk" class="login-form">
    <div><label>User ID :</label><input type="text" name="userid"></div>
    <div><label>User password :</label><input type="password" name="userpw"></div>
    <button type="submit">Log-in</button>
</form>
</body>
</html>