<%--
  Created by IntelliJ IDEA.
  User: keenlight
  Date: 26/06/2023
  Time: 17:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
<form action="/edit" method="post">
    <div class="container">
        <table class="table table-striped">
            <tbody>
            <tr hidden="hidden">
                <td>Id</td>
                <td><input type="number" name="id" value="${product.id}"></td>
            </tr>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" value="${product.name}"></td>
            </tr>
            <tr>
                <td>Age</td>
                <td><input type="text" name="price" value="${product.price}"></td>
            </tr>
            </tbody>
        </table>

        <button type="submit" class="btn btn-success" >EDIT</button>
    </div>
</form>
</body>
</html>
