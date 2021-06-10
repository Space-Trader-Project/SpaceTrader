<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kenyonluce
  Date: 6/9/21
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--  GOOGLE FONTS  --%>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Bungee+Shade&display=swap" rel="stylesheet">

<link rel="stylesheet" href="../styles/register-page.css">


<div class="container">

        <div class="col-md-6">
            <div style="height: 200px; overflow: hidden"><img src="${singleAd.picture}" width="200"></div>
            <h2 class="header">${singleAd.title}</h2>
            <h3 style="color:yellow">$${singleAd.price}</h3>
            <p class="inputs">${singleAd.description}</p>
            <p style="color:yellow">In Stock: ${singleAd.quantity}</p>
                <%--                            <p>${ad.categories}</p>--%>
        </div>

</div>
