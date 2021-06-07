<%--
  Created by IntelliJ IDEA.
  User: kenyonluce
  Date: 6/7/21
  Time: 9:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<form action="ads/search" method="POST">--%>
<%--    <label for="1">hello</label><input type="checkbox" id="1">--%>
<%--    <label for="2">hello1</label><input type="checkbox" id="2">--%>
<%--    <label for="3">hello2</label><input type="checkbox" id="3">--%>
<%--    <label for="4">hello3</label><input type="checkbox" id="4">--%>
<%--    <label for="5">hello4</label><input type="checkbox" id="5">--%>
<%--</form>--%>
<form action="ads/search" method="POST">
    <label for="minPrice">min price</label>
    <input type="text" id="minPrice" name="minPrice"> to
    <label for="maxPrice">max price</label>
    <input type="text" id="maxPrice" name="maxPrice">
    <input type="submit" value="Submit">
</form>

<jsp:include page="index.jsp"/>