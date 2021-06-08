<%--
  Created by IntelliJ IDEA.
  User: salimkhan
  Date: 6/7/21
  Time: 2:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit An Ad</title>
</head>
<body>
<h1>Edit An Ad</h1>
<form action="/Ads/editAd" method="post">
    <label for="name">Name</label>
    <input name="name" id="name" type="text">
    <br />
    <label for="price">Price</label>
    <input name="price" id="price" type="text">
    <br />
    <input type="submit">
</form>
</body>
</html>
