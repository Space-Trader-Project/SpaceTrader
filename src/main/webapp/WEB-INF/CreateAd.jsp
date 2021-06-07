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

            <form>
                <div class="form-group">
                    <label for="itemtitle">Title</label>
                    <input type="text" class="form-control" id="itemtitle" placeholder="Space X Falcon">
                </div>
                <div class="form-group">
                    <label for="itemPrice">Price</label>
                    <input type="text" class="form-control" id="itemPrice" placeholder="2,300,000">
                </div>
                <div class="form-group">
                    <label for="itemCondition">Item Condition</label>
                    <select class="form-control" id="itemCondition">
                        <option>NEW</option>
                        <option>Like-New</option>
                        <option>Used</option>
                        <option>looks damaged works great</option>
                        <option>ugly</option>
                        <option>for parts</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="Catagory">Category</label>
                    <select class="form-control" id="Catagory">
                        <option>Complete Ships</option>
                        <option>Ship Parts</option>
                        <option>Satellites</option>
                        <option>Fuel Cells</option>
                        <option>Land Rovers</option>
                        <option>Drones</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Description</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlFile1">Example file input</label>
                    <input type="file" class="form-control-file" id="exampleFormControlFile1">
                </div>
                <button type="submit" class="btn btn-primary">Post Product</button>

            </form>
        </div>
    </div>

</div>

</body>
</html>
