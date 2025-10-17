 <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Laptop.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
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
                        <a href="product-left-sidebar.html" class="sidekka_pro_img">
                            <img
                                src="assets/images/product-image/6_1.jpg" alt="product"></a>
                        <div class="ec-pro-content">
                            <a href="product-left-sidebar.html" class="cart_pro_title">T-shirt For Women</a>
                            <span class="cart-price"><span>₹76.00</span> x 1</span>
                            <div class="qty-plus-minus">
                                <input class="qty-input" type="text" name="ec_qtybtn" value="1" />
                            </div>
                            <a href="javascript:void(0)" class="remove">×</a>
                        </div>
                    </li>
                    <li>
                        <a href="product-left-sidebar.html" class="sidekka_pro_img">
                            <img
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
                        <a href="product-left-sidebar.html" class="sidekka_pro_img">
                            <img
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
                    <a href="Cart.aspx" class="btn btn-primary">View Cart</a>
                    <a href="Checkout.aspx" class="btn btn-secondary">Checkout</a>
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
                            <h2 class="ec-breadcrumb-title">Checkout</h2>
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <!-- ec-breadcrumb-list start -->
                            <ul class="ec-breadcrumb-list">
                                <li class="ec-breadcrumb-item"><a href="index.aspx">Home</a></li>
                                <li class="ec-breadcrumb-item active">Checkout</li>
                            </ul>
                            <!-- ec-breadcrumb-list end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Ec breadcrumb end -->

    <!-- Ec checkout page -->
    <section class="ec-page-content section-space-p">
        <div class="container">
            <div class="row">
                <div class="ec-checkout-leftside col-lg-8 col-md-12 ">
                    <!-- checkout content Start -->
                    <div class="ec-checkout-content">
                        <div class="ec-checkout-inner">
                            <div class="ec-checkout-wrap margin-bottom-30 padding-bottom-3">
                                <div class="ec-checkout-block ec-check-bill">
                                    <h3 class="ec-checkout-title mb-10">Shipping Details</h3>
                                    <div class="ec-bl-block-content">

                                        <div class="ec-check-bill-form">
                                            <div class="row">
                                                <div class="col">
                                                    <span class="ec-bill-wrap ec-bill-half">
                                                        <label>Name*</label>
                                                        <asp:TextBox ID="txtName" runat="server" placeholder="Enter your  Name"></asp:TextBox>
                                                    </span>
                                                </div>
                                            </div>


                                            <span class="ec-bill-wrap">
                                                <label>Address</label>
                                                <asp:TextBox ID="txtAddress" runat="server" placeholder="Enter your Address" TextMode="MultiLine"></asp:TextBox>
                                            </span>

                                            <div class="row">
                                                <div class="col">
                                                    <span>
                                                        <label style="padding-left: 0px !important;">City</label>
                                                        <asp:TextBox ID="txtCity" runat="server" placeholder="Enter your City"></asp:TextBox>
                                                    </span>
                                                </div>
                                                <div class="col">
                                                    <span>
                                                        <label style="padding-left: 0px !important;">State</label>
                                                        <asp:TextBox ID="txtState" runat="server" placeholder="Enter your State"></asp:TextBox>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col">
                                                    <span>
                                                        <label style="padding-left: 0px !important;">Pincode</label>
                                                        <asp:TextBox ID="txtPincode" runat="server" placeholder="Enter your Pincode"></asp:TextBox>
                                                    </span>
                                                </div>
                                                <div class="col">
                                                    <span>
                                                        <label style="padding-left: 0px !important;">Mobile Number</label>
                                                        <asp:TextBox ID="txtMobileNo" runat="server" placeholder="Enter your Mobile No"></asp:TextBox>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>

                                        <span>
                                            <span>
                                                <asp:CheckBox ID="chkBillingAddress" runat="server" onclick="document.getElementById('ContentPlaceHolder2_form').style.display = this.checked ? 'block' : 'none'" style="width: auto !important; height: auto !important" />
                                                <label for="RadioButton1">I want to use different billing address</label>
                                            </span>
                                        </span>

                                        <div class="ec-check-bill-form" runat="server" id="form" style="display: none;">
                                            <div class="row">
                                                <div class="col">
                                                    <span class="ec-bill-wrap ec-bill-half">
                                                        <label>Name*</label>
                                                        <asp:TextBox ID="txtName1" runat="server" placeholder="Enter your  Name"></asp:TextBox>
                                                    </span>
                                                </div>
                                            </div>


                                            <span class="ec-bill-wrap">
                                                <label>Address</label>
                                                <asp:TextBox ID="txtAddress1" runat="server" placeholder="Enter your Address" TextMode="MultiLine"></asp:TextBox>
                                            </span>

                                            <div class="row">
                                                <div class="col">
                                                    <span>
                                                        <label style="padding-left: 0px !important;">City</label>
                                                        <asp:TextBox ID="txtCity1" runat="server" placeholder="Enter your City"></asp:TextBox>
                                                    </span>
                                                </div>
                                                <div class="col">
                                                    <span>
                                                        <label style="padding-left: 0px !important;">State</label>
                                                        <asp:TextBox ID="txtState1" runat="server" placeholder="Enter your State"></asp:TextBox>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col">
                                                    <span>
                                                        <label style="padding-left: 0px !important;">Pincode</label>
                                                        <asp:TextBox ID="txtPincode1" runat="server" placeholder="Enter your Pincode"></asp:TextBox>
                                                    </span>
                                                </div>
                                                <div class="col">
                                                    <span>
                                                        <label style="padding-left: 0px !important;">Mobile Number</label>
                                                        <asp:TextBox ID="txtMobileNo1" runat="server" placeholder="Enter your Mobile No"></asp:TextBox>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>

                            </div>
                            <%--<span class="ec-check-order-btn">
                              <asp:Button ID="btnPlaceOrder" class="btn btn-primary" runat="server" Text="Place Order" />
                          </span>--%>
                        </div>
                    </div>
                    <!--cart content End -->
                </div>
                <!-- Sidebar Area Start -->
                <div class="ec-checkout-rightside col-lg-4 col-md-12">
                    <div class="ec-sidebar-wrap">
                        <!-- Sidebar Summary 
                          
                          
                          
                          
                          
                          -->
                        <div class="ec-sidebar-block">
                            <div class="ec-sb-title">
                                <h3 class="ec-sidebar-title">Summary</h3>
                            </div>
                            <div class="ec-sb-block-content">
                                <div class="ec-checkout-summary">
                                    <div>
                                        <span class="text-left">Sub-Total</span>
                                        <span class="text-right">₹<asp:Label ID="lblSubtotal" runat="server" Text=""></asp:Label></span>
                                    </div>
                                    <div>
                                        <span class="text-left">Delivery Charges</span>
                                        <span class="text-right">₹<asp:Label ID="lblShippingCharge" runat="server" Text=""></asp:Label></span>
                                    </div>

                                    <div class="ec-checkout-summary-total">
                                        <span class="text-left">Total Amount</span>
                                        <span class="text-right">₹<asp:Label ID="lblTotal" runat="server" Text=""></asp:Label></span>
                                    </div>
                                </div>

                                <div class="ec-checkout-pro">

                                    <asp:DataList ID="DataList1" runat="server">
                                        <itemtemplate>
                                            <div class="col-sm-12 mb-6">
                                                <div class="ec-product-inner">
                                                    <div class="ec-pro-image-outer">
                                                        <div class="ec-pro-image">
                                                            <a href="product-left-sidebar.html" class="image">
                                                                <asp:Image ID="image1" runat="server" class="main-image" ImageUrl='<%# Eval("Image") %>' />
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="ec-pro-content">
                                                        <h5 class="ec-pro-title"><a href="product-left-sidebar.html">
                                                            <asp:Label ID="lblLaptopModel" runat="server" Text='<%# Eval("Brand_name") + " " + Eval("Laptop_Model") %>'></asp:Label>
                                                        </a></h5>
                                                        <div class="ec-pro-rating">
                                                            <i class="ecicon eci-star fill"></i>
                                                            <i class="ecicon eci-star fill"></i>
                                                            <i class="ecicon eci-star fill"></i>
                                                            <i class="ecicon eci-star fill"></i>
                                                            <i class="ecicon eci-star"></i>
                                                        </div>
                                                        <span class="ec-price">
                                                            <span class="old-price">₹<asp:Label ID="lblOldPrice" runat="server" Text='<%# Convert.ToDouble( Eval("Sale_Price") ) %>'></asp:Label></span>
                                                            <span class="new-price">₹<asp:Label ID="lblNewPrice" runat="server" Text='<%# Convert.ToDouble( Eval("Price") ) %>'></asp:Label></span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </itemtemplate>
                                    </asp:DataList>

                                </div>
                            </div>
                        </div>
                        <!-- Sidebar Summary Block -->
                    </div>
                    <div class="ec-sidebar-wrap ec-checkout-del-wrap">
                        <!-- Sidebar Summary Block -->
                        <div class="ec-sidebar-block">
                            <div class="ec-sb-title">
                                <h3 class="ec-sidebar-title">Delivery Method</h3>
                            </div>
                            <div class="ec-sb-block-content">
                                <div class="ec-checkout-del">
                                    <div class="ec-del-desc">
                                        Please select the preferred shipping method to use on this
                                      order.
                                    </div>

                                    <span class="ec-del-option">
                                        <span>
                                            <span class="ec-del-opt-head">Standard Shipping</span>
                                            <asp:RadioButton ID="rdbStandard" runat="server" GroupName="a"  />
                                            <label for="rdbStandard">Rate - ₹50.00</label>
                                        </span>
                                        <span>
                                            <span class="ec-del-opt-head">Express Shipping</span>
                                            <asp:RadioButton ID="rdbExpress" runat="server" GroupName="a" />
                                            <label for="rdbExpress">Rate - ₹70.00</label>
                                        </span>
                                    </span>
                                    <%-- <span class="ec-del-commemt">
                                          <span class="ec-del-opt-head">Add Comments About Your Order</span>
                                          <textarea name="your-commemt" placeholder="Comments"></textarea>
                                      </span>--%>
                                </div>
                            </div>
                        </div>
                        <!-- Sidebar Summary Block -->
                    </div>
                    <div class="ec-sidebar-wrap ec-checkout-pay-wrap">
                        <!-- Sidebar Payment Block -->
                        <div class="ec-sidebar-block">
                            <div class="ec-sb-title">
                                <h3 class="ec-sidebar-title">Payment Method</h3>
                            </div>
                            <div class="ec-sb-block-content">
                                <div class="ec-checkout-pay">
                                    <div class="ec-pay-desc">
                                        Please select the preferred payment method to use on this
                                      order.
                                    </div>
                                    <form action="#">
                                        <span class="ec-pay-option">
                                            <span>
                                                <asp:RadioButton ID="orderCOD" runat="server" />
                                                <label for="pay1">Cash On Delivery</label>
                                            </span>
                                        </span>
                                        <%--<span class="ec-pay-commemt">
                                          <span class="ec-pay-opt-head">Add Comments About Your Order</span>
                                          <textarea name="your-commemt" placeholder="Comments"></textarea>
                                      </span>--%>
                                        <span class="ec-pay-agree">
                                            <asp:CheckBox ID="chkTermAndCondition" runat="server" />
                                            <%--<input type="checkbox" value="">--%><a href="#">I have
                                              read and agree to the <span>Terms & Conditions</span></a><span
                                                  class="checked"></span></span>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- Sidebar Payment Block -->
                    </div>
                    <div class="ec-sidebar-wrap ec-check-pay-img-wrap">
                        <!-- Sidebar Payment Block -->
                        <div class="ec-sidebar-block">
                            <div class="ec-sb-title">
                                <h3 class="ec-sidebar-title">Payment Method</h3>
                            </div>
                            <div class="ec-sb-block-content">
                                <div class="ec-check-pay-img-inner">
                                    <div class="ec-check-pay-img">
                                        <img src="assets/images/icons/payment1.png" alt="">
                                    </div>
                                    <div class="ec-check-pay-img">
                                        <img src="assets/images/icons/payment2.png" alt="">
                                    </div>
                                    <div class="ec-check-pay-img">
                                        <img src="assets/images/icons/payment3.png" alt="">
                                    </div>
                                    <div class="ec-check-pay-img">
                                        <img src="assets/images/icons/payment4.png" alt="">
                                    </div>
                                    <div class="ec-check-pay-img">
                                        <img src="assets/images/icons/payment5.png" alt="">
                                    </div>
                                    <div class="ec-check-pay-img">
                                        <img src="assets/images/icons/payment6.png" alt="">
                                    </div>
                                    <div class="ec-check-pay-img">
                                        <img src="assets/images/icons/payment7.png" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <span class="ec-check-order-btn">
                            <asp:Button ID="btnPlaceOrder" class="btn btn-primary" runat="server" Text="Place Order" />
                        </span>
                        <!-- Sidebar Payment Block -->
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- New Product Start -->
    <section class="section ec-new-product section-space-p">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="section-title">
                        <h2 class="ec-bg-title">New Arrivals</h2>
                        <h2 class="ec-title">New Arrivals</h2>
                        <p class="sub-title">Browse The Collection of Top Products</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- New Product Content -->
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6 pro-gl-content">
                    <div class="ec-product-inner">
                        <div class="ec-pro-image-outer">
                            <div class="ec-pro-image">
                                <a href="product-left-sidebar.html" class="image">
                                    <img class="main-image"
                                        src="assets/images/product-image/6_1.jpg" alt="Product" />
                                    <img class="hover-image"
                                        src="assets/images/product-image/6_2.jpg" alt="Product" />
                                </a>
                                <span class="percentage">20%</span>
                                <a href="#" class="quickview" data-link-action="quickview"
                                    title="Quick view" data-bs-toggle="modal"
                                    data-bs-target="#ec_quickview_modal">
                                    <img
                                        src="assets/images/icons/quickview.svg" class="svg_img pro_svg"
                                        alt="" /></a>
                                <div class="ec-pro-actions">
                                    <a href="compare.html" class="ec-btn-group compare"
                                        title="Compare">
                                        <img src="assets/images/icons/compare.svg"
                                            class="svg_img pro_svg" alt="" /></a>
                                    <button title="Add To Cart" class=" add-to-cart">
                                        <img
                                            src="assets/images/icons/cart.svg" class="svg_img pro_svg"
                                            alt="" />
                                        Add To Cart</button>
                                    <a class="ec-btn-group wishlist" title="Wishlist">
                                        <img
                                            src="assets/images/icons/wishlist.svg"
                                            class="svg_img pro_svg" alt="" /></a>
                                </div>
                            </div>
                        </div>
                        <div class="ec-pro-content">
                            <h5 class="ec-pro-title"><a href="product-left-sidebar.html">Round Neck T-Shirt</a></h5>
                            <div class="ec-pro-rating">
                                <i class="ecicon eci-star fill"></i>
                                <i class="ecicon eci-star fill"></i>
                                <i class="ecicon eci-star fill"></i>
                                <i class="ecicon eci-star fill"></i>
                                <i class="ecicon eci-star"></i>
                            </div>
                            <div class="ec-pro-list-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dutmmy text ever since the 1500s, when an unknown printer took a galley.</div>
                            <span class="ec-price">
                                <span class="old-price">$27.00</span>
                                <span class="new-price">$22.00</span>
                            </span>
                            <div class="ec-pro-option">
                                <div class="ec-pro-color">
                                    <span class="ec-pro-opt-label">Color</span>
                                    <ul class="ec-opt-swatch ec-change-img">
                                        <li class="active"><a href="#" class="ec-opt-clr-img"
                                            data-src="assets/images/product-image/6_1.jpg"
                                            data-src-hover="assets/images/product-image/6_1.jpg"
                                            data-tooltip="Gray"><span
                                                style="background-color: #e8c2ff;"></span></a></li>
                                        <li><a href="#" class="ec-opt-clr-img"
                                            data-src="assets/images/product-image/6_2.jpg"
                                            data-src-hover="assets/images/product-image/6_2.jpg"
                                            data-tooltip="Orange"><span
                                                style="background-color: #9cfdd5;"></span></a></li>
                                    </ul>
                                </div>
                                <div class="ec-pro-size">
                                    <span class="ec-pro-opt-label">Size</span>
                                    <ul class="ec-opt-size">
                                        <li class="active"><a href="#" class="ec-opt-sz"
                                            data-old="$25.00" data-new="$20.00"
                                            data-tooltip="Small">S</a></li>
                                        <li><a href="#" class="ec-opt-sz" data-old="$27.00"
                                            data-new="$22.00" data-tooltip="Medium">M</a></li>
                                        <li><a href="#" class="ec-opt-sz" data-old="$35.00"
                                            data-new="$30.00" data-tooltip="Extra Large">XL</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6 pro-gl-content">
                    <div class="ec-product-inner">
                        <div class="ec-pro-image-outer">
                            <div class="ec-pro-image">
                                <a href="product-left-sidebar.html" class="image">
                                    <img class="main-image"
                                        src="assets/images/product-image/7_1.jpg" alt="Product" />
                                    <img class="hover-image"
                                        src="assets/images/product-image/7_2.jpg" alt="Product" />
                                </a>
                                <span class="percentage">20%</span>
                                <span class="flags">
                                    <span class="sale">Sale</span>
                                </span>
                                <a href="#" class="quickview" data-link-action="quickview"
                                    title="Quick view" data-bs-toggle="modal"
                                    data-bs-target="#ec_quickview_modal">
                                    <img
                                        src="assets/images/icons/quickview.svg" class="svg_img pro_svg"
                                        alt="" /></a>
                                <div class="ec-pro-actions">
                                    <a href="compare.html" class="ec-btn-group compare"
                                        title="Compare">
                                        <img src="assets/images/icons/compare.svg"
                                            class="svg_img pro_svg" alt="" /></a>
                                    <button title="Add To Cart" class=" add-to-cart">
                                        <img
                                            src="assets/images/icons/cart.svg" class="svg_img pro_svg"
                                            alt="" />
                                        Add To Cart</button>
                                    <a class="ec-btn-group wishlist" title="Wishlist">
                                        <img
                                            src="assets/images/icons/wishlist.svg"
                                            class="svg_img pro_svg" alt="" /></a>
                                </div>
                            </div>
                        </div>
                        <div class="ec-pro-content">
                            <h5 class="ec-pro-title"><a href="product-left-sidebar.html">Full Sleeve Shirt</a></h5>
                            <div class="ec-pro-rating">
                                <i class="ecicon eci-star fill"></i>
                                <i class="ecicon eci-star fill"></i>
                                <i class="ecicon eci-star fill"></i>
                                <i class="ecicon eci-star fill"></i>
                                <i class="ecicon eci-star"></i>
                            </div>
                            <div class="ec-pro-list-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dutmmy text ever since the 1500s, when an unknown printer took a galley.</div>
                            <span class="ec-price">
                                <span class="old-price">$12.00</span>
                                <span class="new-price">$10.00</span>
                            </span>
                            <div class="ec-pro-option">
                                <div class="ec-pro-color">
                                    <span class="ec-pro-opt-label">Color</span>
                                    <ul class="ec-opt-swatch ec-change-img">
                                        <li class="active"><a href="#" class="ec-opt-clr-img"
                                            data-src="assets/images/product-image/7_1.jpg"
                                            data-src-hover="assets/images/product-image/7_1.jpg"
                                            data-tooltip="Gray"><span
                                                style="background-color: #01f1f1;"></span></a></li>
                                        <li><a href="#" class="ec-opt-clr-img"
                                            data-src="assets/images/product-image/7_2.jpg"
                                            data-src-hover="assets/images/product-image/7_2.jpg"
                                            data-tooltip="Orange"><span
                                                style="background-color: #b89df8;"></span></a></li>
                                    </ul>
                                </div>
                                <div class="ec-pro-size">
                                    <span class="ec-pro-opt-label">Size</span>
                                    <ul class="ec-opt-size">
                                        <li class="active"><a href="#" class="ec-opt-sz"
                                            data-old="$12.00" data-new="$10.00"
                                            data-tooltip="Small">S</a></li>
                                        <li><a href="#" class="ec-opt-sz" data-old="$15.00"
                                            data-new="$12.00" data-tooltip="Medium">M</a></li>
                                        <li><a href="#" class="ec-opt-sz" data-old="$20.00"
                                            data-new="$17.00" data-tooltip="Extra Large">XL</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6 pro-gl-content">
                    <div class="ec-product-inner">
                        <div class="ec-pro-image-outer">
                            <div class="ec-pro-image">
                                <a href="product-left-sidebar.html" class="image">
                                    <img class="main-image"
                                        src="assets/images/product-image/1_1.jpg" alt="Product" />
                                    <img class="hover-image"
                                        src="assets/images/product-image/1_2.jpg" alt="Product" />
                                </a>
                                <span class="percentage">20%</span>
                                <span class="flags">
                                    <span class="sale">Sale</span>
                                </span>
                                <a href="#" class="quickview" data-link-action="quickview"
                                    title="Quick view" data-bs-toggle="modal"
                                    data-bs-target="#ec_quickview_modal">
                                    <img
                                        src="assets/images/icons/quickview.svg" class="svg_img pro_svg"
                                        alt="" /></a>
                                <div class="ec-pro-actions">
                                    <a href="compare.html" class="ec-btn-group compare"
                                        title="Compare">
                                        <img src="assets/images/icons/compare.svg"
                                            class="svg_img pro_svg" alt="" /></a>
                                    <button title="Add To Cart" class=" add-to-cart">
                                        <img
                                            src="assets/images/icons/cart.svg" class="svg_img pro_svg"
                                            alt="" />
                                        Add To Cart</button>
                                    <a class="ec-btn-group wishlist" title="Wishlist">
                                        <img
                                            src="assets/images/icons/wishlist.svg"
                                            class="svg_img pro_svg" alt="" /></a>
                                </div>
                            </div>
                        </div>
                        <div class="ec-pro-content">
                            <h5 class="ec-pro-title"><a href="product-left-sidebar.html">Cute Baby Toy's</a></h5>
                            <div class="ec-pro-rating">
                                <i class="ecicon eci-star fill"></i>
                                <i class="ecicon eci-star fill"></i>
                                <i class="ecicon eci-star fill"></i>
                                <i class="ecicon eci-star fill"></i>
                                <i class="ecicon eci-star"></i>
                            </div>
                            <div class="ec-pro-list-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dutmmy text ever since the 1500s, when an unknown printer took a galley.</div>
                            <span class="ec-price">
                                <span class="old-price">$40.00</span>
                                <span class="new-price">$30.00</span>
                            </span>
                            <div class="ec-pro-option">
                                <div class="ec-pro-color">
                                    <span class="ec-pro-opt-label">Color</span>
                                    <ul class="ec-opt-swatch ec-change-img">
                                        <li class="active"><a href="#" class="ec-opt-clr-img"
                                            data-src="assets/images/product-image/1_1.jpg"
                                            data-src-hover="assets/images/product-image/1_1.jpg"
                                            data-tooltip="Gray"><span
                                                style="background-color: #90cdf7;"></span></a></li>
                                        <li><a href="#" class="ec-opt-clr-img"
                                            data-src="assets/images/product-image/1_2.jpg"
                                            data-src-hover="assets/images/product-image/1_2.jpg"
                                            data-tooltip="Orange"><span
                                                style="background-color: #ff3b66;"></span></a></li>
                                        <li><a href="#" class="ec-opt-clr-img"
                                            data-src="assets/images/product-image/1_3.jpg"
                                            data-src-hover="assets/images/product-image/1_3.jpg"
                                            data-tooltip="Green"><span
                                                style="background-color: #ffc476;"></span></a></li>
                                        <li><a href="#" class="ec-opt-clr-img"
                                            data-src="assets/images/product-image/1_4.jpg"
                                            data-src-hover="assets/images/product-image/1_4.jpg"
                                            data-tooltip="Sky Blue"><span
                                                style="background-color: #1af0ba;"></span></a></li>
                                    </ul>
                                </div>
                                <div class="ec-pro-size">
                                    <span class="ec-pro-opt-label">Size</span>
                                    <ul class="ec-opt-size">
                                        <li class="active"><a href="#" class="ec-opt-sz"
                                            data-old="$40.00" data-new="$30.00"
                                            data-tooltip="Small">S</a></li>
                                        <li><a href="#" class="ec-opt-sz" data-old="$50.00"
                                            data-new="$40.00" data-tooltip="Medium">M</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 mb-6 pro-gl-content">
                    <div class="ec-product-inner">
                        <div class="ec-pro-image-outer">
                            <div class="ec-pro-image">
                                <a href="product-left-sidebar.html" class="image">
                                    <img class="main-image"
                                        src="assets/images/product-image/2_1.jpg" alt="Product" />
                                    <img class="hover-image"
                                        src="assets/images/product-image/2_2.jpg" alt="Product" />
                                </a>
                                <span class="percentage">20%</span>
                                <span class="flags">
                                    <span class="new">New</span>
                                </span>
                                <a href="#" class="quickview" data-link-action="quickview"
                                    title="Quick view" data-bs-toggle="modal"
                                    data-bs-target="#ec_quickview_modal">
                                    <img
                                        src="assets/images/icons/quickview.svg" class="svg_img pro_svg"
                                        alt="" /></a>
                                <div class="ec-pro-actions">
                                    <a href="compare.html" class="ec-btn-group compare"
                                        title="Compare">
                                        <img src="assets/images/icons/compare.svg"
                                            class="svg_img pro_svg" alt="" /></a>
                                    <button title="Add To Cart" class=" add-to-cart">
                                        <img
                                            src="assets/images/icons/cart.svg" class="svg_img pro_svg"
                                            alt="" />
                                        Add To Cart</button>
                                    <a class="ec-btn-group wishlist" title="Wishlist">
                                        <img
                                            src="assets/images/icons/wishlist.svg"
                                            class="svg_img pro_svg" alt="" /></a>
                                </div>
                            </div>
                        </div>
                        <div class="ec-pro-content">
                            <h5 class="ec-pro-title"><a href="product-left-sidebar.html">Jumbo Carry Bag</a></h5>
                            <div class="ec-pro-rating">
                                <i class="ecicon eci-star fill"></i>
                                <i class="ecicon eci-star fill"></i>
                                <i class="ecicon eci-star fill"></i>
                                <i class="ecicon eci-star fill"></i>
                                <i class="ecicon eci-star"></i>
                            </div>
                            <div class="ec-pro-list-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dutmmy text ever since the 1500s, when an unknown printer took a galley.</div>
                            <span class="ec-price">
                                <span class="old-price">$50.00</span>
                                <span class="new-price">$40.00</span>
                            </span>
                            <div class="ec-pro-option">
                                <div class="ec-pro-color">
                                    <span class="ec-pro-opt-label">Color</span>
                                    <ul class="ec-opt-swatch ec-change-img">
                                        <li class="active"><a href="#" class="ec-opt-clr-img"
                                            data-src="assets/images/product-image/2_1.jpg"
                                            data-src-hover="assets/images/product-image/2_2.jpg"
                                            data-tooltip="Gray"><span
                                                style="background-color: #fdbf04;"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 shop-all-btn"><a href="#">Shop All Collection</a></div>
            </div>
        </div>
    </section>
    <!-- New Product end -->
</asp:Content>

