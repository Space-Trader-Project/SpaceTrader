<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.firstName}!</h1>
        <h6>Username: ${sessionScope.user.username}</h6>
        <h6>Email: ${sessionScope.user.email}</h6>
        <a href="/profile/edit" class="btn btn-primary">Edit Profile</a>
        <h2>Your published ads:</h2>
        <div class="d-flex mx-2 my-1 w-100 p-0">
<c:forEach var="ad" items="${ads}">



        <div class="card" style="width: 18rem;">
            <img src="${ad.picture}" class="card-img-top" height="200" alt="...">
            <div class="card-body">
                <h5 class="card-title">${ad.title}</h5>
                <p class="card-text">${ad.description}</p>
                <div class="d-flex justify-content-center">
                    <form action="/ads/edit" method="GET">
                        <input type="hidden" name="id" value="${ad.id}">
                        <button class="btn btn-primary mx-1">Edit Ad</button>
                    </form>
                    <form action="/ads/delete" method="GET">
                        <input type="hidden" name="id" value="${ad.id}">
                        <button class="btn btn-primary mx-1">Delete Ad</button>
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
