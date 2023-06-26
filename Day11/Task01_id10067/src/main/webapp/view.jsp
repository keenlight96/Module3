<%--
  Created by IntelliJ IDEA.
  User: keenlight
  Date: 26/06/2023
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Age</th>
            <th scope="col">Phone Number</th>
            <th scope="col">Address</th>
            <th scope="col">Edit</th>
            <th scope="col">Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="customer" items="${customers}">
            <tr>
                <td>${customer.id}</td>
                <td>${customer.name}</td>
                <td>${customer.age}</td>
                <td>${customer.phoneNumber}</td>
                <td>${customer.address}</td>
                <td><a class="btn btn-warning" href="/customers?action=edit&id=${customer.id}">Edit</a></td>
                <td><a class="btn btn-danger" href="/customers?action=delete&id=${customer.id}">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <a class="btn btn-success" href="/customers?action=create">Create Form</a>
</div>
</body>
</html>
