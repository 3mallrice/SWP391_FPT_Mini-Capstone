<%-- 
    Document   : header
    Created on : Feb 22, 2023, 12:31:42 AM
    Author     : tuank
--%>

<%@page import="Treer.dao.PlantDAO"%>
<%@page import="Treer.dto.Categories"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>header</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- css style -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">       
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css>" type="text/css">
        

    </head>

    <body>
        <nav class="icon-menu-bar"> 
            <ul>
                <h2><button class="close_menu_bar" style="
                            margin-bottom: 0%;
                            margin-left: 85%;
                            background-color: #005030;
                            border: none;
                            margin-left: 85%;
                            background-color: #005030;
                            color: white;
                            "><i class="fa fa-times"></i></button></h2>


                <%
                    ArrayList<Categories> catelist;
                    catelist = PlantDAO.printallCategories();

                    if (catelist != null && !catelist.isEmpty()) {
                        int count = 0;
                        for (Categories categories : catelist) {
                            if (count == 10) {
                                break;
                            }
                %> 
                <li>
                    <a href="categoriesServlet?cid=<%= categories.getCateID()%>"><i class="fa fa-tree"></i><%= categories.getCateName()%></a>
                </li>
                <%
                            count++;
                        }
                    }
                    String name = (String) session.getAttribute("name");
                %>
            </ul>
        </nav>

        <!-- Header Section Begin -->
        <header>
            <div class="menu_desktop">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3">
                            <div class="header-left justify-content-between">
                                <div class="iconmenu-desktop">
                                    <a href="#" class="model-menu-title">Danh mục sản phẩm</a>
                                    <span class="model-menu-icon">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                    </span>
                                </div>
                                <div class="logo">
                                    <a href="homeServlet" title="Top Logo">
                                        <img src="img/Logo-removebg-preview.png" class="img-fluid" alt="">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="header_center">
                                <p class="tel-topheader text-center">Tel (099) 9999 9999 ${role}}</p>
                                <form class="search-top-header text-center" method="post" action="mainController">
                                    <div class="input-group">

                                        <input type="text" class="form-control" name="txtsearch"
                                               placeholder="Bạn vui lòng nhập tên sản phẩm"
                                               value="<%= (request.getParameter("txtsearch") == null) ? "" : request.getParameter("txtsearch")%>">

                                        <span class="input-group-btn">
                                            <button class="btn button-search" 
                                                    type="submit"
                                                    value="search" 
                                                    name="action">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </span>

                                    </div>
                                </form>
                                <div class="menu-ngang">
                                    <nav class="navbar navbar-expand-lg navbar-light pb-0">
                                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                            <ul class="navbar-nav mr-auto">
                                                <li class="nav-item dropdown">
                                                    <a target="_blank" href="productDetail.jsp" class="nav-link " title="Cửa Hàng">Cửa
                                                        Hàng</a>
                                                </li>
                                                <li class="nav-item dropdown">                                       
                                                    <a target="_blank" href="blogServlet" class="nav-link " title="Tin tức">Tin tức</a>                             
                                                </li>
                                                <li class="nav-item dropdown">
                                                    <a target="_blank" href="#" class="nav-link " title="Về chúng tôi">Về
                                                        chúng tôi</a>
                                                </li>

                                                <li class="nav-item dropdown">
                                                    <%
                                                        if (name == null) {
                                                    %>
                                                    
                                                    <%
                                                    } else {
                                                    %>
                                                    <a target="_blank" href="personalpage.jsp" class="nav-link " title="Về chúng tôi">Trang cá nhân</a>
                                                    <%
                                                        }
                                                    %>

                                                </li>
                                            </ul>
                                        </div>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="auth-buttons mb-0 justify-content-center">
                                <%
                                    if (name == null) {
                                %>
                                <a href="login.jsp" class="btn btn-outline-primary">Đăng nhập</a>
                                <%
                                } else {
                                %>
                                <a href="mainController?action=logout" class="btn btn-outline-primary">Đăng xuất</a>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="col-lg-1 pr-0">
                            <div class="header-right">
                                <div class="social-icons">
                                    <ul class="list-unstyled list-inline listicon float-right mt-0">
                                        <li class="list-inline-item">
                                            <a target="_blank" href="#" title="Faceboook" class="face"><i
                                                    class="fa fa-facebook" re="nofollow"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a target="_blank" rel="nofollow" href="#" title="Twitter" class="twitter"><i
                                                    class="fa fa-twitter"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a target="_blank" rel="nofollow" href="#" title="Instagram"
                                               class="instagram"><i class="fa fa-instagram"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a rel="nofollow" href="#" title="Email" class="mail-envelope"><i
                                                    class="fa fa-envelope-o"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a target="_blank" rel="nofollow" href="#" title="Youtube" class="youtube"><i
                                                    class="fa fa-youtube-play"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>                        
                                <div class="cart">
                                    <a href="#">
                                        <i class="fa fa-shopping-cart"></i>
                                        <div class="cart-top">
                                        </div>
                                        <span class="title-cart">Giỏ Hàng</span>
                                    </a>
                                </div>                           
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </header>
        <!-- Header Section End -->

        <!-- Js Plugins -->  
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery.slicknav.js"></script> 
        <script src="js/bootstrap.min.js"></script> 
        <script src="js/main.js"></script>

        <!--code hiển thị bảng danh mục sản phẩm-->
        <script>
            const icon_menu_bar = document.querySelector('.icon-menu-bar');
            const iconmenu_desktop = document.querySelector('.iconmenu-desktop');
            const close_menu_bar = document.querySelector('.close_menu_bar');
            iconmenu_desktop.addEventListener('click', function () {
                icon_menu_bar.classList.toggle('visible');
            })
            close_menu_bar.addEventListener('click', function () {
                icon_menu_bar.classList.toggle('visible');
            })
        </script>  
    </body>
</html>
