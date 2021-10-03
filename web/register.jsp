<%--
  Created by IntelliJ IDEA.
  User: vaish
  Date: 01-Oct-21
  Time: 6:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
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
    /*#loader {*/
    /*    display: none;*/
    /*    position: fixed;*/
    /*    top: 0;*/
    /*    left: 0;*/
    /*    right: 0;*/
    /*    bottom: 0;*/
    /*    width: 100%;*/
    /*    background: rgba(0,0,0,0.75) url(Images/loading.jpg) no-repeat center center;*/
    /*    z-index: 10000;*/
    /*}*/


</style>

<body>
<%--NAVBAR--%>

<%@include file="navbar.jsp"%>

<%--SIGNUP FORM--%>
<main class="d-flex" style="margin-top: 109px">
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-header text-white fs-4 fw-bolder" style="background-color: #2196F3;text-align: center">
                        <span> <i class="fa fa-user-circle fa-2x"></i></span>
                        <p>Register Here</p>
                    </div>
                    <div class="card-body p-4">
                        <form id="reg-form"  action="RegisterServlet" method="post">
                            <div class="mb-1">
                                <label for="user_name" class="form-label">User Name</label>
                                <input required name="user_name" type="text" class="form-control" id="user_name" placeholder="Enter Username" aria-describedby="user_name">
                            </div>
                            <div class="mb-1">
                                <label for="user_address" class="form-label">Address</label>
                                <input name="user_address" type="text" class="form-control" id="user_address" placeholder="Enter your Address" aria-describedby="user_address">
                            </div>
                            <div class="mb-1">
                                <label for="exampleInputEmail1" class="form-label">Email address</label>
                                <input required name="user_email" type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter EmailAddress" aria-describedby="emailHelp">
                                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                            </div>
                            <div class="mb-1">
                                <label for="exampleInputPassword1" class="form-label">Password</label>
                                <input required name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Password">
                            </div>
                            <div class="mb-1 form-check">
                                <input name="user_check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Agree terms & conditions</label>
                            </div>
                         <div class="container fs-4 text-center" id="loader" style="display: none"> <span> <i class="fa fa-spinner fa-spin"></i>  </span>
                         <h6>Please Wait..</h6>
                         </div>
                            <button id="submit" type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%--    <div id="loader"></div>--%>
</main>


<%--       -----------          SCRIPTS   --------------           --%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
<script src="JS/code.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script>

    //
    $(document).ready(function() {
        console.log("Loaded ........");

        $('#reg-form').on('submit', function (event) {

            //prevent it to move to servlet
            event.preventDefault();

            let form = new FormData(this);
            $("#submit").hide();
            $("#loader").show();
            // send register servlet
            $.ajax({
                url: "RegisterServlet",
                type: 'POST',
                data: form,
                success: function (data, textStatus, jqXHR) {
                    console.log(data);
                    $("#submit").show();
                    $("#loader").hide();

                    if(data.trim() === 'done') {
                        // sweet alert message
                        swal("Registration Successfull !!").then((value) =>  {
                                window.location = "login_page.jsp"
                            });
                    }
                    else {
                        swal(data)
                    }
                },
                error: function (data, textStatus, errorThrown) {
                    // console.log(jqXHR)
                    $("#submit").show();
                    $("#loader").hide();

                    swal("Something went wrong .. Try Again !");

                },
                processData: false,
                contentType: false,
            });
        });
        });

</script>



</body>
</html>
