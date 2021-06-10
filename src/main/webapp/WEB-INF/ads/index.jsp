<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--    <jsp:include page="/WEB-INF/partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Viewing All The Ads"/>--%>
<%--    </jsp:include>--%>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <%--    Bootstrap--%>

    <!--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->

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

    <%--  GOOGLE FONTS  --%>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Bungee+Shade&display=swap" rel="stylesheet">

    <%-- CSS --%>
    <link rel="stylesheet" href="../styles/register-page.css">



</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<%--<form action="/ads/search" method="POST">--%>
<%--    <label for="search">Search Ads</label>--%>
<%--    <input id="search" type="text" placeholder="Search" name="searchValue">--%>
<%--    <input id="submit" type="submit">--%>
<%--</form>--%>

<h1 class="header">Our Current Offerings</h1>
<%--<div class="container">--%>
<div class="d-flex flex-wrap mx-2 my-1 w-100 p-0">
    <c:forEach var="ad" items="${ads}">
        <div class="card mx-1 my-1" style="width: 18rem;">
            <img src="${ad.picture}" class="card-img-top" height="200" alt="...">
            <div class="card-body">
                <h5 class="card-title header" style="color:black"><a href="/ads/info?id=${ad.id}">${ad.title}</a></h5>
                <h3 style="color:black">$${ad.price}</h3>
                <p class="card-text">${ad.description}</p>
                <p style="color: black">In Stock: ${ad.quantity}</p>
            </div>
        </div>
    </c:forEach>
</div>
<%--    <c:forEach var="ad" items="${ads}">--%>

<%--        <div class="col-md-6">--%>
<%--            <div style="height: 200px; overflow: hidden"><img src="${ad.picture}" width="200"></div>--%>
<%--            <h2 class="header"><a class="inputs" href="/ads/info?id=${ad.id}">${ad.title}</a></h2>--%>
<%--            <h3 style="color:yellow">$${ad.price}</h3>--%>
<%--            <p class="inputs">${ad.description}</p>--%>

<%--&lt;%&ndash;                    <a href="/ads/edit?id=${ad.id}">Edit</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <a href="/ads/delete?id=${ad.id}">Delete</a>&ndash;%&gt;--%>
<%--                &lt;%&ndash;            <p>${ad.quantity}</p>&ndash;%&gt;--%>
<%--                &lt;%&ndash;            <p>${ad.category}</p>&ndash;%&gt;--%>

<%--            <p style="color: yellow">In Stock: ${ad.quantity}</p>--%>
<%--                &lt;%&ndash;                            <p>${ad.categories}</p>&ndash;%&gt;--%>

<%--        </div>--%>
<%--    </c:forEach>--%>
<%--</div>--%>
</body>
</html>