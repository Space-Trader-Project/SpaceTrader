<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="partials/head.jsp">
    <jsp:param name="title" value="Register For Our Site!" />
  </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<div class="container">
  <h1>Update the the fields</h1>
  <form action="/profile/edit" method="POST">
    <div class="form-group">
      <label for="First_Name">First Name</label>
      <input id="First_Name" name="First_Name" class="form-control" type="text">
    </div>
    <div class="form-group">
      <label for="Last_Name">Last Name</label>
      <input id="Last_Name" name="Last_Name" class="form-control" type="text">
    </div>
    <div class="form-group">
      <label for="username">Username</label>
      <input id="username" name="username" class="form-control" type="text">
    </div>
    <div class="form-group">
      <label for="email">Email</label>
      <input id="email" name="email" class="form-control" type="text">
    </div>
    <div class="form-group">
      <label for="password">Password</label>
      <input id="password" name="password" class="form-control" type="password">
    </div>
    <div class="form-group">
      <label for="new_password">New Password</label>
      <input id="new_password" name="new_password" class="form-control" type="password">
    </div>
    <div class="form-group">
      <label for="confirm_password">Confirm Password</label>
      <input id="confirm_password" name="confirm_password" class="form-control" type="password">
    </div>

    <input type="submit" class="btn btn-primary btn-block">
  </form>
</div>
</body>
</html>