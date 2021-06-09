<%--
  Created by IntelliJ IDEA.
  User: kenyonluce
  Date: 6/9/21
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <div style="height: 200px; overflow: hidden"><img src="${ad.picture}" width="200"></div>
            <h2>${ad.title}</h2>
            <h3>$${ad.price}</h3>
            <p>${ad.description}</p>
            <p>In Stock: ${ad.quantity}</p>
                <%--                            <p>${ad.categories}</p>--%>
        </div>
    </c:forEach>
</div>
