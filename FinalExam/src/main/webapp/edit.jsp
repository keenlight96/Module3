<%--
  Created by IntelliJ IDEA.
  User: keenlight
  Date: 05/07/2023
  Time: 01:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">
    <h2>Edit a Student</h2>
    <form action="/edit" method="post">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th hidden="hidden">StudentId</th>
                <th>Name</th>
                <th>Email</th>
                <th>Date of birth</th>
                <th>Address</th>
                <th>Phone number</th>
                <th>Classroom</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td hidden="hidden"><input type="text" name="studentId" value="${student.studentId}"></td>
                <td><input type="text" name="name" value="${student.name}"></td>
                <td><input type="text" name="email" value="${student.email}"></td>
                <td><input type="text" name="dateOfBirth" value="${student.dateOfBirth}"></td>
                <td><input type="text" name="address" value="${student.address}"></td>
                <td><input type="text" name="phoneNumber" value="${student.phoneNumber}"></td>
                <td>
                    <select name="classroom" id="classroom">
                        <c:forEach var="classroom" items="${classrooms}">
                            <c:choose>
                                <c:when test="${student.classroom == classroom.classroom}">
                                    <option selected value="${classroom.classroom}">${classroom.classroom}</option>
                                </c:when>
                                <c:otherwise>
                                    <option value="${classroom.classroom}">${classroom.classroom}</option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            </tbody>
        </table>
        <button type="submit" class="btn btn-primary">Submit</button>
        <a href="/home" class="btn btn-danger">Cancel</a>
    </form>
</div>
</body>
</html>