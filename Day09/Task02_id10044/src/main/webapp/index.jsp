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
<br/>
<a href="hello-servlet">Hello Servlet</a>
<br><br><br>

<a href="login">Test Login</a>

<form action="login" method="post">
    <div class="login">
        <h2>LOGIN FORM</h2>
        <input type="text" name="username" placeholder="Username"/><br>
        <input type="password" name="password" placeholder="Password"/><br>
        <button type="submit">LOGIN</button>
    </div>
</form>
</body>
</html>