<%--
  Created by IntelliJ IDEA.
  User: vaish
  Date: 30-Sep-21
  Time: 8:01 PM
  To change this template use File | Settings | File Templates.
--%>



<%--  ------------------------------------------------- Navbar ------------------------------------------------------------ --%>

<nav class="navbar navbar-expand-lg navbar-dark primary-background fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp"><span><i class="fa fa-vimeo" style="font-size:48px;color:white"></i></span><span style="font-family: 'Cookie', cursive;
font-family: 'Merienda', cursive;font-family: 'Niconne', cursive;font-weight:900 ;font-size:40px">PS</span></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">


<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link active" aria-current="page" href="#">Home</a>--%>
<%--                </li>--%>

<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="#">Link</a>--%>
<%--                </li>--%>

<%--  -------------------------------------------------  Search ----------------------------------------------------------- --%>

    <ul class="navbar-nav form me-auto mb-2 mb-lg-0">
    <form class="d-flex align-items-centre">
        <input id="nav_search" class="form-control me-2" type="search" placeholder="Search for your daily needs" aria-label="Search">
        <button class="btn btn-outline-light" type="submit">Search</button>
    </form>
    </ul>
<%--  -------------------------------------------------  Search ----------------------------------------------------------- --%>


<%--    <li class="nav-item dropdown">--%>
<%--                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">--%>
<%--                        Dropdown--%>
<%--                    </a>--%>
<%--                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
<%--                        <li><a class="dropdown-item" href="#">Action</a></li>--%>
<%--                        <li><a class="dropdown-item" href="#">Another action</a></li>--%>
<%--                        <li><hr class="dropdown-divider"></li>--%>
<%--                        <li><a class="dropdown-item" href="#">Something else here</a></li>--%>
<%--                    </ul>--%>
<%--                </li>--%>

    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item me-2 ms-2">
                    <a class="nav-link" href="#"> <span> <i  class="fa fa-shopping-cart" style="font-size:28px;color:white"> </i> </span> </a>
        </li>
        <li class="nav-item me-2 ms-2">
            <a class="nav-link" href="#"> <span> <i  class="fa fa-phone-square" style="font-size:28px;color:white"> </i> </span> </a>
        </li>
                <li class="nav-item login-btn ms-2 me-2">
                    <a href="login_page.jsp" class="btn submit-btn btn-outline-light" type="submit"> <span> <i class="fa fa-user-circle fa-spin "></i>  </span> Login</a>
                </li>
        <li class="nav-item login-btn ms-2">
            <a href="register.jsp" class="btn submit-btn btn-outline-light" type="submit"> <span> <i class="fa fa-user-plus fa-spin "></i>  </span> SignUp</a>
        </li>
            </ul>

        </div>
    </div>
</nav>

<%--  --------------------------------------------- Navbar -------------------------------------------------------------- --%>