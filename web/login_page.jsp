<%--
  Created by IntelliJ IDEA.
  User: vaish
  Date: 01-Oct-21
  Time: 5:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <%--    CSS--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link href="Styling/style.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Niconne&display=swap" rel="stylesheet">
</head>


<style>
    body{
         background-color: #29B6F6;
    }

</style>
<body>

<%--NAVBAR--%>

<%@include file="navbar.jsp"%>


<%--LOGIN FORM--%>
<main class="d-flex align-items-centre" style="margin-top: 130px;">
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-header text-white fs-4 fw-bolder" style="background-color: #2196F3;text-align: center">
                  <span> <i class="fa fa-user-plus fa-2x"></i></span>
                        <p>Login Here</p>
                    </div>
                    <div class="card-body p-3">
                        <form action="LoginServlet" method="post">
                            <div class="mb-2">
                                <label for="exampleInputEmail1" class="form-label">Email address</label>
                                <input name="email" required type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter EmailAddress" aria-describedby="emailHelp">
                                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                            </div>
                            <div class="mb-2">
                                <label for="exampleInputPassword1" class="form-label">Password</label>
                                <input name="password" required type="password" class="form-control" id="exampleInputPassword1"  placeholder="Enter Password">
                            </div>
                            <div class="container text-center">
                            <button type="submit" class="btn btn-primary">Submit</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>


<%--       -----------          SCRIPTS   --------------           --%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
<script src="JS/code.js" type="text/javascript"></script>
</body>
</html>
