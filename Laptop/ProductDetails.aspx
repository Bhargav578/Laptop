<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="Laptop.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <!-- Ec breadcrumb start -->
<div class="sticky-header-next-sec  ec-breadcrumb section-space-mb">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="row ec_breadcrumb_inner">
                    <div class="col-md-6 col-sm-12">
                        <h2 class="ec-breadcrumb-title">Single Products</h2>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <!-- ec-breadcrumb-list start -->
                        <ul class="ec-breadcrumb-list">
                            <li class="ec-breadcrumb-item"><a href="index.aspx">Home</a></li>
                            <li class="ec-breadcrumb-item active">Products</li>
                        </ul>
                        <!-- ec-breadcrumb-list end -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Ec breadcrumb end -->

<!-- Sart Single product -->
<section class="ec-page-content section-space-p">
    <div class="container">
        <div class="row">
            <div class="ec-pro-rightside ec-common-rightside col-lg-12 col-md-12">

                <!-- Single product content Start -->
                <div class="single-pro-block">
                    <div class="single-pro-inner">
                        <div class="row">

                           
                            <div class="single-pro-img single-pro-img-no-sidebar col-lg-6">
                                <div class="single-product-scroll">
                                  <div class="single-product-cover">
                                        <div class="single-slide zoom-image-hover">
                                            <asp:Image ID="Image1" class="img-responsive" Height="700%" Width="700%"  alt="" runat="server" />
                                        </div>
                                   </div>
                                </div>
                            </div>
                            <div class="single-pro-desc single-pro-desc no-sidebar col-lg-6">
                                <div class="single-pro-content">
                                    <h5 class="ec-single-title">
                                        <asp:Label ID="lblBrandTitle" runat="server" Text=""></asp:Label>
                                    </h5>
                                    <div class="ec-single-rating-wrap">
                                        <div class="ec-single-rating">
                                            <i class="bi bi-star-fill"></i>
                                            <i class="bi bi-star-fill"></i>
                                            <i class="bi bi-star-fill"></i>
                                            <span class="bi bi-star-fill"></span>
                                            <span class="bi bi-star-fill"></span>
                                        </div>
                                        <%--<span class="ec-read-review"><a href="#ec-spt-nav-review">Be the first to
                                                review this product</a></span>--%>
                                    </div>
                                    <div class="ec-single-desc">
                                        <asp:Label ID="lblBrand" runat="server" Text=""></asp:Label>
                                        <asp:Label ID="lblModel" runat="server" Text=""></asp:Label> <br>
                                        <asp:Label ID="lblCategoryName" runat="server" Text=""></asp:Label>
                                    </div>

                                    <div class="ec-single-price-stoke">
                                        <div class="ec-single-price">
                                            <span class="ec-single-ps-title">As low as</span>
                                            <span class="new-price">₹<asp:Label ID="lblNewPrice" runat="server" Text="" /><span>
                                        </div>
                                    </div>
                                    <form action="Cart.aspx">
                                    <div class="ec-single-qty">
                                        <div class="qty-plus-minus">
                                            <asp:TextBox ID="txtQuantity" name="ec_qtybtn" runat="server" class="qty-input" Text="1"></asp:TextBox>
                                        </div>
                                        <asp:HiddenField ID="hfLaptopId" runat="server" />
                                        <div class="ec-single-cart ">
                                            <asp:Button class="btn btn-primary" ID="btnAddToCart" runat="server" Text="Add To Cart" OnClick="btnAddToCart_Click" />
                                        </div>
                                        <div class="ec-single-wishlist">

                                            <asp:HyperLink ID="hlWishlist" runat="server" class="ec-btn-group wishlist" title="Wishlist" >
                                                <img src="assets/images/icons/wishlist.svg" class="svg_img pro_svg" alt="" />
                                            </asp:HyperLink>
                                        </div>
                                    </div>
                                    </form>
                                    <div class="ec-single-pro-tab-desc">
                                    <ul>
                                       <%-- <li>RAM: <%# Eval("RAM") %></li>
                                        <li>SSD: <%# Eval("SSD") %></li>
                                        <li>HDD: <%# Eval("HDD") %></li>
                                        <li>Display: <%# Eval("Display_Size") %></li>
                                        <li>Graphics Card: <%# Eval("Graphic_Card") %></li>--%>
                                    </ul>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Single product content End -->
                <!-- Single product tab start -->
                <div class="ec-single-pro-tab">
                    <div class="ec-single-pro-tab-wrapper">
                        <div class="ec-single-pro-tab-nav">
                            <ul class="nav nav-tabs">
                                <li class="nav-item">
                                    <a class="nav-link active" data-bs-toggle="tab"
                                        data-bs-target="#ec-spt-nav-details" role="tablist">Detail</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-bs-toggle="tab" data-bs-target="#ec-spt-nav-info"
                                        role="tablist">More Information</a>
                                </li>
                                <!--<li class="nav-item">
                                    <a class="nav-link" data-bs-toggle="tab" data-bs-target="#ec-spt-nav-review"
                                        role="tablist">Reviews</a>
                                </li>-->
                            </ul>
                        </div>
                        <div class="tab-content  ec-single-pro-tab-content">
                            <div id="ec-spt-nav-details" class="tab-pane fade show active">
                                <div class="ec-single-pro-tab-desc">
                                    <ul>
                                        <asp:Label ID="lblProductDetail" runat="server" Text=""></asp:Label>
                                        <%--<li>RAM: </li>
                                        <li>SSD: </li>
                                        <li>HDD: </li>
                                        <li>Display: </li>
                                        <li>Graphics Card: </li>--%>
                                    </ul>
                                </div>
                            </div>
                            <div id="ec-spt-nav-info" class="tab-pane fade">
                                <div class="ec-single-pro-tab-moreinfo  row">
                                    <ul class="col">
                                        <li><span>Brand</span> <asp:Label ID="lblBrandName" runat="server" Text=""></asp:Label> </li>
                                        <li><span>RAM</span> <asp:Label ID="lblRAM" runat="server" Text=""></asp:Label> </li>
                                        <li><span>SSD</span> <asp:Label ID="lblSSD" runat="server" Text=""></asp:Label> </li>
                                        <li><span>HDD</span> <asp:Label ID="lblHDD" runat="server" Text=""></asp:Label> </li>
                                    </ul>
                                    <ul class="col">
                                        <li><span>Model</span> <asp:Label ID="lblLaptopModel" runat="server" Text=""></asp:Label> </li>
                                        <li><span>Graphics Card</span> <asp:Label ID="lblGraphicCard" runat="server" Text=""></asp:Label> </li>
                                        <li><span>Display</span> <asp:Label ID="lblDisplay" runat="server" Text=""></asp:Label> </li>
                                        <li><span>Launch Date</span> <asp:Label ID="lblDate" runat="server" Text=""></asp:Label> </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- product details description area end -->
            </div>
                               
                            

        </div>
    </div>
</section>
</asp:Content>

