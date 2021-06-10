<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
<%--        <jsp:param name="title" value="Login" />--%>
<%--    </jsp:include>--%>

    <%--  GOOGLE FONTS  --%>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Bungee+Shade&display=swap" rel="stylesheet">

<%-- CSS --%>
    <link rel="stylesheet" href="../styles/register-page.css">

</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
    <div class="container">
        <h1 class="inputs header">You are going to Space!!!</h1>
        <form action="/login" method="POST">
            <div class="form-group">
                <label class="inputs" for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label class="inputs" for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="Log In">
        </form>
    </div>
</body>
</html>
