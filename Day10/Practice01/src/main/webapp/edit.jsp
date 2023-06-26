<%--
  Created by IntelliJ IDEA.
  User: keenlight
  Date: 23/06/2023
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit</title>
</head>
<body>
<form action="/edit" method="post">
    <table>
        <tr hidden="hidden">
            <td class="header">Id</td>
            <td class="value"><input type="text" name="id" value="${employee.id}"></td>
        </tr>
        <tr>
            <td class="header">Name</td>
            <td class="value"><input type="text" name="name" value="${employee.name}"></td>
        </tr>
        <tr>
            <td class="header">Age</td>
            <td class="value"><input type="number" name="age" value="${employee.age}"}></td>
        </tr>
    </table>
    <button type="submit">Edit</button>
</form>
</body>
</html>
