<%--
  Created by IntelliJ IDEA.
  User: kenyonluce
  Date: 6/7/21
  Time: 9:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="ads/search" method="POST">
    <input type="radio" id="1" name="category" value="Spaceship"><label for="1">Spaceship</label>
    <input type="radio" id="2" name="category" value="Weapon"><label for="2">Weapon</label>
    <input type="radio" id="3" name="category" value="Armor"><label for="3">Armor</label>
    <input type="radio" id="4" name="category" value="Medical"><label for="4">Medical</label>
    <input type="radio" id="5" name="category" value="Helmet"><label for="5">Helmet</label>
</form>
<form action="/ads/search" method="POST">
    <label for="minPrice">min price</label>
    <input type="text" id="minPrice" name="minPrice"> to
    <label for="maxPrice">max price</label>
    <input type="text" id="maxPrice" name="maxPrice">
    <input type="submit" value="Submit">
</form>

<jsp:include page="index.jsp"/>