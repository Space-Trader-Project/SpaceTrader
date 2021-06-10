<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--    <jsp:include page="/WEB-INF/partials/head.jsp">--%>
    <%--        <jsp:param name="title" value="Welcome to my site!"/>--%>
    <%--    </jsp:include>--%>
        <%-- BOOTSTRAP  --%>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <%--  GOOGLE FONTS  --%>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Bungee+Shade&display=swap" rel="stylesheet">
    <%--  CAROUSEL CDN  --%>
        <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
        <%-- PERSONAL CSS --%>
        <link rel="stylesheet" href="../styles/landing-page.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="text-center header mt-5 mb-0">
    <h1>Welcome to SpaceTrader where you List your Space Parts!</h1>
</div>
<!-- Flickity HTML init -->
<div class="gallery js-flickity">
    <c:forEach var="ad" items="${ads}">
        <div class="gallery-cell text-center mx-5 mt-1 ">
            <img src="${ad.picture}" alt="" class="rounded-circle">
            <h3>${ad.title}</h3>
            <p>${ad.description}</p>
<%--            <p>${ad.price}</p>--%>
<%--            <p><a class="btn btn-lg btn-primary" href="/ads" role="button">View Ads</a></p>--%>
        </div>
    </c:forEach>
</div>

<%-- CAROUSEL SCRIPT--%>
<script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>
</body>
</html>