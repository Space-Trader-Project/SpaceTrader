<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>


<%--    Bootstrap--%>

<!--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> --> -->

<!--     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script> -->




    <%--    <script>--%>
    <%--        $("#ads").click(function(){--%>
    <%--            $(this).html("hello")--%>
    <%--        })--%>
    <%--        var searchBar = $("#search");--%>
    <%--        var submitButton = $("#submit");--%>
    <%--    </script>--%>

</head>
<body>
<%--<jsp:include page="/WEB-INF/partials/navbar.jsp"/>--%>

<form action="/ads" method="POST">
    <label for="search">Search Ads</label>
    <input id="search" type="text" placeholder="Search" name="searchValue">
    <input id="submit" type="submit">
</form>

<h1>Here Are all the ads!</h1>
<div class="container">
    <c:forEach var="ad" items="${ads}">
        <div <%--class="col-md-6"--%>>

<%--            thinking of adding a function that fixes jpg links by removing everything that comes after that extension--%>
<%--            also want to *crop* the images so they are all the same size--%>
<%--            <c:choose>--%>
<%--                String pic = ${ad.picture};--%>
<%--                <c:when test="pic">--%>
<%--                    <p>pic.length</p>--%>
<%--                </c:when>--%>
<%--                <c:otherwise>--%>
                    <img src="${ad.picture}" width="200">
<%--                </c:otherwise>--%>
<%--            </c:choose>--%>

            <h2>${ad.title}</h2> <p>${ad.price}</p>
            <p>${ad.description}</p>
<%--            <p>${ad.quantity}</p>--%>
<%--            <p>${ad.category}</p>--%>
        </div>
    </c:forEach>
</div>
</body>
</html>
