<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--    <jsp:include page="/WEB-INF/partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Your Profile" />--%>
<%--    </jsp:include>--%>
    <%-- BOOTSTRAP  --%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <%--  GOOGLE FONTS  --%>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Bungee+Shade&display=swap" rel="stylesheet">

    <%-- CSS --%>
    <link rel="stylesheet" href="../styles/register-page.css">



</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1 class="header">Welcome, ${sessionScope.user.firstName}!</h1>
        <h6 class="inputs">Username: ${sessionScope.user.username}</h6>
        <h6 class="inputs">Email: ${sessionScope.user.email}</h6>
        <a href="/profile/edit" class="btn btn-outline-warning">Edit Profile</a>

        <h2 class="header mt-2">Your published ads:</h2>
        <div class="d-flex flex-wrap mx-2 my-1 w-100 p-0">

<c:forEach var="ad" items="${ads}">
        <div class="card mx-1" style="width: 18rem;">
            <img src="${ad.picture}" class="card-img-top" height="200" alt="...">
            <div class="card-body">
                <h5 class="card-title header" style="color:black">${ad.title}</h5>
                <p class="card-text">${ad.description}</p>
                <p class="card-text">$${ad.price}</p>
                <p class="card-text">${ad.quantity}</p>
                <div class="d-flex justify-content-center">
                    <form action="/ads/edit" method="GET">
                        <input type="hidden" name="id" value="${ad.id}">
                        <button class="btn btn-outline-warning mx-1">Edit Ad</button>
                    </form>
                    <form action="/ads/delete" method="GET">
                        <input type="hidden" name="id" value="${ad.id}">
                        <button class="btn btn-outline-warning mx-1">Delete Ad</button>
                    </form>
                </div>

            </div>
        </div>

</c:forEach>
        </div>

<%--        <c:forEach var="ad" items="${ads}">--%>
<%--            <div id="ads" class="col-md-6">--%>
<%--                <h2>${ad.title}</h2>--%>
<%--                <div><a href="/ads"><img src="${ad.picture}" width="200"></a></div>--%>
<%--                <p>${ad.description}</p>--%>
<%--            </div>--%>
<%--        </c:forEach>--%>
    </div>

</body>
</html>
