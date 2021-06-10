<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kenyonluce
  Date: 6/9/21
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">

        <div class="col-md-6">
            <div style="height: 200px; overflow: hidden"><img src="${singleAd.picture}" width="200"></div>
            <h2>${singleAd.title}</h2>
            <h3>$${singleAd.price}</h3>
            <p>${singleAd.description}</p>
            <p>In Stock: ${singleAd.quantity}</p>
                <%--                            <p>${ad.categories}</p>--%>
        </div>

</div>
