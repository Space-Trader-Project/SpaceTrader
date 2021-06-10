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

    <%--  GOOGLE FONTS  --%>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Bungee+Shade&display=swap" rel="stylesheet">

    <%-- CSS --%>
    <link rel="stylesheet" href="../styles/register-page.css">


</head>
<body>



<h1 class="header" >Edit An Ad</h1>
<form action="/ads/edit" method="post">
    <label class="inputs" for="title">Title</label>
    <input name="title" id="title" type="text">
    <br />
    <label class="inputs"  for="description">Description</label>
    <input name="description" id="description" type="text">
    <br />
    <label class="inputs"  for="picture">Picture</label>
    <input name="picture" id="picture" type="text">
    <br />
    <label class="inputs" for="quantity">Quantity</label>
    <input  name="quantity" id="quantity" type="text">
    <br />
    <label class="inputs"  for="price">Price</label>
    <input name="price" id="price" type="text">
    <br />
    <input name = "edit" id="edit" type="hidden" value="${EditAll.id}">
    <input type="submit">
</form>
</body>
</html>
