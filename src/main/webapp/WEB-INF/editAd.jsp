<%--
  Created by IntelliJ IDEA.
  User: salimkhan
  Date: 6/7/21
  Time: 2:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit An Ad</title>
    <%-- BOOTSTRAP  --%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <%--  GOOGLE FONTS  --%>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Bungee+Shade&display=swap" rel="stylesheet">

    <%-- CSS --%>
    <link rel="stylesheet" href="../styles/register-page.css">


</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp"/>


<h1 class="header" >Edit An Ad</h1>

<div  class="postingBody">
    <div class="card mx-5" style="width: 18rem;">

        <%--        <img class="card-img-top" src="${pageContext.request.contextPath}/img/rocket.png" alt="Card image cap">--%>
        <div class="card-body">
            <h5 class="card-title header" style="color:black">List a Product</h5>



            <form  method="post" action="/ads/edit">

                <div class="form-group">
                    <label for="title">Title:</label>
                    <input type="text" class="form-control" id="title" placeholder="Space X Falcon" name="title">
                </div>
                <div class="form-group">
                    <label for="price">Price:</label>
                    <input type="text" class="form-control" id="price" placeholder="2,300,000" name="price">
                </div>
                <div class="form-group">
                    <label for="quantity">Quantity:</label>
                    <input type="text" class="form-control" id="quantity" placeholder="quantity" name="quantity">
                </div>
                <div class="form-group">
                    <label for="description">Description:</label>
                    <textarea class="form-control" id="description" rows="3" name="description"></textarea>
                </div>
                <div class="form-group">
                    <label for="picture">Upload a Photo</label>
<%--                    <label type="hidden" name="user_id" value="${sessionScope.user.id}"></label>--%>
                    <input type="text" name="picture" class="form-control-file" id="picture">
                </div>
                <p></p>
                <input name = "edit" id="edit" type="hidden" value="${EditAll.id}">
                <button type="submit" class="btn btn-outline-warning">Update Product</button>

            </form>
        </div>
    </div>

</div>
<%--<form action="/ads/edit" method="post">--%>
<%--    <label class="inputs" for="title">Title</label>--%>
<%--    <input name="title" id="title" type="text">--%>
<%--    <br />--%>
<%--    <label class="inputs"  for="description">Description</label>--%>
<%--    <input name="description" id="description" type="text">--%>
<%--    <br />--%>
<%--    <label class="inputs"  for="picture">Picture</label>--%>
<%--    <input name="picture" id="picture" type="text">--%>
<%--    <br />--%>
<%--    <label class="inputs" for="quantity">Quantity</label>--%>
<%--    <input  name="quantity" id="quantity" type="text">--%>
<%--    <br />--%>
<%--    <label class="inputs"  for="price">Price</label>--%>
<%--    <input name="price" id="price" type="text">--%>
<%--    <br />--%>
<%--    <input name = "edit" id="edit" type="hidden" value="${EditAll.id}">--%>
<%--    <input type="submit">--%>
<%--</form>--%>
</body>
</html>
