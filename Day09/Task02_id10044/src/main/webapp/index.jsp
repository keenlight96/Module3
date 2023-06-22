<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <style>
        input {
            width: 150px;
            height: 30px;
        }
    </style>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>

<form action="login" method="post">
    <div class="login">
        <h2>LOGIN FORM</h2>
        <input type="text" name="username" placeholder="Username"/><br>
        <input type="password" name="password" placeholder="Password"/><br>
        <button type="submit">LOGIN</button>
    </div>
</form>
<br><br><br>
<%--Task 3--%>
<h2>Task 3</h2>
<h3>Currency converter</h3>
<form action="convert" method="get">
    <p>Rate:</p>
    <input type="text" name="rate" placeholder="0"> <br>
    <p>USD:</p>
    <input type="text" name="usd" placeholder="0">
    <button type="submit">Convert</button>
</form>
</body>
</html>