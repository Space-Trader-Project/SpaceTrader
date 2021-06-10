<%--
  Created by IntelliJ IDEA.
  User: timothylefkowitz
  Date: 6/4/21
  Time: 3:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Post an Item</title>
    <jsp:include page="/WEB-INF/partials/head.jsp" />

        <%--    stylesheet--%>
    <link rel="stylesheet" href="/styles/stylesheet.css">
</head>



<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />



<div class="postingBody">
    <div class="card" style="width: 18rem;">

<%--        <img class="card-img-top" src="${pageContext.request.contextPath}/img/rocket.png" alt="Card image cap">--%>
        <div class="card-body">
            <h5 class="card-title">List a Product</h5>



            <form method="post" action="/CreateAd">

                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" id="title" placeholder="Space X Falcon" name="title">
                </div>
                <div class="form-group">
                    <label for="price">Price</label>
                    <input type="text" class="form-control" id="price" placeholder="2,300,000" name="price">
                </div>
                <div class="form-group">
                    <label for="quantity">Quantity</label>
                    <input type="text" class="form-control" id="quantity" placeholder="quantity" name="quantity">
                </div>
                <div class="form-group">
                    <label for="Description">Description</label>
                    <textarea class="form-control" id="Description" rows="3" name="Description"></textarea>
                </div>
                <div class="form-group">
                    <label for="picture">Upload a Photo</label>
                    <label type="hidden" name="user_id" value="${sessionScope.user.id}"></label>
                    <input type="file" class="form-control-file" id="picture">
                </div>
                <p></p>
                <button type="submit" class="btn btn-primary">Post Product</button>

            </form>
        </div>
    </div>

</div>

</body>
</html>
