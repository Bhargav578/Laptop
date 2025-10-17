<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="Laptop.Shop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
 <!DOCTYPE html>
 <html lang="en">
 
 <head>
     <meta charset="UTF-8">
     <meta http-equiv="x-ua-compatible" content="ie=edge" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
     
     <title>Ekka - Ecommerce .</title>
     <meta name="keywords" content="apparel, catalog, clean, ecommerce, ecommerce HTML, electronics, fashion, html eCommerce, html store, minimal, multipurpose, multipurpose ecommerce, online store, responsive ecommerce template, shops" />
     <meta name="description" content="Best ecommerce html template for single and multi vendor store.">
     <meta name="author" content="ashishmaraviya">
     
    <!-- site Favicon -->
    <link rel="icon" href="assets/images/favicon/favicon-5.png" sizes="32x32" />
    <link rel="apple-touch-icon" href="assets/images/favicon/favicon-5.png" />
    <meta name="msapplication-TileImage" content="assets/images/favicon/favicon-5.png" />

    <!-- css Icon Font -->
    <link rel="stylesheet" href="assets/css/vendor/ecicons.min.css" />

    <!-- css All Plugins Files -->
    <link rel="stylesheet" href="assets/css/plugins/animate.css" />
    <link rel="stylesheet" href="assets/css/plugins/swiper-bundle.min.css" />
    <link rel="stylesheet" href="assets/css/plugins/jquery-ui.min.css" />
    <link rel="stylesheet" href="assets/css/plugins/countdownTimer.css" />
    <link rel="stylesheet" href="assets/css/plugins/slick.min.css" />
    <link rel="stylesheet" href="assets/css/plugins/nouislider.css" />
    <link rel="stylesheet" href="assets/css/plugins/bootstrap.css" />

     <!-- Main Style -->
    <link rel="stylesheet" href="assets/css/style.css" />
    <link rel="stylesheet" href="assets/css/responsive.css" />
    <!-- Main Style -->
    <link rel="stylesheet" href="assets/css/demo5.css" />
     
    <!-- Background css -->
    <link rel="stylesheet" id="bg-switcher-css" href="assets/css/backgrounds/bg-4.css">
    <style>
        .ec-product-inner .ec-pro-image .ec-pro-actions .add-to-cart:hover {
    background-color: #ffffff;
    -webkit-box-shadow: 0px 0px 5px 0px #ccc;
    box-shadow: 0px 0px 5px 0px #ccc;
}
         /*for use Radio Button only*/

        #ContentPlaceHolder2_rdbStandard,  #ContentPlaceHolder2_rdbExpress,  #ContentPlaceHolder2_orderCOD {
            width: auto !important;
            height:auto !important;
        }
       
         /*for use CheckBox  only*/

        #ContentPlaceHolder2_Checkbox1, #ContentPlaceHolder2_chkBillingAddress{
             width: auto !important;
             height:auto !important;
        }

        /* for use checkbox list use only*/

       #ContentPlaceHolder2_chkBrand::after {
            width: auto !important;
            height: auto !important;
        }

       /* html tag table, tbody, tr, td, span, input only */
        table tbody tr td span input{
            width: auto;
            height:auto;
        }

    </style>
</head>
<body>
    <div id="ec-overlay"><span class="loader_img"></span></div>

    <!-- Header start  -->
    <header class="ec-header">
        <!--Ec Header Top Start -->
        <div class="header-top">
            <div class="container">
                <div class="row align-items-center">
                    <!-- Header Top phone Start -->
                    <div class="col header-top-left">
                        <!-- Social Start -->
                        <div class="header-top-social">
                            <ul class="mb-0">
                                <li class="list-inline-item"><a href="#"><i class="ecicon eci-facebook"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="ecicon eci-instagram"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="ecicon eci-linkedin"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="ecicon eci-twitter"></i></a></li>
                            </ul>
                        </div>
                        <!-- Social End -->
                    </div>
                    <!-- Header Top phone End -->
                    <!-- Header Top call Start -->
                    <div class="col header-top-center">
                        <!-- Language Start -->
                        <div class="header-top-lan-curr header-top-lan dropdown">
                            <button  data-bs-toggle="dropdown">English <i
                                    class="ecicon eci-angle-down" aria-hidden="true"></i></button>
                        </div>
                        <!-- Language End -->
                        <!-- Currency Start -->
                        <div class="header-top-lan-curr header-top-curr dropdown">
                            <button data-bs-toggle="dropdown">INR <i
                                    class="ecicon eci-angle-down" aria-hidden="true"></i></button>
                        </div>
                        <!-- Currency End -->

                    </div>
                    <!-- Header Top call End -->
                    <!-- Header Top Language Currency -->
                    <div class="col header-top-right d-none d-lg-block">
                        <div class="header-top-right-inner d-flex justify-content-end">

                            <!-- Header User Start -->
                  <%    if(Session["userId"] != null) {  %>
                            <div class="ec-header-user dropdown">
                                <button class="dropdown-toggle" data-bs-toggle="dropdown"><img
                                        src="assets/images/icons/user_5.svg" class="svg_img top_svg" alt="" /><span
                                        class="ec-btn-title">My Profile</span></button>
                                <ul class="dropdown-menu dropdown-menu-right">
                                 
                                        <li><a class="dropdown-item" href="MyProfile.aspx">My Profile</a></li>
                                        <li><a class="dropdown-item" href="OrderHistory.aspx">My Orders</a></li>
                                        <li><a class="dropdown-item" href="Cart.aspx">My Cart</a></li>
                                        <li><a class="dropdown-item" href="EditProfile.aspx">Edit Profile</a></li>
                                        <li><a class="dropdown-item" href="SignOut.aspx" cssClass="btn btn-primary">Logout</a></li> 
                                 </ul>
                             </div>
                 <%     } else {  %>
                            <div class="ec-header-user dropdown">
                                <button class="dropdown-toggle" data-bs-toggle="dropdown"><img
                                        src="assets/images/icons/user_5.svg" class="svg_img top_svg" alt="" /><span
                                        class="ec-btn-title">Login</span></button>
                                <ul class="dropdown-menu dropdown-menu-right">

                                            <li><a class="dropdown-item" href="Register.aspx">Register</a></li>
                                            <li><a class="dropdown-item" href="SignIn.aspx">Login</a></li>
                                </ul>
                            </div>
                  <%    }   %>
                                
                            <!-- Header User End -->
                            <!-- Header wishlist Start -->
                            <div class="ec-header-wishlist">
                                <a href="#">
                                    <div class="top-icon"><img src="assets/images/icons/pro_wishlist.svg"
                                            class="svg_img top_svg" alt="" /></div>
                                    <span class="ec-btn-title">wishlist</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- Header Top Language Currency -->
                    <!-- Header Top responsive Action -->
                    <div class="col header-top-res d-lg-none">
                        <div class="ec-header-bottons">
                            <!-- Header User Start -->
                            <div class="ec-header-user dropdown">
                                <button class="dropdown-toggle" data-bs-toggle="dropdown"><img
                                        src="assets/images/icons/user_5.svg" class="svg_img header_svg" alt="" /></button>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li><a class="dropdown-item" href="Register.aspx">Register</a></li>
                                    <li><a class="dropdown-item" href="checkout.html">Checkout</a></li>
                                    <li><a class="dropdown-item" href="login.html">Login</a></li>
                                </ul>
                            </div>
                            <!-- Header User End -->
                            <!-- Header Cart Start -->
                            <a href="#" class="ec-header-btn ec-header-wishlist">
                                <div class="header-icon"><img src="assets/images/icons/wishlist.svg"
                                        class="svg_img header_svg" alt="" /></div>
                                <span class="ec-header-count ec-wishlist-count">0</span>
                            </a>
                            <!-- Header Cart End -->
                            <!-- Header Cart Start -->
                            <a href="#ec-side-cart" class="ec-header-btn ec-side-toggle">
                                <div class="header-icon"><img src="assets/images/icons/cart_5.svg"
                                        class="svg_img header_svg" alt="" /></div>
                                <span class="ec-header-count ec-cart-count">3</span>
                            </a>
                            <!-- Header Cart End -->
                            <!-- Header menu Start -->
                            <a href="#ec-mobile-menu" class="ec-header-btn ec-side-toggle d-lg-none">
                                <i class="ecicon eci-bars"></i>
                            </a>
                            <!-- Header menu End -->
                        </div>
                    </div>
                    <!-- Header Top responsive Action -->
                </div>
            </div>
        </div>
        <!-- Ec Header Top  End -->
        <!-- Ec Header Bottom  Start -->
        <div class="ec-header-bottom d-none d-lg-block">
            <div class="container position-relative">
                <div class="row">
                    <div class="ec-flex">
                        <!-- Ec Header Logo Start -->
                        <div class="align-self-center ec-header-logo ">
                            <div class="header-logo">
                                <a href="index.html"><img src="assets/images/logo/logo-5.png" alt="Site Logo" /><img
                                        class="dark-logo" src="assets/images/logo/dark-logo-5.png" alt="Site Logo"
                                        style="display: none;" /></a>
                            </div>
                        </div>
                        <!-- Ec Header Logo End -->

                        <!-- Ec Header Search Start -->
                        <div class="align-self-center ec-header-search">
                            <div class="header-search">
                                <div class="ec-search-select-inner">
                                        <div class="ec-search-cat-title">All</div>
                                        <ul class="ec-search-cat-block">
                                            <li><a href="#">Cloths</a></li>
                                            <li><a href="#">Bag</a></li>
                                            <li><a href="#">Shoes</a></li>
                                        </ul>
                                    </div>
                                    <input class="form-control" placeholder="Search Here..." type="text">
                                    <button class="search_submit" type="submit"><i class="ecicon eci-search"></i></button>
                               
                            </div>
                        </div>
                        <!-- Ec Header Search End -->

                        <!-- Ec Header Button Start -->
                        <div class="align-self-center ec-header-bottons">
                            <div class="ec-header-bottons">

                                <!-- Header wishlist End -->
                                <!-- Header Cart Start -->
                                <a href="Cart.aspx" class="ec-header-btn">
                                    <div class="header-icon"><img src="assets/images/icons/cart_5.svg"
                                            class="svg_img header_svg" alt="" /></div>
                                    <span class="ec-btn-title"><span class="ec-cart-count">0</span> item(s) - ₹00.00</span>

                                </a>
                                <!-- Header Cart End -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Ec Header Button End -->
        <!-- Header responsive Bottom  Start -->
        <div class="ec-header-bottom d-lg-none">
            <div class="container position-relative">
                <div class="row ">

                    <!-- Ec Header Logo Start -->
                    <div class="col">
                        <div class="header-logo">
                            <a href="index.html"><img src="assets/images/logo/logo-5.png" alt="Site Logo" /><img
                                    class="dark-logo" src="assets/images/logo/dark-logo-5.png" alt="Site Logo"
                                    style="display: none;" /></a>
                        </div>
                    </div>
                    <!-- Ec Header Logo End -->
                    <!-- Ec Header Search Start -->
                    <div class="col align-self-center ec-header-search">
                        <div class="header-search">
                            
                                <div class="ec-search-select-inner">
                                    <div class="ec-search-cat-title">All</div>
                                    <ul class="ec-search-cat-block">
                                        <li><a href="#">Cloths</a></li>
                                        <li><a href="#">Bag</a></li>
                                        <li><a href="#">Shoes</a></li>
                                    </ul>
                                </div>
                                <input class="form-control" placeholder="Search Here..." type="text">
                                <button class="search_submit" type="submit"><i class="ecicon eci-search"></i></button>

                        </div>
                    </div>
                    <!-- Ec Header Search End -->
                </div>
            </div>
        </div>
        <!-- Header responsive Bottom  End -->
        <!-- EC Main Menu Start -->
        <div id="ec-main-menu-desk" class="sticky-nav">
            <div class="container position-relative">
                <div class="row">
                    <div class="col ec-category-block">
                        <div class="ec-cat-menu">
                            <div class="ec-category-toggle">
                                <span class="ec-category-icon"></span>
                                <span class="ec-category-title">all categories</span>
                            </div>
                            <div class="ec-category-content">
                                <div id="ec-category-menu" class="ec-category-menu">
                                    <ul class="ec-category-wrapper">
                                        <li><a title="" class="ec-cat-menu-link" href="#">Home & Kitchen</a></li>
                                        <li><a title="" class="ec-cat-menu-link" href="#">Electronics & Digital</a></li>
                                        <li><a title="" class="ec-cat-menu-link" href="#">Home Accessories</a></li>
                                        <li><a title="" class="ec-cat-menu-link" href="#">Electronics</a></li>
                                        <li><a title="" class="ec-cat-menu-link" href="#">Office Furniture</a></li>
                                        <li><a title="" class="ec-cat-menu-link" href="#">Hotel Furniture</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col ec-main-menu-block align-self-center d-none d-lg-block p-0">
                        <div class="ec-main-menu">
                            <ul>
                                <li class="dropdown"><a href="Default.aspx">Home</a>
                                    <%--<ul class="sub-menu">
                                        <li><a href="index.html">Fashion 1</a></li>
                                        <li><a href="demo-2.html">Fashion 2</a></li>
                                        <li><a href="demo-3.html">Furniture</a></li>
                                        <li><a href="demo-4.html">Mix products</a></li>
                                        <li><a href="demo-5.html">Electronic</a></li>
                                    </ul>--%>
                                </li>
                                 <li class="dropdown"><a href="Shop.aspx">Shop</a>
                                  
                                </li>
                                <%--<li class="dropdown position-static"><a href="">Categories</a>

                                </li>
                               
                                <li class="dropdown"><a href="">Pages</a>
                                   
                                </li>--%>
                                <li class="dropdown"><span class="main-label-note-new" data-toggle="tooltip"
                                        title="NEW"></span><a href="AboutUs.aspx">About Us</a>
                                   
                                </li>
                                <li class="dropdown"><a href="Contact.aspx">Contact Us</a>
                                   
                                </li>
                                
                            </ul>
                        </div>
                    </div>
                    <div class="col ec-spe-offer-block">
                        <div class="ec-spe-offer-link">
                            <a href="offer.html" class="ec-spe-offer-title">Special offer</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Ec Main Menu End -->
        <!-- Ekka Menu Start -->
        <div id="ec-mobile-menu" class="ec-side-cart ec-mobile-menu">
            <div class="ec-menu-title">
                <span class="menu_title">My Menu</span>
                <button class="ec-close">×</button>
            </div>
            <div class="ec-menu-inner">
                <div class="ec-menu-content">
                    <ul>
                        <li><a href="Default.aspx">Home</a>
                            <%--<ul class="sub-menu">
                                <li><a href="index.html">Fashion 1</a></li>
                                <li><a href="demo-2.html">Fashion 2</a></li>
                                <li><a href="demo-3.html">Furniture</a></li>
                                <li><a href="demo-4.html">Mix products</a></li>
                                <li><a href="demo-5.html">Electronic</a></li>
                            </ul>--%>
                        </li>
                    </ul>
                </div>
                <div class="header-res-lan-curr">
                    <div class="header-top-lan-curr">
                        <!-- Language Start -->
                        <div class="header-top-lan dropdown">
                            <button class="dropdown-toggle text-upper" data-bs-toggle="dropdown">Language <i
                                    class="ecicon eci-caret-down" aria-hidden="true"></i></button>
                            <ul class="dropdown-menu">
                                <li class="active"><a class="dropdown-item" href="#">English</a></li>
                            </ul>
                        </div>
                        <!-- Language End -->
                        <!-- Currency Start -->
                        <div class="header-top-curr dropdown">
                            <button class="dropdown-toggle text-upper" data-bs-toggle="dropdown">Currency <i
                                    class="ecicon eci-caret-down" aria-hidden="true"></i></button>
                            <ul class="dropdown-menu">
                                <li class="dropdown-item"><a class="dropdown-item" href="#">Rupees ₹</a></li>
                            </ul>
                        </div>
                        <!-- Currency End -->
                    </div>
                    <!-- Social Start -->
                    <div class="header-res-social">
                        <div class="header-top-social">
                            <ul class="mb-0">
                                <li class="list-inline-item"><a href="#"><i class="ecicon eci-facebook"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="ecicon eci-twitter"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="ecicon eci-instagram"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="ecicon eci-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Social End -->
                </div>
            </div>
        </div>
        <!-- Ekka Menu End -->
    </header>
    <!-- Header End  -->
        <!-- ekka Cart Start -->
    <div class="ec-side-cart-overlay"></div>
    <div id="ec-side-cart" class="ec-side-cart">
        <div class="ec-cart-inner">
            <div class="ec-cart-top">
                <div class="ec-cart-title">
                    <span class="cart_title">My Cart</span>
                    <button class="ec-close">×</button>
                </div>
                <ul class="eccart-pro-items">
                    <li>
                        <a href="product-left-sidebar.html" class="sidekka_pro_img"><img
                                src="assets/images/product-image/6_1.jpg" alt="product"></a>
                        <div class="ec-pro-content">
                            <a href="Cart.aspx" class="cart_pro_title">T-shirt For Women</a>
                            <span class="cart-price"><span>$76.00</span> x 1</span>
                            <div class="qty-plus-minus">
                                <input class="qty-input" type="text" name="ec_qtybtn" value="1" />
                            </div>
                            <a href="javascript:void(0)" class="remove">×</a>
                        </div>
                    </li>
                    <li>
                        <a href="product-left-sidebar.html" class="sidekka_pro_img"><img
                                src="assets/images/product-image/12_1.jpg" alt="product"></a>
                        <div class="ec-pro-content">
                            <a href="product-left-sidebar.html" class="cart_pro_title">Women Leather Shoes</a>
                            <span class="cart-price"><span>$64.00</span> x 1</span>
                            <div class="qty-plus-minus">
                                <input class="qty-input" type="text" name="ec_qtybtn" value="1" />
                            </div>
                            <a href="javascript:void(0)" class="remove">×</a>
                        </div>
                    </li>
                    <li>
                        <a href="product-left-sidebar.html" class="sidekka_pro_img"><img
                                src="assets/images/product-image/3_1.jpg" alt="product"></a>
                        <div class="ec-pro-content">
                            <a href="product-left-sidebar.html" class="cart_pro_title">Girls Nylon Purse</a>
                            <span class="cart-price"><span>$59.00</span> x 1</span>
                            <div class="qty-plus-minus">
                                <input class="qty-input" type="text" name="ec_qtybtn" value="1" />
                            </div>
                            <a href="javascript:void(0)" class="remove">×</a>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="ec-cart-bottom">
                <div class="cart-sub-total">
                    <table class="table cart-table">
                        <tbody>
                            <tr>
                                <td class="text-left">Sub-Total :</td>
                                <td class="text-right">$300.00</td>
                            </tr>
                            <tr>
                                <td class="text-left">VAT (20%) :</td>
                                <td class="text-right">$60.00</td>
                            </tr>
                            <tr>
                                <td class="text-left">Total :</td>
                                <td class="text-right primary-color">$360.00</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="cart_btn">
                    <a href="cart.html" class="btn btn-primary">View Cart</a>
                    <a href="checkout.html" class="btn btn-secondary">Checkout</a>
                </div>
            </div>
        </div>
    </div>
    <!-- ekka Cart End -->

        <!-- Ec breadcrumb start -->
    <div class="sticky-header-next-sec  ec-breadcrumb section-space-mb">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="row ec_breadcrumb_inner">
                        <div class="col-md-6 col-sm-12">
                            <h2 class="ec-breadcrumb-title">Shop</h2>
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <!-- ec-breadcrumb-list start -->
                            <ul class="ec-breadcrumb-list">
                                <li class="ec-breadcrumb-item"><a href="Default.aspx">Home</a></li>
                                <li class="ec-breadcrumb-item active">Shop</li>
                            </ul>
                            <!-- ec-breadcrumb-list end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Ec breadcrumb end -->

    <!-- Ec Shop page -->
    <section class="ec-page-content section-space-p">
        <div class="container">
            <div class="row">
                <div class="ec-shop-rightside col-lg-9 order-lg-last col-md-12 order-md-first margin-b-30">
                    <!-- Shop Top Start -->
                    <div class="ec-pro-list-top d-flex">
                        <div class="col-md-6 ec-grid-list">
                            <div class="ec-gl-btn">
                                <button class="btn btn-grid active"><img src="assets/images/icons/grid.svg"
                                        class="svg_img gl_svg" alt="" /></button>
                                <button class="btn btn-list"><img src="assets/images/icons/list.svg"
                                        class="svg_img gl_svg" alt="" /></button>
                            </div>
                        </div>
                        <div class="col-md-6 ec-sort-select">
                            <span class="sort-by">Sort by</span>
                            <div class="ec-select-inner">
                                <asp:DropDownList ID="ddlSort" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlSort_SelectedIndexChanged">
                                    <asp:ListItem Value="1">Name, A to Z</asp:ListItem>
                                    <asp:ListItem Value="2">Name, Z to A</asp:ListItem>
                                    <asp:ListItem Value="3">Price, low to high</asp:ListItem>
                                    <asp:ListItem Value="4">Price, high to low</asp:ListItem>
                                </asp:DropDownList>
                                <select name="ec-select" id="ec-select">
                                    <option selected disabled>Position</option>
                                    <option value="1">Relevance</option>
                                    <option value="2">Name, A to Z</option>
                                    <option value="3">Name, Z to A</option>
                                    <option value="4">Price, low to high</option>
                                    <option value="5">Price, high to low</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- Shop Top End -->

                    <!-- Shop content Start -->
                    <div class="shop-pro-content">
                        <div class="shop-pro-inner">
                            <div class="row">
                                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                                    <ItemTemplate>
                                        <%--k<asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>--%>
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-12 pro-gl-content"  >
                                    <div class="ec-product-inner" style="height:350px;width:300px">
                                        <div class="ec-pro-image-outer"  >
                                            <div class="ec-pro-image" > 
                                                <a href="product-left-sidebar.html" class="image">
                                                    <asp:Image ID="Image1" class="main-image"  runat="server"   ImageUrl='<%# Eval("Image") %>' />
                                                </a>
                                                <span class="percentage"><%# Eval("Discount") %>%</span>
                                                
                                                <div class="ec-pro-actions">
                                                    <asp:HyperLink ID="HyperLink1" runat="server" class="ec-btn-group compare" data-link-action="quickview"
                                                    title="Quick view" data-bs-toggle="modal"
                                                    data-bs-target='<%# "#ec_quickview_modal"+Eval("Laptop_Id") %>'>

                                                        <img src="assets/images/icons/quickview.svg" class="svg_img pro_svg" alt="" />

                                                    </asp:HyperLink>

                                                    <asp:HyperLink ID="HyperLink2" runat="server" title="Add To Cart" class=" add-to-cart" NavigateUrl='<%# "Cart.aspx?Laptop_Id=" + Eval("Laptop_Id") + "&Quantity=1" %>'>
                                                        
                                                        <img  src="assets/images/icons/cart.svg" class="svg_img pro_svg" alt="" /> 

                                                    </asp:HyperLink>

                                                    <asp:HyperLink ID="HyperLink3" runat="server" class="ec-btn-group wishlist" title="Wishlist" NavigateUrl='<%# "Wishlist.aspx?Laptop_Id="+Eval("Laptop_Id") %>' >
                                                        
                                                        <img  src="assets/images/icons/wishlist.svg" class="svg_img pro_svg" alt="" />

                                                    </asp:HyperLink>


                                                </div>
                                            </div>
                                        </div>
                                        <div class="ec-pro-content">
                                            <h5 class="ec-pro-title">
                                                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "ProductDetails.aspx?Laptop_Id="+Eval("Laptop_Id") %>' > <%# Eval("Brand_Name") %> <br> <%# Eval("Laptop_Model") %></asp:HyperLink></h5>
                                            <div class="ec-pro-rating">
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star fill"></i>
                                                <i class="ecicon eci-star"></i>
                                            </div>
                                            <div class="ec-pro-list-desc"><%# Eval("Description") %></div>
                                            <span class="ec-price">
                                                <span class="old-price">₹<%# Eval("Sale_Price") %></span><span class="new-price">₹<%# Eval("New_Price") %></span></span></div>
                                    </div>
                                </div>

                                                            <!-- Modal -->
                                <div class="modal fade" id='<%# "ec_quickview_modal"+Eval("Laptop_Id") %>' tabindex="-1" role="dialog">
                                    <div class="modal-dialog modal-dialog-centered" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="btn-close qty_close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-md-5 col-sm-12 col-xs-12">
                                                        <!-- Swiper -->
                                                        <div class="qty-product-cover">
                                                            <div class="qty-slide">
                                                                <asp:Image ID="Image2" class="img-responsive" runat="server" ImageUrl='<%# Eval("Image") %>' />
                                                            </div>
                                                        </div>
                                                        <div class="qty-nav-thumb">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-7 col-sm-12 col-xs-12">
                                                        <div class="quickview-pro-content">
                                                            <h5 class="ec-pro-title"><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl='<%# "ProductDetails.aspx?Laptop_Id="+Eval("Laptop_Id") %>' >  <%# Eval("Brand_Name") %> <br /> <%# Eval("Laptop_Model") %></asp:HyperLink></h5>
                                                            <div class="ec-quickview-rating">
                                                                <i class="ecicon eci-star fill"></i>
                                                                <i class="ecicon eci-star fill"></i>
                                                                <i class="ecicon eci-star fill"></i>
                                                                <i class="ecicon eci-star fill"></i>
                                                                <i class="ecicon eci-star"></i>
                                                            </div>

                                                            <div class="ec-quickview-desc"><%# Eval("Description") %></div>
                                                            <div class="ec-quickview-price">
                                                                 <span class="old-price">₹<%# Eval("Sale_Price") %></span><span class="new-price">₹<%# Eval("New_Price") %></span></div>

                                                                <div class="ec-quickview-cart ">
                                                                    <asp:HyperLink ID="HyperLink6" class="btn btn-primary" Text="Add To Cart" NavigateUrl='<%# "Cart.aspx?Laptop_Id=" + Eval("Laptop_Id") + "&Quantity=1" %>' runat="server">Add To Cart</asp:HyperLink>
                                                                </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Modal end -->

                                    </ItemTemplate>
                                </asp:DataList>.
                            </div>
                        </div>
                        <!-- Ec Pagination Start -->
                        <div class="ec-pro-pagination">
                            <span>Showing 1-12 of 21 item(s)</span>
                            <ul class="ec-pro-pagination-inner">
                                <li><a class="active" href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a class="next" href="#">Next <i class="ecicon eci-angle-right"></i></a></li>
                            </ul>
                        </div>
                        <!-- Ec Pagination End -->
                    </div>
                    <!--Shop content End -->
                </div>
                <!-- Sidebar Area Start -->
                <div class="ec-shop-leftside col-lg-3 order-lg-first col-md-12 order-md-last">
                    <div id="shop_sidebar">
                        <div class="ec-sidebar-heading">
                            <h1>Filter Products By</h1>
                        </div>
                        <div class="ec-sidebar-wrap">
                            <!-- Sidebar Category Block -->
                            <div class="ec-sidebar-block">
                                <div class="ec-sb-title">
                                    <h3 class="ec-sidebar-title">Brand</h3>
                                </div>
                                <div class="ec-sb-block-content">
                                    <asp:CheckBoxList ID="chklBrands" runat="server" AutoPostBack="True" OnSelectedIndexChanged="chklBrands_SelectedIndexChanged"></asp:CheckBoxList>
                                    <%--<ul>
                                        <li>
                                            <div class="ec-sidebar-block-item">
                                                <input type="checkbox" checked /> <a href="#">clothes</a><span
                                                    class="checked"></span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="ec-sidebar-block-item ec-more-toggle">
                                                <span class="checked"></span><span id="ec-more-toggle">More
                                                    Brand</span>
                                            </div>
                                        </li>
                                    </ul>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- footer  Start -->
    <footer class="ec-footer">
        <div class="footer-container">
            <div class="footer-top section-space-footer-p">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 col-lg-4 ec-footer-contact">
                            <div class="ec-footer-widget">
                                <div class="ec-footer-logo"><a href="#"><img src="assets/images/logo/footer-logo-5.png"
                                            alt=""><img class="dark-footer-logo" src="assets/images/logo/dark-logo-5.png"
                                            alt="Site Logo" style="display: none;" /></a></div>
                                <p>Ekka Laptop Store is India's most leading store.</p>
                                <h4 class="ec-footer-heading">Ask Me questions</h4>
                                <div class="ec-footer-links">
                                    <ul class="align-items-center">
                                        <li class="ec-footer-link">
                                            <span class="call-img"><img src="assets/images/icons/call_5.svg"
                                                    class="svg_img foo_img" alt="" /></span>
                                            <span class="call-desc">
                                                <span>Got questions? Call us 24/7!</span>
                                                <span><a href="tel:+91 97370 74939">(+91) 97370 74939</a>, <a href="tel:+91 97370 74969">(+91) 97370 74969</a></span>
                                            </span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="ec-footer-widget ec-footer-social">
                                <h4 class="ec-footer-heading">Follow Us</h4>
                                <div class="ec-footer-links">
                                    <ul class="align-items-center">
                                        <li class="list-inline-item"><a href="#"><i class="ecicon eci-facebook"></i></a>
                                        </li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="ecicon eci-instagram"></i></a></li>
                                        <li class="list-inline-item"><a href="#"><i class="ecicon eci-linkedin"></i></a>
                                        </li>
                                        <li class="list-inline-item"><a href="#"><i class="ecicon eci-twitter"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-2 ec-footer-info">
                            <div class="ec-footer-widget">
                                <h4 class="ec-footer-heading">Information</h4>
                                <div class="ec-footer-links">
                                    <ul class="align-items-center">
                                        <li class="ec-footer-link"><a href="about-us.html">About us</a></li>
                                        <li class="ec-footer-link"><a href="track-order.html">Delivery Information</a></li>
                                        <li class="ec-footer-link"><a href="privacy-policy.html">Policy & policy </a></li>
                                        <li class="ec-footer-link"><a href="terms-condition.html">Terms & conditions</a></li>
                                        <li class="ec-footer-link"><a href="Contact.aspx">Contact us</a></li>
                                        <li class="ec-footer-link"><a href="#">Returns</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-2 ec-footer-account">
                            <div class="ec-footer-widget">
                                <h4 class="ec-footer-heading">Customer Service</h4>
                                <div class="ec-footer-links">
                                    <ul class="align-items-center">
                                        <li class="ec-footer-link"><a href="#">Site Map</a></li>
                                        <li class="ec-footer-link"><a href="Wishlist.aspx">Wish List</a></li>
                                        <li class="ec-footer-link"><a href="#">Brands</a></li>
                                        <li class="ec-footer-link"><a href="offer.html">Gift Certificates</a></li>
                                        <li class="ec-footer-link"><a href="#">Affiliate</a></li>
                                        <li class="ec-footer-link"><a href="offer.html">Specials</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-4 ec-footer-news">
                            <div class="ec-footer-widget">
                                <h4 class="ec-footer-heading">Newsletter</h4>
                                <div class="ec-footer-links">
                                    <ul class="align-items-center">
                                        <li class="ec-footer-link">Sign up for our e-mail to get latest news.</li>
                                    </ul>
                                    <div class="ec-subscribe-form">
                                      
                                            <div id="ec_news_signup" class="ec-form">
                                                <input class="ec-email" type="email"
                                                    placeholder="Enter your email" name="ec-email" value="" />
                                                <button id="ec-news-btn" class="button btn-primary" type="submit"
                                                    name="subscribe" value="">subscribe</button>
                                            </div>
                                      
                                    </div>
                                </div>
                            </div>
                            <%--<div class="ec-footer-widget ec-share">
                                <ul>
                                    <li class="ec-share-link"><a href="#"><img src="assets/images/icons/iphone.png"
                                                alt="" /></a></li>
                                    <li class="ec-share-link"><a href="#"><img src="assets/images/icons/google.png"
                                                alt="" /></a></li>
                                </ul>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <div class="row align-items-center">
                        <!-- Footer Copyright Start -->
                        <div class="col footer-copy">
                            <div class="footer-bottom-copy ">
                                <div class="ec-copy ">© 2024 <a class="site-name" href="#">Ekka</a>. All Rights Reserved
                                </div>
                            </div>
                        </div>
                        <!-- Footer Copyright End -->
                        <!-- Footer payment -->
                        <div class="col footer-bottom-right">
                            <div class="footer-bottom-payment d-flex justify-content-end">
                                <div class="payment-link">
                                    <img src="assets/images/icons/payment.png" alt="">
                                </div>

                            </div>
                        </div>
                        <!-- Footer payment -->
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Area End -->

    <!-- Modal -->
    <div class="modal fade" id="ec_quickview_modal" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <button type="button" class="btn-close qty_close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-5 col-sm-12 col-xs-12">
                            <!-- Swiper -->
                            <div class="qty-product-cover">
                                <div class="qty-slide">
                                    <img class="img-responsive" src="assets/images/product-image/39_1.jpg" alt="">
                                </div>
                                <div class="qty-slide">
                                    <img class="img-responsive" src="assets/images/product-image/39_2.jpg" alt="">
                                </div>
                                <div class="qty-slide">
                                    <img class="img-responsive" src="assets/images/product-image/40_1.jpg" alt="">
                                </div>
                                <div class="qty-slide">
                                    <img class="img-responsive" src="assets/images/product-image/40_2.jpg" alt="">
                                </div>
                                <div class="qty-slide">
                                    <img class="img-responsive" src="assets/images/product-image/41_1.jpg" alt="">
                                </div>
                            </div>
                            <div class="qty-nav-thumb">
                                <div class="qty-slide">
                                    <img class="img-responsive" src="assets/images/product-image/39_1.jpg" alt="">
                                </div>
                                <div class="qty-slide">
                                    <img class="img-responsive" src="assets/images/product-image/39_2.jpg" alt="">
                                </div>
                                <div class="qty-slide">
                                    <img class="img-responsive" src="assets/images/product-image/40_1.jpg" alt="">
                                </div>
                                <div class="qty-slide">
                                    <img class="img-responsive" src="assets/images/product-image/40_2.jpg" alt="">
                                </div>
                                <div class="qty-slide">
                                    <img class="img-responsive" src="assets/images/product-image/41_1.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7 col-sm-12 col-xs-12">
                            <div class="quickview-pro-content">
                                <h5 class="ec-quick-title"><a href="product-left-sidebar.html">Trainers with broguing slogan</a></h5>
                                <div class="ec-quickview-rating">
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star fill"></i>
                                    <i class="ecicon eci-star"></i>
                                </div>

                                <div class="ec-quickview-desc">Lorem Ipsum is simply dummy text of the printing and
                                    typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever
                                    since the 1500s,</div>
                                <div class="ec-quickview-price">
                                    <span class="old-price">$200.00</span>
                                    <span class="new-price">$159.00</span>
                                </div>

                                <div class="ec-pro-variation">
                                    <div class="ec-pro-variation-inner ec-pro-variation-color">
                                        <span>Color</span>
                                        <div class="ec-pro-variation-content">
                                            <ul>
                                                <li><span style="background-color:#202020;"></span></li>
                                                <li><span style="background-color:#0d4fcf;"></span></li>
                                                <li><span style="background-color:#f93434;"></span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="ec-quickview-qty">
                                    <div class="qty-plus-minus">
                                        <input class="qty-input" type="text" name="ec_qtybtn" value="1" />
                                    </div>
                                    <div class="ec-quickview-cart ">
                                        <button class="btn btn-primary">Add To Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal end -->

    <!-- Click To ChatPro -->	
    <div class="ec-cp-style cp-right-bottom">
        <!-- Start Floating Panel Container -->
        
        <!--/ End Floating Panel Container -->

        <!-- Start Right Floating Button -->
        <%--<div class="cp-button cp-right-bottom">
            <img src="assets/images/chat-pro/chat.png" alt="icon"/>
        </div>--%>
        <!--/ End Right Floating Button -->
    </div>
    <!-- Click To ChatPro end-->

    <!-- successfully toast Start -->
    <div id="addtocart_toast" class="addtocart_toast">
        <div class="desc">You Have Add To Cart Successfully</div>
    </div>
    <div id="wishlist_toast" class="wishlist_toast">
        <div class="desc">You Have Add To Wishlist Successfully</div>
    </div>
    <!--successfully toast end -->

    <!-- Vendor JS -->
    <script src="assets/js/vendor/jquery-3.5.1.min.js"></script>
    <script src="assets/js/vendor/popper.min.js"></script>
    <script src="assets/js/vendor/bootstrap.min.js"></script>
    <script src="assets/js/vendor/jquery-migrate-3.3.0.min.js"></script>
    <script src="assets/js/vendor/modernizr-3.11.2.min.js"></script>

    <!--Plugins JS-->
    <script src="assets/js/plugins/swiper-bundle.min.js"></script>
    <script src="assets/js/plugins/countdownTimer.min.js"></script>
    <script src="assets/js/plugins/scrollup.js"></script>
    <script src="assets/js/plugins/jquery.zoom.min.js"></script>
    <script src="assets/js/plugins/slick.min.js"></script>
    <script src="assets/js/plugins/infiniteslidev2.js"></script>
    <script src="assets/js/plugins/chat-pro.js"></script>
    <script src="assets/js/plugins/nouislider.js"></script>
    <script src="assets/js/vendor/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/plugins/jquery.sticky-sidebar.js"></script>

    <!-- Google translate Js -->
    <script src="assets/js/vendor/google-translate.js"></script>
    <script>
        function googleTranslateElementInit() {
            new google.translate.TranslateElement({ pageLanguage: 'en' }, 'google_translate_element');
        }
    </script>
    <!-- Main Js -->
    <script src="assets/js/vendor/index.js"></script>
    <script src="assets/js/demo-5.js"></script>
     <script src="assets/js/main.js"></script>

</body>

</html>
    </form>
</body>
</html>
