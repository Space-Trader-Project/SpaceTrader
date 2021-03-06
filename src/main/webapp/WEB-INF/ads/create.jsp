<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--    <jsp:include page="/WEB-INF/partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Create a new Ad" />--%>
<%--    </jsp:include>--%>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <%--  GOOGLE FONTS  --%>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Bungee+Shade&display=swap" rel="stylesheet">

    <%-- CSS --%>
    <link rel="stylesheet" href="../styles/register-page.css">


</head>
<body>
    <div class="container">
        <h1 class="header">Create a new Ad!</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label class="inputs" for="title">Title:</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label class="inputs" for="description">Description:</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <input type="submit" class="btn btn-block btn-primary mt-3" value="Create Ad!">
        </form>
    </div>
</body>
</html>
