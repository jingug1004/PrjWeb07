<%--
  Created by IntelliJ IDEA.
  User: wtime
  Date: 2017-02-23
  Time: 오후 1:34
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<!--=== Header v5 ===-->
<%--...--%>
<!--=== End Header v5 ===-->
<%@ include file="../include/header.jsp"%>

<%--<!DOCTYPE html>--%>
<%--<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->--%>
<%--<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->--%>
<%--<!--[if !IE]><!-->--%>
<%--<html lang="en"> <!--<![endif]-->--%>
<%--<head>--%>
    <%--<title>Registration | UNIFY</title>--%>

    <%--<!-- Meta -->--%>
    <%--<meta charset="utf-8">--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
    <%--<meta name="description" content="">--%>
    <%--<meta name="author" content="">--%>

    <%--<!-- Favicon -->--%>
    <%--<link rel="shortcut icon" href="../favicon.ico">--%>

    <%--<!-- Web Fonts -->--%>
    <%--<link rel='stylesheet' type='text/css'--%>
          <%--href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>--%>

    <%--<!-- CSS Global Compulsory -->--%>
    <%--<link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.min.css">--%>
    <%--<link rel="stylesheet" href="../assets/css/shop.style.css">--%>

    <%--<!-- CSS Header and Footer -->--%>
    <%--<link rel="stylesheet" href="../assets/css/headers/header-v5.css">--%>
    <%--<link rel="stylesheet" href="../assets/css/footers/footer-v4.css">--%>

    <%--<!-- CSS Implementing Plugins -->--%>
    <%--<link rel="stylesheet" href="../assets/plugins/animate.css">--%>
    <%--<link rel="stylesheet" href="../assets/plugins/line-icons/line-icons.css">--%>
    <%--<link rel="stylesheet" href="../assets/plugins/font-awesome/css/font-awesome.min.css">--%>
    <%--<link rel="stylesheet" href="../assets/plugins/scrollbar/css/jquery.mCustomScrollbar.css">--%>

    <%--<!-- CSS Page Styles -->--%>
    <%--<link rel="stylesheet" href="../assets/css/pages/log-reg-v3.css">--%>

    <%--<!-- Style Switcher -->--%>
    <%--<link rel="stylesheet" href="../assets/css/plugins/style-switcher.css">--%>

    <%--<!-- CSS Theme -->--%>
    <%--<link rel="stylesheet" href="../assets/css/theme-colors/default.css" id="style_color">--%>

    <%--<!-- CSS Customization -->--%>
    <%--<link rel="stylesheet" href="../assets/css/custom.css">--%>
<%--</head>--%>

<%--<body class="header-fixed">--%>

<%--<div class="wrapper">--%>
    <%--<!--=== Header v5 ===-->--%>
    <%--<div class="header-v5 header-static">--%>
        <%--<!-- Topbar v3 -->--%>
        <%--<div class="topbar-v3">--%>
            <%--<div class="search-open">--%>
                <%--<div class="container">--%>
                    <%--<input type="text" class="form-control" placeholder="Search">--%>
                    <%--<div class="search-close"><i class="icon-close"></i></div>--%>
                <%--</div>--%>
            <%--</div>--%>

            <%--<div class="container">--%>
                <%--<div class="row">--%>
                    <%--<div class="col-sm-6">--%>
                        <%--<!-- Topbar Navigation -->--%>
                        <%--<ul class="left-topbar">--%>
                            <%--<li>--%>
                                <%--<a>Currency (USD)</a>--%>
                                <%--<ul class="currency">--%>
                                    <%--<li class="active">--%>
                                        <%--<a href="#">USD <i class="fa fa-check"></i></a>--%>
                                    <%--</li>--%>
                                    <%--<li><a href="#">Euro</a></li>--%>
                                    <%--<li><a href="#">Pound</a></li>--%>
                                <%--</ul>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a>Language (EN)</a>--%>
                                <%--<ul class="language">--%>
                                    <%--<li class="active">--%>
                                        <%--<a href="#">English (EN)<i class="fa fa-check"></i></a>--%>
                                    <%--</li>--%>
                                    <%--<li><a href="#">Spanish (SPN)</a></li>--%>
                                    <%--<li><a href="#">Russian (RUS)</a></li>--%>
                                    <%--<li><a href="#">German (GRM)</a></li>--%>
                                <%--</ul>--%>
                            <%--</li>--%>
                        <%--</ul><!--/end left-topbar-->--%>
                    <%--</div>--%>
                    <%--<div class="col-sm-6">--%>
                        <%--<ul class="list-inline right-topbar pull-right">--%>
                            <%--<li><a href="#">Account</a></li>--%>
                            <%--<li><a href="../shop-ui-add-to-cart.html">Wishlist (0)</a></li>--%>
                            <%--<li><a href="shop-ui-login.jsp">Login</a> | <a href="shop-ui-register.jsp">Register</a>--%>
                            <%--</li>--%>
                            <%--<li><i class="search fa fa-search search-button"></i></li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div><!--/container-->--%>
        <%--</div>--%>
        <%--<!-- End Topbar v3 -->--%>

        <%--<!-- Navbar -->--%>
        <%--<div class="navbar navbar-default mega-menu" role="navigation">--%>
            <%--<div class="container">--%>
                <%--<!-- Brand and toggle get grouped for better mobile display -->--%>
                <%--<div class="navbar-header">--%>
                    <%--<button type="button" class="navbar-toggle" data-toggle="collapse"--%>
                            <%--data-target=".navbar-responsive-collapse">--%>
                        <%--<span class="sr-only">Toggle navigation</span>--%>
                        <%--<span class="icon-bar"></span>--%>
                        <%--<span class="icon-bar"></span>--%>
                        <%--<span class="icon-bar"></span>--%>
                    <%--</button>--%>
                    <%--<a class="navbar-brand" href="../home.jsp">--%>
                        <%--<img id="logo-header" src="../assets/img/logo.png" alt="Logo">--%>
                    <%--</a>--%>
                <%--</div>--%>

                <%--<!-- Shopping Cart -->--%>
                <%--<div class="shop-badge badge-icons pull-right">--%>
                    <%--<a href="#"><i class="fa fa-shopping-cart"></i></a>--%>
                    <%--<span class="badge badge-sea rounded-x">3</span>--%>
                    <%--<div class="badge-open">--%>
                        <%--<ul class="list-unstyled mCustomScrollbar" data-mcs-theme="minimal-dark">--%>
                            <%--<li>--%>
                                <%--<img src="../assets/img/thumb/05.jpg" alt="">--%>
                                <%--<button type="button" class="close">×</button>--%>
                                <%--<div class="overflow-h">--%>
                                    <%--<span>Black Glasses</span>--%>
                                    <%--<small>1 x $400.00</small>--%>
                                <%--</div>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<img src="../assets/img/thumb/02.jpg" alt="">--%>
                                <%--<button type="button" class="close">×</button>--%>
                                <%--<div class="overflow-h">--%>
                                    <%--<span>Black Glasses</span>--%>
                                    <%--<small>1 x $400.00</small>--%>
                                <%--</div>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<img src="../assets/img/thumb/03.jpg" alt="">--%>
                                <%--<button type="button" class="close">×</button>--%>
                                <%--<div class="overflow-h">--%>
                                    <%--<span>Black Glasses</span>--%>
                                    <%--<small>1 x $400.00</small>--%>
                                <%--</div>--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                        <%--<div class="subtotal">--%>
                            <%--<div class="overflow-h margin-bottom-10">--%>
                                <%--<span>Subtotal</span>--%>
                                <%--<span class="pull-right subtotal-cost">$1200.00</span>--%>
                            <%--</div>--%>
                            <%--<div class="row">--%>
                                <%--<div class="col-xs-6">--%>
                                    <%--<a href="../shop-ui-inner.html"--%>
                                       <%--class="btn-u btn-brd btn-brd-hover btn-u-sea-shop btn-block">View Cart</a>--%>
                                <%--</div>--%>
                                <%--<div class="col-xs-6">--%>
                                    <%--<a href="../shop-ui-add-to-cart.html"--%>
                                       <%--class="btn-u btn-u-sea-shop btn-block">Checkout</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<!-- End Shopping Cart -->--%>

                <%--<!-- Collect the nav links, forms, and other content for toggling -->--%>
                <%--<div class="collapse navbar-collapse navbar-responsive-collapse">--%>
                    <%--<!-- Nav Menu -->--%>
                    <%--<ul class="nav navbar-nav">--%>
                        <%--<!-- Pages -->--%>
                        <%--<li class="dropdown active">--%>
                            <%--<a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown"--%>
                               <%--data-toggle="dropdown">--%>
                                <%--Pages--%>
                            <%--</a>--%>
                            <%--<ul class="dropdown-menu">--%>
                                <%--<li><a href="../home.jsp">Shop UI</a></li>--%>
                                <%--<li><a href="../shop-ui-inner.html">Product Page</a></li>--%>
                                <%--<li><a href="../shop-ui-filter-grid.html">Filter Grid Page</a></li>--%>
                                <%--<li><a href="../shop-ui-filter-list.html">Filter List Page</a></li>--%>
                                <%--<li><a href="../shop-ui-add-to-cart.html">Checkout</a></li>--%>
                                <%--<li><a href="shop-ui-login.jsp">Login</a></li>--%>
                                <%--<li class="active"><a href="shop-ui-register.jsp">Register</a></li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                        <%--<!-- End Pages -->--%>

                        <%--<!-- Promotion -->--%>
                        <%--<li class="dropdown">--%>
                            <%--<a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown"--%>
                               <%--data-toggle="dropdown">--%>
                                <%--Promotion--%>
                            <%--</a>--%>
                            <%--<ul class="dropdown-menu">--%>
                                <%--<li class="dropdown-submenu">--%>
                                    <%--<a href="javascript:void(0);">Jeans</a>--%>
                                    <%--<ul class="dropdown-menu">--%>
                                        <%--<li><a href="#">Skinny Jeans</a></li>--%>
                                        <%--<li><a href="#">Bootcut Jeans</a></li>--%>
                                        <%--<li><a href="#">Straight Cut Jeans</a></li>--%>
                                    <%--</ul>--%>
                                <%--</li>--%>
                                <%--<li class="dropdown-submenu">--%>
                                    <%--<a href="javascript:void(0);">Shoes</a>--%>
                                    <%--<ul class="dropdown-menu">--%>
                                        <%--<li><a href="#">Sandals</a></li>--%>
                                        <%--<li><a href="#">Heels</a></li>--%>
                                    <%--</ul>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                        <%--<!-- End Promotion -->--%>

                        <%--<!-- Gifts -->--%>
                        <%--<li class="dropdown mega-menu-fullwidth">--%>
                            <%--<a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown"--%>
                               <%--data-toggle="dropdown">--%>
                                <%--Gifts--%>
                            <%--</a>--%>
                            <%--<ul class="dropdown-menu">--%>
                                <%--<li>--%>
                                    <%--<div class="mega-menu-content">--%>
                                        <%--<div class="container">--%>
                                            <%--<div class="row">--%>
                                                <%--<div class="col-md-3 col-sm-12 col-xs-12 md-margin-bottom-30">--%>
                                                    <%--<h3 class="mega-menu-heading">Pellentes que nec diam lectus</h3>--%>
                                                    <%--<p>Proin pulvinar libero quis auctor pharet ra. Aenean fermentum met--%>
                                                        <%--us orci, sedf eugiat augue pulvina r vitae. Nulla dolor nisl,--%>
                                                        <%--molestie nec aliquam vitae, gravida sodals dolor...</p>--%>
                                                    <%--<button type="button" class="btn-u btn-u-dark">Read More</button>--%>
                                                <%--</div>--%>
                                                <%--<div class="col-md-3 col-sm-4 col-xs-4 md-margin-bottom-30">--%>
                                                    <%--<a href="#"><img class="product-offers img-responsive"--%>
                                                                     <%--src="../assets/img/blog/01.jpg" alt=""></a>--%>
                                                <%--</div>--%>
                                                <%--<div class="col-md-3 col-sm-4 col-xs-4 sm-margin-bottom-30">--%>
                                                    <%--<a href="#"><img class="product-offers img-responsive"--%>
                                                                     <%--src="../assets/img/blog/02.jpg" alt=""></a>--%>
                                                <%--</div>--%>
                                                <%--<div class="col-md-3 col-sm-4 col-xs-4">--%>
                                                    <%--<a href="#"><img class="product-offers img-responsive"--%>
                                                                     <%--src="../assets/img/blog/03.jpg" alt=""></a>--%>
                                                <%--</div>--%>
                                            <%--</div><!--/end row-->--%>
                                        <%--</div><!--/end container-->--%>
                                    <%--</div><!--/end mega menu content-->--%>
                                <%--</li>--%>
                            <%--</ul><!--/end dropdown-menu-->--%>
                        <%--</li>--%>
                        <%--<!-- End Gifts -->--%>

                        <%--<!-- Books -->--%>
                        <%--<li class="dropdown mega-menu-fullwidth">--%>
                            <%--<a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown"--%>
                               <%--data-toggle="dropdown">--%>
                                <%--Books--%>
                            <%--</a>--%>
                            <%--<ul class="dropdown-menu">--%>
                                <%--<li>--%>
                                    <%--<div class="mega-menu-content">--%>
                                        <%--<div class="container">--%>
                                            <%--<div class="row">--%>
                                                <%--<div class="col-md-2 col-sm-6">--%>
                                                    <%--<h3 class="mega-menu-heading">Clothe</h3>--%>
                                                    <%--<ul class="list-unstyled style-list">--%>
                                                        <%--<li><a href="#">New in</a></li>--%>
                                                        <%--<li><a href="#">Coats &amp; Jackets</a></li>--%>
                                                        <%--<li><a href="#">Jeans</a></li>--%>
                                                        <%--<li><a href="#">Dresses</a></li>--%>
                                                        <%--<li><a href="#">Shorts</a> <span--%>
                                                                <%--class="label label-danger-shop">New</span></li>--%>
                                                        <%--<li><a href="#">Skirts</a></li>--%>
                                                        <%--<li><a href="#">T-Shirts</a></li>--%>
                                                    <%--</ul>--%>
                                                    <%--<h3 class="mega-menu-heading">Shoes</h3>--%>
                                                    <%--<ul class="list-unstyled style-list">--%>
                                                        <%--<li><a href="#">Boots</a></li>--%>
                                                        <%--<li><a href="#">FLats</a></li>--%>
                                                        <%--<li><a href="#">Heels</a></li>--%>
                                                        <%--<li><a href="#">Sandals</a></li>--%>
                                                        <%--<li><a href="#">Sports</a></li>--%>
                                                    <%--</ul>--%>
                                                <%--</div>--%>

                                                <%--<div class="col-md-2 col-sm-6">--%>
                                                    <%--<h3 class="mega-menu-heading">Accessories</h3>--%>
                                                    <%--<ul class="list-unstyled style-list">--%>
                                                        <%--<li><a href="#">All accessories</a></li>--%>
                                                        <%--<li><a href="#">Bags &amp; Purses</a></li>--%>
                                                        <%--<li><a href="#">Scarvs &amp; Hats</a></li>--%>
                                                        <%--<li><a href="#">Jewellery</a></li>--%>
                                                        <%--<li><a href="#">Fragrance &amp; Beauty</a></li>--%>
                                                    <%--</ul>--%>
                                                    <%--<h3 class="mega-menu-heading">Lingerie</h3>--%>
                                                    <%--<ul class="list-unstyled style-list">--%>
                                                        <%--<li><a href="#">Linger</a> <span--%>
                                                                <%--class="label label-danger-shop">New</span></li>--%>
                                                        <%--<li><a href="#">Slippers</a></li>--%>
                                                    <%--</ul>--%>
                                                    <%--<h3 class="mega-menu-heading">Nightwear</h3>--%>
                                                    <%--<ul class="list-unstyled style-list">--%>
                                                        <%--<li><a href="#">Nightwear</a></li>--%>
                                                        <%--<li><a href="#">Socks</a></li>--%>
                                                        <%--<li><a href="#">Tights</a></li>--%>
                                                    <%--</ul>--%>
                                                <%--</div>--%>

                                                <%--<div class="col-md-2 col-sm-6">--%>
                                                    <%--<h3 class="mega-menu-heading">Mixed</h3>--%>
                                                    <%--<ul class="list-unstyled style-list">--%>
                                                        <%--<li><a href="#">New in</a></li>--%>
                                                        <%--<li><a href="#">Coats &amp; Jackets</a> <span--%>
                                                                <%--class="label label-danger-shop">New</span></li>--%>
                                                        <%--<li><a href="#">Jeans</a></li>--%>
                                                        <%--<li><a href="#">Dresses</a></li>--%>
                                                        <%--<li><a href="#">Shorts</a></li>--%>
                                                        <%--<li><a href="#">Skirts</a></li>--%>
                                                        <%--<li><a href="#">T-shirts</a></li>--%>
                                                        <%--<li><a href="#">Boots</a></li>--%>
                                                        <%--<li><a href="#">Flats</a></li>--%>
                                                        <%--<li><a href="#">Heels</a></li>--%>
                                                        <%--<li><a href="#">Sandals</a></li>--%>
                                                        <%--<li><a href="#">Sports</a></li>--%>
                                                        <%--<li><a href="#">Socks</a></li>--%>
                                                        <%--<li><a href="#">Tights</a></li>--%>
                                                    <%--</ul>--%>
                                                <%--</div>--%>

                                                <%--<div class="col-md-2 col-sm-6">--%>
                                                    <%--<h3 class="mega-menu-heading">Clothe</h3>--%>
                                                    <%--<ul class="list-unstyled style-list">--%>
                                                        <%--<li><a href="#">New in</a></li>--%>
                                                        <%--<li><a href="#">Coats &amp; Jackets</a></li>--%>
                                                        <%--<li><a href="#">Jeans</a></li>--%>
                                                        <%--<li><a href="#">Dresses</a></li>--%>
                                                        <%--<li><a href="#">Shorts</a> <span--%>
                                                                <%--class="label label-danger-shop">New</span></li>--%>
                                                        <%--<li><a href="#">Skirts</a></li>--%>
                                                        <%--<li><a href="#">T-shirts</a></li>--%>
                                                    <%--</ul>--%>
                                                    <%--<h3 class="mega-menu-heading">Shoes</h3>--%>
                                                    <%--<ul class="list-unstyled style-list">--%>
                                                        <%--<li><a href="#">Boots</a></li>--%>
                                                        <%--<li><a href="#">Flats</a></li>--%>
                                                        <%--<li><a href="#">Heels</a></li>--%>
                                                        <%--<li><a href="#">Sandals</a></li>--%>
                                                        <%--<li><a href="#">Sports</a></li>--%>
                                                    <%--</ul>--%>
                                                <%--</div>--%>

                                                <%--<div class="col-md-2 col-sm-6">--%>
                                                    <%--<h3 class="mega-menu-heading">Accessories</h3>--%>
                                                    <%--<ul class="list-unstyled style-list">--%>
                                                        <%--<li><a href="#">All accessories</a></li>--%>
                                                        <%--<li><a href="#">Bags &amp; Purses</a></li>--%>
                                                        <%--<li><a href="#">Scarvs &amp; Hats</a></li>--%>
                                                        <%--<li><a href="#">Jewellery</a></li>--%>
                                                        <%--<li><a href="#">Fragrance &amp; Beauty</a></li>--%>
                                                    <%--</ul>--%>
                                                    <%--<h3 class="mega-menu-heading">Lingerie</h3>--%>
                                                    <%--<ul class="list-unstyled style-list">--%>
                                                        <%--<li><a href="#">Linger</a> <span--%>
                                                                <%--class="label label-danger-shop">New</span></li>--%>
                                                        <%--<li><a href="#">Slippers</a></li>--%>
                                                    <%--</ul>--%>
                                                    <%--<h3 class="mega-menu-heading">Nightwear</h3>--%>
                                                    <%--<ul class="list-unstyled style-list">--%>
                                                        <%--<li><a href="#">Nightwear</a></li>--%>
                                                        <%--<li><a href="#">Socks</a></li>--%>
                                                        <%--<li><a href="#">Tights</a></li>--%>
                                                    <%--</ul>--%>
                                                <%--</div>--%>

                                                <%--<div class="col-md-2 col-sm-6">--%>
                                                    <%--<h3 class="mega-menu-heading">Mixed</h3>--%>
                                                    <%--<ul class="list-unstyled style-list">--%>
                                                        <%--<li><a href="#">New in</a></li>--%>
                                                        <%--<li><a href="#">Coats &amp; Jackets</a> <span--%>
                                                                <%--class="label label-danger-shop">New</span></li>--%>
                                                        <%--<li><a href="#">Jeans</a></li>--%>
                                                        <%--<li><a href="#">Dresses</a></li>--%>
                                                        <%--<li><a href="#">Shorts</a></li>--%>
                                                        <%--<li><a href="#">Skirts</a></li>--%>
                                                        <%--<li><a href="#">T-shirts</a></li>--%>
                                                        <%--<li><a href="#">Boots</a></li>--%>
                                                        <%--<li><a href="#">Flats</a></li>--%>
                                                        <%--<li><a href="#">Heels</a></li>--%>
                                                        <%--<li><a href="#">Sandals</a></li>--%>
                                                        <%--<li><a href="#">Sports</a></li>--%>
                                                        <%--<li><a href="#">Socks</a></li>--%>
                                                        <%--<li><a href="#">Tights</a> <span--%>
                                                                <%--class="label label-danger-shop">New</span></li>--%>
                                                    <%--</ul>--%>
                                                <%--</div>--%>
                                            <%--</div><!--/end row-->--%>
                                        <%--</div><!--/end container-->--%>
                                    <%--</div><!--/end mega menu content-->--%>
                                <%--</li>--%>
                            <%--</ul><!--/end dropdown-menu-->--%>
                        <%--</li>--%>
                        <%--<!-- End Books -->--%>

                        <%--<!-- Clothes -->--%>
                        <%--<li class="dropdown">--%>
                            <%--<a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown"--%>
                               <%--data-toggle="dropdown" data-delay="1000">--%>
                                <%--Clothes--%>
                            <%--</a>--%>
                            <%--<ul class="dropdown-menu">--%>
                                <%--<li><a href="#">Jeans</a></li>--%>
                                <%--<li><a href="#">T-shirts</a></li>--%>
                                <%--<li><a href="#">Shorts</a></li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                        <%--<!-- End Clothes -->--%>

                        <%--<!-- Main Demo -->--%>
                        <%--<li><a href="../home.jsp">Main Demo</a></li>--%>
                        <%--<!-- Main Demo -->--%>
                    <%--</ul>--%>
                    <%--<!-- End Nav Menu -->--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<!-- End Navbar -->--%>
    <%--</div>--%>
    <%--<!--=== End Header v5 ===-->--%>

    <!--=== Breadcrumbs v4 ===-->
    <div class="breadcrumbs-v4">
        <div class="container">
            <span class="page-name">Log In</span>
            <h1>새로운 품격을 위한 <span class="shop-green">시작</span></h1>
            <ul class="breadcrumb-v4-in">
                <li><a href="../home.jsp">Home</a></li>
                <li><a href="">Product</a></li>
                <li class="active">Log In</li>
            </ul>
        </div><!--/end container-->
    </div>
    <!--=== End Breadcrumbs v4 ===-->

    <!--=== Registre ===-->
    <div class="log-reg-v3 content-md margin-bottom-30">
        <div class="container">
            <div class="row">
                <div class="col-md-7 md-margin-bottom-50">
                    <h2 class="welcome-title">Welcome to UNIFY</h2>
                    <p>지금 회원 가입하신 후 UNIFY의 다양한 서비스를 만나보세요.</p><br>
                    <div class="row margin-bottom-50">
                        <div class="col-sm-4 md-margin-bottom-20">
                            <div class="site-statistics">
                                <span>20,039</span>
                                <small>Products</small>
                            </div>
                        </div>
                        <div class="col-sm-4 md-margin-bottom-20">
                            <div class="site-statistics">
                                <span>54,283</span>
                                <small>Reviews</small>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="site-statistics">
                                <span>376k</span>
                                <small>Sale</small>
                            </div>
                        </div>
                    </div>
                    <div class="members-number">
                        <h3>전 세계 <span class="shop-green">13,000명 </span>이상의 회원</h3>
                        <img class="img-responsive" src="../assets/img/map.png" alt="">
                    </div>
                </div>

                <div class="col-md-5">
                    <%--<form id="sky-form4" class="log-reg-block sky-form">--%>
                    <form id="sky-form4" class="log-reg-block sky-form" action="/user/registPost" method="post">
                        <h2>Create New Account</h2>

                        <div class="login-input reg-input">
                            <div class="row">
                                <div class="col-sm-6">
                                    <section>
                                        <label class="input">
                                            <input type="text" name="uid" placeholder="USER ID"
                                                   class="form-control">
                                            <form:errors path="uid" cssClass="error"/>
                                        </label>
                                    </section>
                                </div>
                                <div class="col-sm-6">
                                    <section>
                                        <label class="input">
                                            <input type="text" name="uname" placeholder="User name"
                                                   class="form-control">
                                            <form:errors path="uname" cssClass="error"/>
                                            <%--messages.properties 안에 경로 레벨과 같아야 함!--%>
                                        </label>
                                    </section>
                                </div>
                            </div>
                            <label class="select margin-bottom-15">
                                <select name="ugender" class="form-control">
                                    <option value="0" selected disabled>Gender</option>
                                    <option value="1">Male</option>
                                    <option value="2">Female</option>
                                    <option value="3">Other</option>
                                </select>
                            </label>
                            <div class="row margin-bottom-10">
                                <div class="col-xs-6">
                                    <label class="select">
                                        <select name="umonth" class="form-control">
                                            <option disabled="" selected="" value="0"
                                                    <c:if test="${reg_month == 0}"></c:if>>Month</option>
                                            <%--<option>January</option>--%>
                                            <option value="1" <c:if test="${reg_month == 1}">selected</c:if>>January</option>
                                            <option value="2" <c:if test="${reg_month == 2}">selected</c:if>>February</option>
                                            <option value="3" <c:if test="${reg_month == 3}">selected</c:if>>March</option>
                                            <option value="4" <c:if test="${reg_month == 4}">selected</c:if>>April</option>
                                            <option value="5" <c:if test="${reg_month == 5}">selected</c:if>>May</option>
                                            <option value="6" <c:if test="${reg_month == 6}">selected</c:if>>June</option>
                                            <option value="7" <c:if test="${reg_month == 7}">selected</c:if>>July</option>
                                            <option value="8" <c:if test="${reg_month == 8}">selected</c:if>>August</option>
                                            <option value="9" <c:if test="${reg_month == 9}">selected</c:if>>September</option>
                                            <option value="10" <c:if test="${reg_month == 10}">selected</c:if>>October</option>
                                            <option value="11" <c:if test="${reg_month == 11}">selected</c:if>>November</option>
                                            <option value="12" <c:if test="${reg_month == 12}">selected</c:if>>December</option>
                                        </select>
                                    </label>
                                </div>
                                <div class="col-xs-3">
                                    <input type="text" name="uday" placeholder="Day" class="form-control" maxlength="2">
                                </div>
                                <div class="col-xs-3">
                                    <input type="text" name="uyear" placeholder="Year" class="form-control" maxlength="4">
                                </div>
                            </div>
                            <section>
                                <label class="input">
                                    <input type="text" name="nickname" placeholder="Nickname" class="form-control">
                                    <form:errors path="nickname" cssClass="error"/>
                                </label>
                            </section>
                            <section>
                                <label class="input">
                                    <input type="email" name="email" placeholder="Email address" class="form-control">
                                    <form:errors path="email" cssClass="error"/>
                                </label>
                            </section>
                            <section>
                                <label class="input">
                                    <input type="password" name="upw" placeholder="Password" id="password"
                                           class="form-control">
                                    <form:errors path="upw" cssClass="error"/>
                                </label>
                            </section>
                            <section>
                                <label class="input">
                                    <input type="password" name="upwconfirm" placeholder="Confirm password"
                                           class="form-control">
                                    <form:errors path="upwconfirm" cssClass="error"/>
                                </label>
                            </section>
                        </div>

                        <label class="checkbox margin-bottom-10">
                            <input type="checkbox" name="checkbox"/>
                            <i></i>
                            최신 뉴스를 받아 보려면 '뉴스 레터 구독'
                        </label>
                        <label class="checkbox margin-bottom-20">
                            <input type="checkbox" name="checkbox"/>
                            <i></i>
                            저는 <a href="#">이용약관 &amp; 운영방침</a>에 동의한 것을 읽었습니다.
                        </label>
                        <button class="btn-u btn-u-sea-shop btn-block margin-bottom-20" type="submit">Create Account
                        </button>
                    </form>

                    <div class="margin-bottom-20"></div>
                    <p class="text-center">계정을 가지고 계신가요? <a href="shop-ui-login.jsp">Login</a></p>
                </div>
            </div><!--/end row-->
        </div><!--/end container-->
    </div>
    <!--=== End Registre ===-->

    <!--=== Shop Suvbscribe ===-->
    <div class="shop-subscribe">
        <div class="container">
            <div class="row">
                <div class="col-md-8 md-margin-bottom-20">
                    <h2>subscribe to our weekly <strong>newsletter</strong></h2>
                </div>
                <div class="col-md-4">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Email your email...">
                        <span class="input-group-btn">
								<button class="btn" type="button"><i class="fa fa-envelope-o"></i></button>
							</span>
                    </div>
                </div>
            </div>
        </div><!--/end container-->
    </div>
    <!--=== End Shop Suvbscribe ===-->

<%@ include file="../include/footer.jsp"%>

    <%--<!--=== Footer v4 ===-->--%>
    <%--<div class="footer-v4">--%>
        <%--<div class="footer">--%>
            <%--<div class="container">--%>
                <%--<div class="row">--%>
                    <%--<!-- About -->--%>
                    <%--<div class="col-md-4 md-margin-bottom-40">--%>
                        <%--<a href="../home.jsp"><img class="footer-logo" src="../assets/img/logo-2.png" alt=""></a>--%>
                        <%--<p>About UNIFY dolor sit amet, consectetur adipiscing elit. Maecenas eget nisl id libero--%>
                            <%--tincidunt sodales.</p>--%>
                        <%--<br>--%>
                        <%--<ul class="list-unstyled address-list margin-bottom-20">--%>
                            <%--<li><i class="fa fa-angle-right"></i>California, US, Lorem Lis Street, Orange, 25</li>--%>
                            <%--<li><i class="fa fa-angle-right"></i>Phone: 800 123 3456</li>--%>
                            <%--<li><i class="fa fa-angle-right"></i>Fax: 800 123 3456</li>--%>
                            <%--<li><i class="fa fa-angle-right"></i>Email: info@anybiz.co</li>--%>
                        <%--</ul>--%>

                        <%--<ul class="list-inline shop-social">--%>
                            <%--<li><a href="#"><i class="fb rounded-md fa fa-facebook"></i></a></li>--%>
                            <%--<li><a href="#"><i class="tw rounded-md fa fa-twitter"></i></a></li>--%>
                            <%--<li><a href="#"><i class="gp rounded-md fa fa-google-plus"></i></a></li>--%>
                            <%--<li><a href="#"><i class="yt rounded-md fa fa-youtube"></i></a></li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                    <%--<!-- End About -->--%>

                    <%--<!-- Simple List -->--%>
                    <%--<div class="col-md-2 col-sm-3">--%>
                        <%--<div class="row">--%>
                            <%--<div class="col-sm-12 col-xs-6">--%>
                                <%--<h2 class="thumb-headline">Secciones</h2>--%>
                                <%--<ul class="list-unstyled simple-list margin-bottom-20">--%>
                                    <%--<li><a href="#">Ultima Hora</a></li>--%>
                                    <%--<li><a href="#">Exclusiva</a></li>--%>
                                    <%--<li><a href="#">Documentos </a></li>--%>
                                    <%--<li><a href="#">Francisco papa</a></li>--%>
                                    <%--<li>...</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>

                            <%--<div class="col-sm-12 col-xs-6">--%>
                                <%--<h2 class="thumb-headline">Temas</h2>--%>
                                <%--<ul class="list-unstyled simple-list">--%>
                                    <%--<li><a href="#">Ultima Hora</a></li>--%>
                                    <%--<li><a href="#">Exclusiva</a></li>--%>
                                    <%--<li><a href="#">Documentos </a></li>--%>
                                    <%--<li><a href="#">Francisco papa</a></li>--%>
                                    <%--<li>...</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>

                    <%--<div class="col-md-2 col-sm-3">--%>
                        <%--<div class="row">--%>
                            <%--<div class="col-sm-12 col-xs-6">--%>
                                <%--<h2 class="thumb-headline">Utilidades</h2>--%>
                                <%--<ul class="list-unstyled simple-list margin-bottom-20">--%>
                                    <%--<li><a href="#">Ultima Hora</a></li>--%>
                                    <%--<li><a href="#">Exclusiva</a></li>--%>
                                    <%--<li><a href="#">Documentos </a></li>--%>
                                    <%--<li>...</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>

                            <%--<div class="col-sm-12 col-xs-6">--%>
                                <%--<h2 class="thumb-headline">Documentos</h2>--%>
                                <%--<ul class="list-unstyled simple-list">--%>
                                    <%--<li><a href="#">Ultima Hora</a></li>--%>
                                    <%--<li><a href="#">Exclusiva</a></li>--%>
                                    <%--<li><a href="#">Documentos </a></li>--%>
                                    <%--<li><a href="#">Francisco papa</a></li>--%>
                                    <%--<li>...</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>

                    <%--<div class="col-md-2 col-sm-3">--%>
                        <%--<div class="row">--%>
                            <%--<div class="col-sm-12 col-xs-6">--%>
                                <%--<h2 class="thumb-headline">Publicidad</h2>--%>
                                <%--<ul class="list-unstyled simple-list margin-bottom-20">--%>
                                    <%--<li><a href="#">Ultima Hora</a></li>--%>
                                    <%--<li><a href="#">Exclusiva</a></li>--%>
                                    <%--<li><a href="#">Documentos </a></li>--%>
                                    <%--<li><a href="#">Francisco papa</a></li>--%>
                                    <%--<li>...</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>

                            <%--<div class="col-sm-12 col-xs-6">--%>
                                <%--<h2 class="thumb-headline">Contacto</h2>--%>
                                <%--<ul class="list-unstyled simple-list">--%>
                                    <%--<li><a href="#">Ultima Hora</a></li>--%>
                                    <%--<li><a href="#">Exclusiva</a></li>--%>
                                    <%--<li><a href="#">Documentos </a></li>--%>
                                    <%--<li><a href="#">Francisco papa</a></li>--%>
                                    <%--<li>...</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>

                    <%--<div class="col-md-2 col-sm-3">--%>
                        <%--<div class="row">--%>
                            <%--<div class="col-sm-12 col-xs-6">--%>
                                <%--<h2 class="thumb-headline">Utilidades</h2>--%>
                                <%--<ul class="list-unstyled simple-list margin-bottom-20">--%>
                                    <%--<li><a href="#">Ultima Hora</a></li>--%>
                                    <%--<li><a href="#">Exclusiva</a></li>--%>
                                    <%--<li>...</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>

                            <%--<div class="col-sm-12 col-xs-6">--%>
                                <%--<h2 class="thumb-headline">Documentos</h2>--%>
                                <%--<ul class="list-unstyled simple-list">--%>
                                    <%--<li><a href="#">Ultima Hora</a></li>--%>
                                    <%--<li><a href="#">Exclusiva</a></li>--%>
                                    <%--<li>...</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<!-- End Simple List -->--%>
                <%--</div><!--/end row-->--%>
            <%--</div><!--/end continer-->--%>
        <%--</div><!--/footer-->--%>

        <%--<div class="copyright">--%>
            <%--<div class="container">--%>
                <%--<div class="row">--%>
                    <%--<div class="col-md-6">--%>
                        <%--<p>--%>
                            <%--2014 &copy; UNIFY. ALL Rights Reserved.--%>
                            <%--<a target="_blank" href="https://twitter.com/htmlstream">Htmlstream</a> | <a href="#">Privacy--%>
                            <%--Policy</a> | <a href="#">Terms of Service</a>--%>
                        <%--</p>--%>
                    <%--</div>--%>
                    <%--<div class="col-md-6">--%>
                        <%--<ul class="list-inline sponsors-icons pull-right">--%>
                            <%--<li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>--%>
                            <%--<li><a href="#"><i class="fa fa-cc-visa"></i></a></li>--%>
                            <%--<li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>--%>
                            <%--<li><a href="#"><i class="fa fa-cc-discover"></i></a></li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div><!--/copyright-->--%>
    <%--</div>--%>
    <%--<!--=== End Footer v4 ===-->--%>
<%--</div><!--/wrapper-->--%>

<%--<!-- JS Global Compulsory -->--%>
<%--<script src="../assets/plugins/jquery/jquery.min.js"></script>--%>
<%--<script src="../assets/plugins/jquery/jquery-migrate.min.js"></script>--%>
<%--<script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>--%>
<%--<!-- JS Implementing Plugins -->--%>
<%--<script src="../assets/plugins/back-to-top.js"></script>--%>
<%--<script src="../assets/plugins/smoothScroll.js"></script>--%>
<%--<script src="../assets/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>--%>
<%--<script src="../assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>--%>
<%--<!-- JS Customization -->--%>
<%--<script src="../assets/js/custom.js"></script>--%>
<%--<!-- JS Page Level -->--%>
<%--<script src="../assets/js/shop.app.js"></script>--%>
<%--<script src="../assets/js/plugins/style-switcher.js"></script>--%>
<%--<script src="../assets/js/forms/page_registration.js"></script>--%>
<%--<script>--%>
    <%--jQuery(document).ready(function () {--%>
        <%--App.init();--%>
        <%--App.initScrollBar();--%>
        <%--Registration.initRegistration();--%>
        <%--StyleSwitcher.initStyleSwitcher();--%>
    <%--});--%>
<%--</script>--%>

<%--<!--[if lt IE 9]>--%>
<%--<script src="assets/plugins/respond.js"></script>--%>
<%--<script src="assets/plugins/html5shiv.js"></script>--%>
<%--<script src="assets/js/plugins/placeholder-IE-fixes.js"></script>--%>
<%--<script src="assets/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>--%>
<%--<![endif]-->--%>
<%--<!--[if lt IE 10]>--%>
<%--<script src="assets/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>--%>
<%--<![endif]-->--%>

<%--</body>--%>
<%--</html>--%>