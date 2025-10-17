<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Laptop.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        /* ---------- General Page Styles ---------- */
        body {
            background: linear-gradient(135deg, #f3f8ff 0%, #eaf3ff 100%);
            font-family: 'Poppins', sans-serif;
            color: #222;
        }

        h1, h2, h5 {
            font-weight: 600;
        }

        .btn-secondary {
            background: linear-gradient(135deg, #4b6cb7, #182848);
            border: none;
            color: #fff;
            transition: 0.3s;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2);
        }

        .btn-secondary:hover {
            background: linear-gradient(135deg, #ff6a00, #ee0979);
            transform: scale(1.05);
        }

        /* ---------- Slider Section ---------- */
        .ec-main-slider {
            position: relative;
            overflow: hidden;
        }

        .ec-slide-item {
            height: 90vh;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 1s ease;
            text-align: left;
        }

        .ec-slide-content {
            background: rgba(0, 0, 0, 0.45);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.3);
        }

        .ec-slide-title {
            font-size: 3rem;
            color: #fff;
        }

        .ec-slide-stitle {
            font-size: 1.4rem;
            color: #ffb400;
            margin-bottom: 10px;
        }

        .ec-slide-content p {
            color: #eee;
            font-size: 1rem;
            margin-bottom: 20px;
        }

        /* ---------- Product Section ---------- */
        .section-title {
            text-align: center;
            margin-bottom: 40px;
        }

        .ec-title {
            color: #182848;
            font-size: 2.5rem;
        }

        .ec-sub-title {
            color: #555;
            font-size: 1.2rem;
        }

        .ec-product-inner {
            background: #fff;
            border-radius: 20px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            padding: 10px;
            margin-bottom: 25px;
        }

        .ec-product-inner:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        }

        .ec-pro-image img {
            border-radius: 15px;
            transition: transform 0.4s;
            width: 100%;
            height: 220px;
            object-fit: cover;
        }

        .ec-pro-image img:hover {
            transform: scale(1.08);
        }

        .ec-pro-title {
            margin-top: 10px;
            color: #111;
            text-align: center;
        }

        .ec-pro-title a {
            text-decoration: none;
            color: #333;
            font-weight: 600;
        }

        .ec-pro-title a:hover {
            color: #0078ff;
        }

        .ec-pro-list-desc {
            color: #777;
            text-align: center;
            font-size: 0.9rem;
            margin-bottom: 5px;
        }

        .ec-price {
            text-align: center;
            display: block;
        }

        .old-price {
            text-decoration: line-through;
            color: #999;
            margin-right: 5px;
        }

        .new-price {
            color: #ff5722;
            font-weight: bold;
            font-size: 1.1rem;
        }

        .percentage {
            background: linear-gradient(135deg, #ff0844, #ffb199);
            color: #fff;
            padding: 5px 10px;
            border-radius: 12px;
            font-size: 0.9rem;
            position: absolute;
            top: 10px;
            left: 10px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
   
    <!-- 🔥 Main Slider Start -->
    <div class="ec-main-slider section">
        <div class="ec-slider">

            <!-- Slide 1 -->
            <div class="ec-slide-item" style="background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1600&q=80') no-repeat center center/cover;">
                <div class="container">
                    <div class="ec-slide-content text-white">
                        <h2 class="ec-slide-stitle">🔥 New Arrival</h2>
                        <h1 class="ec-slide-title">Stylish Laptops</h1>
                        <p>Discover the latest laptops from Apple, ASUS, Acer & more.</p>
                        <a href="Products.aspx" class="btn btn-lg btn-secondary">Shop Now</a>
                    </div>
                </div>
            </div>

            <!-- Slide 2 -->
            <div class="ec-slide-item" style="background: url('https://images.unsplash.com/photo-1508898578281-774ac4893c0c?auto=format&fit=crop&w=1600&q=80') no-repeat center center/cover;">
                <div class="container">
                    <div class="ec-slide-content text-white">
                        <h2 class="ec-slide-stitle">📸 Trending Item</h2>
                        <h1 class="ec-slide-title">Motion Cameras</h1>
                        <p>Capture life’s best moments with high-resolution action cameras.</p>
                        <a href="Products.aspx" class="btn btn-lg btn-secondary">Shop Now</a>
                    </div>
                </div>
            </div>

            <!-- Slide 3 -->
            <div class="ec-slide-item" style="background: url('https://images.unsplash.com/photo-1581090700227-4c4c79d21f99?auto=format&fit=crop&w=1600&q=80') no-repeat center center/cover;">
                <div class="container">
                    <div class="ec-slide-content text-white">
                        <h2 class="ec-slide-stitle">✨ Smart Tech</h2>
                        <h1 class="ec-slide-title">Google Nest</h1>
                        <p>Upgrade your smart home with next-gen devices.</p>
                        <a href="Products.aspx" class="btn btn-lg btn-secondary">Shop Now</a>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- 🔥 Main Slider End -->


    <!-- 💎 Product tab Area Start -->
    <section class="section ec-product-tab section-space-p">
        <div class="container">
            <div class="section-title">
                <h2 class="ec-title">Featured Products</h2>
                <h6 class="ec-sub-title">Latest tech gadgets hand-picked for you</h6>
            </div>

            <div class="row">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
                    <ItemTemplate>
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="ec-product-inner">
                                <div class="ec-pro-image-outer">
                                    <div class="ec-pro-image position-relative">
                                        <asp:Image ID="Image1" class="main-image" runat="server" ImageUrl='<%# Eval("Image") %>' />
                                        <span class="percentage"><%# Eval("Discount") %>%</span>
                                    </div>
                                </div>
                                <div class="ec-pro-content">
                                    <h5 class="ec-pro-title">
                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "ProductDetails.aspx?Laptop_Id="+Eval("Laptop_Id") %>'>
                                            <%# Eval("Brand_Name") %> <br /> <%# Eval("Laptop_Model") %>
                                        </asp:HyperLink>
                                    </h5>
                                    <div class="ec-pro-list-desc"><%# Eval("Description") %></div>
                                    <span class="ec-price">
                                        <span class="old-price">₹<%# Eval("Sale_Price") %></span>
                                        <span class="new-price">₹<%# Eval("New_Price") %></span>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </section>
    <!-- 💎 Product tab Area End -->
</asp:Content>

