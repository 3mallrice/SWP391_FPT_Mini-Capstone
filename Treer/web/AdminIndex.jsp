<%-- 
    Document   : AdminIndex.jsp
    Created on : Feb 26, 2023, 2:27:19 AM
    Author     : Triệu
--%>

<%@page import="Treer.dto.Account"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Homepage</title>
        <!-- css style -->
        <link rel="stylesheet" href="css/bootstrap4.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css>" type="text/css">
        <link rel="stylesheet" href="css/styleAdmin.css" type="text/css"/>
    </head>
    <body>
        <%
            String name = (String) session.getAttribute("name");
            if (name == null) {
        %>
        <h2 style="color: red">You are not login yet!</h2>
        <%
        } else {
        %>
        <div id="page-container" class="main-admin">
            <nav class="navbar navbar-expand-lg navbar-light bg-light position-fixed w-100">
                <a class="navbar-brand" href="#"></a>
                <div id="open-menu" class="menu-bar">
                    <div class="bars"></div>
                </div>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown ets-right-0">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="img/Logo.jpg" class="img-fluid rounded-circle border user-profile">
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Profile</a>
                            <a class="dropdown-item" href="#">Change Password</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="mainController?action=logout">Logout</a>
                        </div>
                    </li>
                </ul>
            </nav>
            <div class="side-bar">
                <div class="side-bar-links">
                    <div class="side-bar-logo text-center py-3">
                        <a href="AdminIndex.jsp" >
                            <img src="img/Logo.jpg" class="img-fluid rounded-circle border bg-secoundry mb-3">
                            <h5>Treer</h5>
                        </a>
                    </div>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a href="mainController?action=backToAdminIndex" class="nav-links d-block"><i class="fa fa-home pr-2"></i> DASHBOARD</a>
                        </li>
                        <li class="nav-item">
                            <a href="mainController?action=manageAccounts" class="nav-links d-block"><i class="fa fa-users pr-2"></i> USERS</a>
                        </li>
                        <li class="nav-item">
                            <a href="mainController?action=plantsManager" class="nav-links d-block"><i class="fa fa-list pr-2"></i> PLANTS</a>
                        </li>
                        <li class="nav-item">
                            <a href="index.jsp" class="nav-links d-block"><i class="fa fa-list pr-2"></i> HOME PAGE</a>
                        </li>
                    </ul>
                </div>
                <div class="side-bar-icons">
                    <div class="side-bar-logo text-center py-3">
                        <a href="AdminIndex.jsp" >
                            <img src="img/Logo.jpg" class="img-fluid rounded-circle border bg-secoundry mb-3">
                            <h5>Treer</h5>
                        </a>
                    </div> 
                    <div class="icons d-flex flex-column align-items-center">
                        <a href="mainController?action=backToAdminIndex" class="set-width text-center display-inline-block my-1"><i class="fa fa-home"></i></a>
                        <a href="mainController?action=manageAccounts" class="set-width text-center display-inline-block my-1"><i class="fa fa-users"></i></a>
                        <a href="mainController?action=plantsManager" class="set-width text-center display-inline-block my-1"><i class="fa fa-list"></i></a>
                    </div>
                </div>
            </div>
            <div class="main-body-content w-100 ets-pt">
                <h2>DASHBOARD COMING SOON ...</h2>
            </div>
        </div>
        <% }%>


        <!-- Js Plugins -->
        <script src="js/jquery-3.2.1.slim.min.js"></script>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap4.min.js"></script>
        <script src="js/mainAdmin.js"></script>
    </body>
</html>
