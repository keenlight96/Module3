<%--
  Created by IntelliJ IDEA.
  User: keenlight
  Date: 27/06/2023
  Time: 14:29
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
<div class="container">
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col"><a href="/sortByName">Name</a></th>
            <th scope="col">Email</th>
            <th scope="col">Country</th>
            <th scope="col">Update</th>
            <th scope="col">Remove</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.country}</td>
                <td><a class="btn btn-warning" href="/update?id=${user.id}">Update</a></td>
                <td><a class="btn btn-danger" href="/remove?id=${user.id}">Remove</a></td>
            </tr>
        </c:forEach>
        <tr>
            <td><a class="btn btn-success" href="/create">Create Form</a></td>
            <td></td>
            <form action="/searchByCountry" method="get">
                <td><button type="submit" class="btn btn-warning">Search by country</button></td>
                <td><input type="text" name="country"></td>
            </form>
            <td></td>
            <td></td>
        </tr>
        </tbody>
    </table>


</div>
</body>
</html>
