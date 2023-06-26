<%--
  Created by IntelliJ IDEA.
  User: keenlight
  Date: 26/06/2023
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>View</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Price</th>
            <th scope="col">Edit</th>
            <th scope="col">Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td><a class="btn btn-warning" href="/edit?id=${product.id}">Edit</a></td>
                <td><a class="btn btn-danger" href="/delete?id=${product.id}">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <a class="btn btn-success" href="/create">Create Form</a>
</div>
</body>
</html>
