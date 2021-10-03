<%@ page import="java.sql.Connection" %>
<%@ page import="com.website.helper.ConnectionProvider" %><%--
  Created by IntelliJ IDEA.
  User: vaish
  Date: 29-Sep-21
  Time: 6:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>VPS</title>
<%--    CSS--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
      <link href="Styling/style.css" rel="stylesheet" type="text/css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Niconne&display=swap" rel="stylesheet">

  </head>

  <style>
      .banner-background{
          clip-path: polygon(50% 0%, 100% 0, 100% 43%, 100% 96%, 71% 100%, 33% 96%, 0 100%, 0% 43%, 0 0);
      }
  </style>


  <body>

    <%--  navbar--%>
  <%@include file="navbar.jsp"%>


<%--    banner  --%>

    <div class="container-fluid banner-background p-0 m-0">
        <div class="jumbotron">
            <div class="container">
            <h3 class="display-1" style="font-family: 'Cookie', cursive;font-family: 'Niconne', cursive;">Welcome to our Online Store</h3>
            <h5>Thank you for trusting us!</h5>
                <a class="btn btn-outline-dark mt-2 p-2"> <span> <i class="fa fa-shopping-basket"></i> </span> Shop now !</a>
        </div>
        </div>
    </div>

<%--    carousels--%>

<%--
    <h2 style="text-align: center;margin-top: 2rem;font-family: 'Crimson Text', serif;font-size: 50px;font-weight: bold"> <span> <i class="fa fa-handshake-o"></i> </span> Deals of the day</h2>
--%>
    <div id="carouselExampleControls" class="carousel slide mt-3 mb-3 ms-auto me-auto" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="card" style="width: 24rem;height: 34rem;margin-left: 38%;margin-right:38%;box-shadow: 3px 3px 3px 6px rgb(150, 148, 148);">
                    <img src="./Images/maggi.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Maggi Noodles</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
            <div class="card" style="width: 24rem;height: 34rem;margin-left: 38%;margin-right:38%;box-shadow: 3px 3px 3px 6px rgb(150, 148, 148);">
                    <img src="./Images/yipee.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Yippe Noodles</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
            <div class="card" style="width: 24rem;height: 34rem;margin-left: 38%;margin-right:38%;box-shadow: 3px 3px 3px 6px rgb(150, 148, 148);">
                    <img src="./Images/aata-noodels.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
            <div class="card me-auto" style="width: 24rem;height: 34rem;margin-left: 38%;margin-right:38%;box-shadow: 3px 3px 3px 6px rgb(150, 148, 148);">
                    <img src="./Images/manchrian.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>

        <div class="carousel-item">
            <div class="card me-auto" style="width: 24rem;height: 34rem;margin-left: 38%;margin-right:38%";box-shadow: 3px 3px 3px 6px rgb(150, 148, 148);>
                <img src="./Images/kachi-ghani-mustard-cooking-oil.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>

    <div class="carousel-item">
        <div class="card me-auto" style="width: 24rem;height: 34rem;margin-left: 38%;margin-right:38%;box-shadow: 3px 3px 3px 6px rgb(150, 148, 148);">
            <img src="./Images/aashirvaad-whole-wheat-atta.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>
    </div>


    <div class="carousel-item">
        <div class="card me-auto" style="width: 24rem;height: 34rem;margin-left: 38%;margin-right:38%;box-shadow: 3px 3px 3px 6px rgb(150, 148, 148);">
            <img src="./Images/maggi-cheese-macaroni-pazzta.png" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>
    </div>


        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>


<%-- --------------------------------------------------------------------------------------- --%>

<%-- To check connection of database -  Print the reference of object--%>
<%--   <%--%>
<%--       Connection connection = ConnectionProvider.getConnection();--%>


<%--  <h1> <%= connection %></h1>--%>
<%-- ------------------------------------------------------------------------------------------ --%>


<%--  JAVASCRIPT--%>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
 <script src="JS/code.js" type="text/javascript"></script>

<%--  <script>--%>

<%--    // JQUERY TEST--%>

<%--   // $(document).ready(function(){--%>
<%--   //--%>
<%--   //   alert("This is alert");--%>
<%--   // })--%>

<%-- </script>--%>

  </body>
</html>
