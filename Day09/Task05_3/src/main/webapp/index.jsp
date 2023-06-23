<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<form action="/calculate" method="get">
    <p>Product Description</p>
    <input type="text" name="description">
    <p>List Price</p>
    <input type="text" name="price">
    <p>Discount Percent</p>
    <input type="text" name="discount">
    <button type="submit">Calculate</button>
</form>
</body>
</html>