<%--
  Created by IntelliJ IDEA.
  User: keenlight
  Date: 23/06/2023
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating a new employee</title>
    <style>
        .header {
            width: 75px;
        }

        .value {
            width: 120px;
        }
    </style>
</head>
<body>
<h2>CREATING</h2>
<form action="/create" method="post">
    <table>
        <tr>
            <td class="header">Id</td>
            <td class="value"><input type="text" name="id"></td>
        </tr>
        <tr>
            <td class="header">Name</td>
            <td class="value"><input type="text" name="name"></td>
        </tr>
        <tr>
            <td class="header">Age</td>
            <td class="value"><input type="number" name="age"></td>
        </tr>
    </table>
    <button type="submit">CREATE</button>
</form>
</body>
</html>
