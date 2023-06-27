<%--
  Created by IntelliJ IDEA.
  User: keenlight
  Date: 27/06/2023
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
<form action="/create" method="post">
    <div class="container">
        <table class="table table-striped">
            <tbody>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email"></td>
            </tr>

            <tr>
                <td>Country</td>
                <td><input type="text" name="country"></td>
            </tr>
            </tbody>
        </table>

        <button type="submit" class="btn btn-success">CREATE</button>
    </div>
</form>
</body>
</html>
