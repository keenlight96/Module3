<%--
  Created by IntelliJ IDEA.
  User: keenlight
  Date: 26/06/2023
  Time: 17:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
<form action="/create" method="post">
    <div class="container">
        <table class="table table-striped">
            <tbody>
            <tr>
                <td>Id</td>
                <td><input type="Number" name="id"></td>
            </tr>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><input type="text" name="price"></td>
            </tr>
            </tbody>
        </table>

        <button type="submit" class="btn btn-success">CREATE</button>
    </div>
</form>
</body>
</html>
