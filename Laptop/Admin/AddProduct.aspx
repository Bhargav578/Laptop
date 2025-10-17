<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Laptop.Admin.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* ===================================
           Add Product Page - Complete CSS
           =================================== */

        /* Content Wrapper */
        .ec-content-wrapper {
            padding: 30px;
            background: #f8f9fa;
            min-height: 100vh;
        }

        .content {
            max-width: 1400px;
            margin: 0 auto;
        }

        /* Breadcrumb Section */
        .breadcrumb-wrapper {
            background: #fff;
            padding: 20px 25px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
            margin-bottom: 30px;
        }

        .breadcrumb-wrapper h1 {
            font-size: 28px;
            font-weight: 600;
            color: #2c3e50;
            margin-bottom: 5px;
        }

        .breadcrumbs {
            font-size: 14px;
            color: #6c757d;
            margin: 0;
        }

        .breadcrumbs a {
            color: #6096cc;
            text-decoration: none;
            transition: color 0.3s;
        }

        .breadcrumbs a:hover {
            color: #4a7ba7;
        }

        .breadcrumbs i {
            margin: 0 8px;
            font-size: 12px;
        }

        /* Card Styles */
        .card {
            border: none;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
            overflow: hidden;
            background: #fff;
        }

        .card-default {
            margin-bottom: 30px;
        }

        .card-header {
            background: linear-gradient(135deg, #6096cc 0%, #4a7ba7 100%);
            padding: 20px 25px;
            border: none;
        }

        .card-header-border-bottom {
            border-bottom: none;
        }

        .card-header h2 {
            font-size: 22px;
            font-weight: 600;
            color: #fff;
            margin: 0;
        }

        .card-body {
            padding: 35px;
        }

        /* Image Upload Section */
        .ec-vendor-uploads {
            gap: 30px;
        }

        .ec-vendor-img-upload {
            position: sticky;
            top: 20px;
        }

        .ec-vendor-main-img {
            background: #f8f9fa;
            border-radius: 12px;
            padding: 25px;
            border: 2px dashed #dee2e6;
            transition: all 0.3s;
        }

        .ec-vendor-main-img:hover {
            border-color: #6096cc;
            background: #f0f5fa;
        }

        .avatar-upload p {
            font-size: 16px;
            font-weight: 600;
            color: #2c3e50;
            margin-bottom: 20px;
            text-align: center;
        }

        .avatar-edit {
            text-align: center;
            margin-bottom: 20px;
        }

        .avatar-edit label {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 50px;
            height: 50px;
            background: #6096cc;
            border-radius: 50%;
            cursor: pointer;
            transition: all 0.3s;
            box-shadow: 0 4px 15px rgba(96, 150, 204, 0.3);
        }

        .avatar-edit label:hover {
            background: #4a7ba7;
            transform: scale(1.1);
        }

        .avatar-edit label img {
            width: 24px;
            height: 24px;
            filter: brightness(0) invert(1);
        }

        .ec-image-upload {
            display: none;
        }

        .avatar-preview {
            margin: 20px 0;
        }

        .ec-preview .imagePreview {
            width: 100%;
            height: 300px;
            border-radius: 10px;
            overflow: hidden;
            background: #fff;
            border: 2px solid #e9ecef;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .ec-image-preview {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* Form Section */
        .ec-vendor-upload-detail {
            background: #fff;
            padding: 0;
        }

        .form-label {
            font-size: 14px;
            font-weight: 600;
            color: #2c3e50;
            margin-bottom: 8px;
            display: block;
        }

        .col-12.col-form-label {
            padding: 0;
            margin-bottom: 8px;
        }

        .form-label span {
            font-weight: 400;
            color: #6c757d;
            font-size: 13px;
        }

        .form-control,
        .form-select {
            padding: 12px 16px;
            font-size: 14px;
            border: 2px solid #e9ecef;
            border-radius: 8px;
            transition: all 0.3s;
            background: #fff;
            color: #495057;
            width: 100%;
        }

        .form-control:focus,
        .form-select:focus {
            border-color: #6096cc;
            box-shadow: 0 0 0 0.2rem rgba(96, 150, 204, 0.15);
            outline: none;
        }

        .form-control:hover,
        .form-select:hover {
            border-color: #6096cc;
        }

        textarea.form-control {
            min-height: 120px;
            resize: vertical;
        }

        /* Column Spacing */
        .col-md-6,
        .col-md-12 {
            margin-bottom: 20px;
        }

        .col-12 {
            padding: 0;
        }

        /* Button Styles */
        .btn {
            padding: 12px 30px;
            font-size: 15px;
            font-weight: 600;
            border-radius: 8px;
            border: none;
            transition: all 0.3s;
            cursor: pointer;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            display: inline-block;
            text-align: center;
        }

        .btn-primary {
            background: linear-gradient(135deg, #6096cc 0%, #4a7ba7 100%) !important;
            color: #fff !important;
            box-shadow: 0 4px 15px rgba(96, 150, 204, 0.3);
        }

        .btn-primary:hover {
            background: linear-gradient(135deg, #4a7ba7 0%, #3a6187 100%) !important;
            box-shadow: 0 6px 20px rgba(96, 150, 204, 0.4);
            transform: translateY(-2px);
        }

        .btn-primary:active {
            transform: translateY(0);
        }

        /* Validation & Messages */
        #ContentPlaceHolder2_ValidationSummary1,
        .validation-summary {
            background: #fee;
            border: 2px solid #fcc;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 20px;
        }

        #ContentPlaceHolder2_ValidationSummary1 ul {
            margin: 0;
            padding-left: 20px;
        }

        #ContentPlaceHolder2_ValidationSummary1 li {
            margin-bottom: 5px;
            color: #dc3545;
        }

        #ContentPlaceHolder2_lblImageMessage,
        #ContentPlaceHolder2_lblResponse {
            display: block;
            margin-top: 15px;
            padding: 10px 15px;
            border-radius: 6px;
            font-size: 14px;
            font-weight: 500;
            text-align: center;
        }

        #ContentPlaceHolder2_lblImageMessage {
            background: #fee;
            border: 1px solid #fcc;
            color: #dc3545;
        }

        #ContentPlaceHolder2_lblResponse {
            background: #d4edda;
            border: 1px solid #c3e6cb;
            color: #155724;
        }

        /* Utility Classes */
        .d-flex {
            display: flex !important;
        }

        .align-items-center {
            align-items: center !important;
        }

        .justify-content-between {
            justify-content: space-between !important;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            margin-right: -15px;
            margin-left: -15px;
        }

        .col-12 {
            flex: 0 0 100%;
            max-width: 100%;
            padding-right: 15px;
            padding-left: 15px;
        }

        .col-lg-4 {
            flex: 0 0 33.333333%;
            max-width: 33.333333%;
            padding-right: 15px;
            padding-left: 15px;
        }

        .col-lg-8 {
            flex: 0 0 66.666667%;
            max-width: 66.666667%;
            padding-right: 15px;
            padding-left: 15px;
        }

        .col-md-6 {
            flex: 0 0 50%;
            max-width: 50%;
            padding-right: 15px;
            padding-left: 15px;
        }

        .col-md-12 {
            flex: 0 0 100%;
            max-width: 100%;
            padding-right: 15px;
            padding-left: 15px;
        }

        .g-3 {
            margin-right: -0.75rem;
            margin-left: -0.75rem;
        }

        .g-3 > * {
            padding-right: 0.75rem;
            padding-left: 0.75rem;
        }

        /* Responsive Design */
        @media (max-width: 991px) {
            .ec-vendor-img-upload {
                position: static;
                margin-bottom: 30px;
            }

            .breadcrumb-wrapper {
                flex-direction: column;
                gap: 15px;
            }

            .breadcrumb-wrapper > div:last-child {
                text-align: left;
                width: 100%;
            }

            .col-lg-4,
            .col-lg-8 {
                flex: 0 0 100%;
                max-width: 100%;
            }
        }

        @media (max-width: 768px) {
            .ec-content-wrapper {
                padding: 15px;
            }

            .card-body {
                padding: 20px;
            }

            .breadcrumb-wrapper h1 {
                font-size: 24px;
            }

            .col-md-6,
            .col-md-12 {
                flex: 0 0 100%;
                max-width: 100%;
                margin-bottom: 15px;
            }

            .ec-preview .imagePreview {
                height: 250px;
            }
        }

        @media (max-width: 576px) {
            .breadcrumb-wrapper {
                padding: 15px;
            }

            .card-header h2 {
                font-size: 18px;
            }

            .btn {
                width: 100%;
                padding: 14px;
            }

            .ec-preview .imagePreview {
                height: 200px;
            }
        }

        /* Loading State */
        .btn-primary:disabled {
            background: #ccc !important;
            cursor: not-allowed;
            box-shadow: none;
        }

        /* Animation Effects */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .card {
            animation: fadeIn 0.5s ease;
        }

        /* Dropdown Arrow Styling */
        .form-select {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16'%3e%3cpath fill='none' stroke='%23343a40' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M2 5l6 6 6-6'/%3e%3c/svg%3e");
            background-repeat: no-repeat;
            background-position: right 12px center;
            background-size: 16px 12px;
            padding-right: 40px;
        }

        /* Input Number Arrows */
        input[type="number"]::-webkit-inner-spin-button,
        input[type="number"]::-webkit-outer-spin-button {
            opacity: 1;
        }

        /* Focus Visible for Accessibility */
        *:focus-visible {
            outline: 2px solid #6096cc;
            outline-offset: 2px;
        }

        /* Smooth Scrolling */
        html {
            scroll-behavior: smooth;
        }

        /* Selection Color */
        ::selection {
            background: #6096cc;
            color: #fff;
        }

        /* SVG Icon Styling */
        .svg_img {
            width: 24px;
            height: 24px;
        }

        .header_svg {
            filter: brightness(0) invert(1);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <!-- CONTENT WRAPPER -->
    <div class="ec-content-wrapper">
        <div class="content">
            <div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
                <div>
                    <h1>Add Product</h1>
                    <p class="breadcrumbs"><span><a href="index.aspx">Home</a></span>
                        <span><i class="mdi mdi-chevron-right"></i></span>Product</p>
                </div>
                <div>
                    <a href="Products.aspx" class="btn btn-primary"> View All</a>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="card card-default">
                        <div class="card-header card-header-border-bottom">
                            <h2>Add Product</h2>			
                        </div>

                        <div class="card-body">
                            <div class="row ec-vendor-uploads">
                                <div class="col-lg-4">
                                    <div class="ec-vendor-img-upload">
                                        <div class="ec-vendor-main-img">
                                            <div class="avatar-upload">
                                                <p>Laptop Image</p>
                                                <div class="avatar-edit">
                                                    <asp:FileUpload class="ec-image-upload" ID="fuLaptopImage" runat="server" />
                                                    <label for="ContentPlaceHolder2_fuLaptopImage">
                                                        <img src="assets/img/icons/edit.svg" class="svg_img header_svg" alt="edit" />
                                                    </label>
                                                </div>
                                                <div class="avatar-preview ec-preview">
                                                    <div class="imagePreview ec-div-preview">
                                                        <img class="ec-image-preview" src="assets/img/products/vender-upload-preview.jpg" alt="edit" />
                                                    </div>
                                                </div>
                                                <asp:Label ID="lblImageMessage" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label>
                                                <asp:Label ID="lblResponse" runat="server" Text="" ForeColor="Green" Visible="false"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-8">
                                    <div class="ec-vendor-upload-detail">
                                        <form class="row g-3">
                                            <div class="col-md-6">
                                                <asp:ValidationSummary ValidationGroup="AddProductGroup" ForeColor="Red" ID="ValidationSummary1" runat="server" />

                                                <label class="form-label">Select Category</label>
                                                <asp:DropDownList class="form-select" ID="ddlCategoryId" runat="server">
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label">Select Brand</label>
                                                <asp:DropDownList class="form-select" ID="ddlBrandId" runat="server">
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="slug" class="col-12 col-form-label">Laptop Model</label> 
                                                <div class="col-12">
                                                    <asp:TextBox class="form-control here set-slug" ID="txtLaptopModel" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtLaptopModel" ValidationGroup="AddProductGroup" Display="None" runat="server" ErrorMessage="Enter a Laptop Model"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label">RAM</label>
                                                <asp:DropDownList class="form-select" ID="ddlRAM" runat="server">
                                                    <asp:ListItem>4 GB</asp:ListItem>
                                                    <asp:ListItem>8 GB</asp:ListItem>
                                                    <asp:ListItem>16 GB</asp:ListItem>
                                                    <asp:ListItem>32 GB</asp:ListItem>
                                                    <asp:ListItem>64 GB</asp:ListItem>
                                                    <asp:ListItem>128 GB</asp:ListItem>
                                                    <asp:ListItem>256 GB</asp:ListItem>
                                                    <asp:ListItem>512 GB</asp:ListItem>
                                                    <asp:ListItem>1024 GB(1 TB)</asp:ListItem>
                                                    <asp:ListItem>2048 GB(2 TB)</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="ddlRAM" ValidationGroup="AddProductGroup" Display="None" runat="server" ErrorMessage="Enter a RAM in GB Format"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label">SSD</label>
                                                <asp:DropDownList class="form-select" ID="ddlSSD" runat="server">
                                                    <asp:ListItem>2 GB</asp:ListItem>
                                                    <asp:ListItem>4 GB</asp:ListItem>
                                                    <asp:ListItem>6 GB</asp:ListItem>
                                                    <asp:ListItem>8 GB</asp:ListItem>
                                                    <asp:ListItem>16 GB</asp:ListItem>
                                                    <asp:ListItem>32 GB</asp:ListItem>
                                                    <asp:ListItem>64 GB</asp:ListItem>
                                                    <asp:ListItem>128 GB</asp:ListItem>
                                                    <asp:ListItem>256 GB</asp:ListItem>
                                                    <asp:ListItem>512 GB</asp:ListItem>
                                                    <asp:ListItem>1024 GB(1 TB)</asp:ListItem>
                                                    <asp:ListItem>2048 GB(2 TB)</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="ddlSSD" ValidationGroup="AddProductGroup" Display="None" runat="server" ErrorMessage="Enter a SSD in GB Format"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label">HDD</label>
                                                <asp:DropDownList class="form-select" ID="ddlHDD" runat="server">
                                                    <asp:ListItem>4 GB</asp:ListItem>
                                                    <asp:ListItem>8 GB</asp:ListItem>
                                                    <asp:ListItem>16 GB</asp:ListItem>
                                                    <asp:ListItem>32 GB</asp:ListItem>
                                                    <asp:ListItem>64 GB</asp:ListItem>
                                                    <asp:ListItem>128 GB</asp:ListItem>
                                                    <asp:ListItem>256 GB</asp:ListItem>
                                                    <asp:ListItem>512 GB</asp:ListItem>
                                                    <asp:ListItem>1024 GB(1 TB)</asp:ListItem>
                                                    <asp:ListItem>2048 GB(2 TB)</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="ddlHDD" ValidationGroup="AddProductGroup" Display="None" runat="server" ErrorMessage="Enter a HDD in GB Format"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label">Display Size</label>
                                                <asp:TextBox class="form-control" ID="txtDisplaySize" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtDisplaySize" ValidationGroup="AddProductGroup" Display="None" runat="server" ErrorMessage="Enter a Display Size"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label">Graphic Card</label>
                                                <asp:DropDownList class="form-select" ID="ddlGraphicCard" runat="server">
                                                    <asp:ListItem>1 GB</asp:ListItem>
                                                    <asp:ListItem>2 GB</asp:ListItem>
                                                    <asp:ListItem>4 GB</asp:ListItem>
                                                    <asp:ListItem>6 GB</asp:ListItem>
                                                    <asp:ListItem>8 GB</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="ddlGraphicCard" ValidationGroup="AddProductGroup" Display="None" runat="server" ErrorMessage="Enter a Graphic Card in GB Format"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-md-12">
                                                <label class="form-label">Description</label>
                                                <asp:TextBox class="form-control" Rows="3" ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="txtDescription" ValidationGroup="AddProductGroup" Display="None" runat="server" ErrorMessage="Enter a Description"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label">Cost Price</label>
                                                <asp:TextBox class="form-control" TextMode="Number" ID="txtCostPrice" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="txtCostPrice" ValidationGroup="AddProductGroup" Display="None" runat="server" ErrorMessage="Enter a Laptop Cost Price"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label">Sale Price<span>( In INR(₹) )</span></label>
                                                <asp:TextBox class="form-control" TextMode="Number" ID="txtPrice" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="txtPrice" ValidationGroup="AddProductGroup" Display="None" runat="server" ErrorMessage="Enter a Price of Laptop"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label">Discount</label>
                                                <asp:TextBox class="form-control" TextMode="Number" ID="txtDiscount" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="txtDiscount" ValidationGroup="AddProductGroup" Display="None" runat="server" ErrorMessage="Enter a Discount in Percentage(%)..."></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label">Quantity</label>
                                                <asp:TextBox class="form-control" TextMode="Number" ID="txtQuantity" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtQuantity" ValidationGroup="AddProductGroup" Display="None" runat="server" ErrorMessage="Enter a Quantity..."></asp:RequiredFieldValidator>
                                            </div>
                                            <br>
                                            <div class="col-md-12">
                                                <asp:Button class="btn btn-primary" ValidationGroup="AddProductGroup" BackColor="#6096cc" ForeColor="White" ID="btnAddProduct" runat="server" Text="Add Product" OnClick="btnAddProduct_Click" />
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End Content -->
    </div> <!-- End Content Wrapper -->
</asp:Content>