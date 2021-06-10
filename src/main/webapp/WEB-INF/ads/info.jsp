<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kenyonluce
  Date: 6/9/21
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<%--  GOOGLE FONTS  --%>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Bungee+Shade&display=swap" rel="stylesheet">

<link rel="stylesheet" href="../styles/register-page.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">

        <div class="col-md-6">
            <div style="height: 200px; overflow: hidden"><img src="${singleAd.picture}" width="200"></div>
            <h2 class="header">${singleAd.title}</h2>
            <h3 style="color:yellow">$${singleAd.price}</h3>
            <p class="inputs">${singleAd.description}</p>
            <p style="color:yellow">In Stock: ${singleAd.quantity}</p>
            <p class="inputs">For purchasing information please contact:</p>
            <p class="inputs">${user.firstName}</p>
            <p class="inputs">${user.email}</p>
                <%--                            <p>${ad.categories}</p>--%>
        </div>

</div>

</body>
</html>