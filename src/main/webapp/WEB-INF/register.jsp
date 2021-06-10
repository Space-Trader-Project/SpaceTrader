<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>

    <%--  GOOGLE FONTS  --%>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Bungee+Shade&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="../styles/register-page.css">

</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container ">
        <h1 class="header">Please fill in your information.</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label class="inputs" for="First_Name">First Name</label>
                <input id="First_Name" name="First_Name" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label class="inputs" for="Last_Name">Last Name</label>
                <input id="Last_Name" name="Last_Name" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label class="inputs" for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label class="inputs" for="email">Email</label>
                <input id="email" name="email" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label class="inputs" for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label class="inputs" for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
            </div>

            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>
</body>
</html>
