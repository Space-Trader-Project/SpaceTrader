<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <%--    <script>--%>
    <%--        $("#ads").click(function(){--%>
    <%--            $(this).html("hello")--%>
    <%--        })--%>
    <%--        var searchBar = $("#search");--%>
    <%--        var submitButton = $("#submit");--%>
    <%--    </script>--%>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<label for="search">Search Ads</label>
<input id="search" type="text" placeholder="Search">
<input id="submit" type="submit">
<h1>Here Are all the ads!</h1>
<div class="container">
    <c:forEach var="ad" items="${ads}">
        <div id="ads" class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>
</body>
</html>
