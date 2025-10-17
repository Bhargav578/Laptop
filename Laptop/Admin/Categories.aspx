<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="Laptop.Admin.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* ===================================
           Categories Page - Complete CSS
           =================================== */

        /* Content Wrapper */
        .ec-content-wrapper {
            padding: 30px;
            background: linear-gradient(135deg, #f5f7fa 0%, #e8ecf1 100%);
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
            border-radius: 12px;
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.08);
            margin-bottom: 30px;
            border-left: 4px solid #6096cc;
        }

        .breadcrumb-wrapper h1 {
            font-size: 28px;
            font-weight: 700;
            color: #2c3e50;
            margin-bottom: 5px;
            background: linear-gradient(135deg, #6096cc 0%, #4a7ba7 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
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
            font-weight: 500;
        }

        .breadcrumbs a:hover {
            color: #4a7ba7;
            text-decoration: underline;
        }

        .breadcrumbs i {
            margin: 0 8px;
            font-size: 12px;
            color: #adb5bd;
        }

        /* Card Styles */
        .card {
            border: none;
            border-radius: 12px;
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            background: #fff;
            transition: all 0.3s;
        }

        .card:hover {
            box-shadow: 0 8px 35px rgba(0, 0, 0, 0.15);
            transform: translateY(-3px);
        }

        .card-default {
            margin-bottom: 30px;
        }

        .card-header {
            background: linear-gradient(135deg, #6096cc 0%, #4a7ba7 100%);
            padding: 20px 25px;
            border: none;
            position: relative;
            overflow: hidden;
        }

        .card-header::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, rgba(255,255,255,0.1) 0%, transparent 70%);
            animation: shimmer 3s infinite;
        }

        @keyframes shimmer {
            0%, 100% { transform: translate(0, 0); }
            50% { transform: translate(-20px, -20px); }
        }

        .card-header-border-bottom {
            border-bottom: none;
        }

        .card-header h2 {
            font-size: 22px;
            font-weight: 700;
            color: #fff;
            margin: 0;
            position: relative;
            z-index: 1;
            text-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .card-body {
            padding: 35px;
            background: #fff;
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
            background: linear-gradient(145deg, #ffffff 0%, #f8f9fa 100%);
            border-radius: 15px;
            padding: 30px;
            border: 3px dashed #dee2e6;
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
        }

        .ec-vendor-main-img:hover {
            border-color: #6096cc;
            background: linear-gradient(145deg, #f0f5fa 0%, #e8ecf1 100%);
            box-shadow: 0 8px 25px rgba(96, 150, 204, 0.15);
            transform: scale(1.02);
        }

        .avatar-upload p {
            font-size: 17px;
            font-weight: 700;
            color: #2c3e50;
            margin-bottom: 25px;
            text-align: center;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .avatar-edit {
            text-align: center;
            margin-bottom: 25px;
        }

        .avatar-edit label {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 60px;
            height: 60px;
            background: linear-gradient(135deg, #6096cc 0%, #4a7ba7 100%);
            border-radius: 50%;
            cursor: pointer;
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            box-shadow: 0 6px 20px rgba(96, 150, 204, 0.4);
            position: relative;
        }

        .avatar-edit label::before {
            content: '';
            position: absolute;
            width: 100%;
            height: 100%;
            border-radius: 50%;
            background: linear-gradient(135deg, #4a7ba7 0%, #3a6187 100%);
            opacity: 0;
            transition: opacity 0.3s;
        }

        .avatar-edit label:hover::before {
            opacity: 1;
        }

        .avatar-edit label:hover {
            transform: scale(1.15) rotate(5deg);
            box-shadow: 0 8px 30px rgba(96, 150, 204, 0.6);
        }

        .avatar-edit label img {
            width: 28px;
            height: 28px;
            filter: brightness(0) invert(1);
            position: relative;
            z-index: 1;
        }

        .ec-image-upload {
            display: none;
        }

        .avatar-preview {
            margin: 25px 0;
        }

        .ec-preview .imagePreview {
            width: 100%;
            height: 320px;
            border-radius: 12px;
            overflow: hidden;
            background: #fff;
            border: 3px solid #e9ecef;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.3s;
            box-shadow: inset 0 2px 8px rgba(0,0,0,0.05);
        }

        .ec-preview .imagePreview:hover {
            border-color: #6096cc;
            box-shadow: inset 0 4px 12px rgba(96, 150, 204, 0.1);
        }

        .ec-image-preview {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.3s;
        }

        .ec-image-preview:hover {
            transform: scale(1.05);
        }

        /* GridView / Table Section */
        .ec-cat-list {
            margin-bottom: 30px;
            border-radius: 12px;
            overflow: hidden;
        }

        .table-responsive {
            border-radius: 8px;
            overflow-x: auto;
            box-shadow: 0 2px 10px rgba(0,0,0,0.05);
        }

        .table {
            width: 100%;
            margin-bottom: 0;
            border-collapse: separate;
            border-spacing: 0;
        }

        .table-striped {
            background: #fff;
        }

        .table thead {
            background: linear-gradient(135deg, #6096cc 0%, #4a7ba7 100%);
        }

        .table thead th {
            color: #fff;
            font-weight: 600;
            font-size: 14px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            padding: 15px 12px;
            border: none;
            text-align: center;
        }

        .table tbody tr {
            transition: all 0.3s;
            border-bottom: 1px solid #f0f0f0;
        }

        .table tbody tr:hover {
            background: linear-gradient(90deg, #f8f9fa 0%, #e9ecef 100%);
            transform: scale(1.01);
            box-shadow: 0 4px 12px rgba(0,0,0,0.08);
        }

        .table tbody td {
            padding: 15px 12px;
            vertical-align: middle;
            text-align: center;
            color: #495057;
            font-size: 14px;
        }

        .table tbody td img {
            border-radius: 8px;
            border: 2px solid #e9ecef;
            transition: all 0.3s;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .table tbody td img:hover {
            transform: scale(1.1);
            border-color: #6096cc;
            box-shadow: 0 4px 15px rgba(96, 150, 204, 0.3);
        }

        /* LinkButton Styles */
        a[id*="LinkButton"] {
            padding: 8px 20px;
            border-radius: 6px;
            text-decoration: none;
            font-weight: 600;
            font-size: 13px;
            transition: all 0.3s;
            display: inline-block;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        a[id*="LinkButton1"] {
            background: linear-gradient(135deg, #28a745 0%, #218838 100%);
            color: #fff !important;
            box-shadow: 0 3px 10px rgba(40, 167, 69, 0.3);
        }

        a[id*="LinkButton1"]:hover {
            background: linear-gradient(135deg, #218838 0%, #1e7e34 100%);
            box-shadow: 0 5px 15px rgba(40, 167, 69, 0.5);
            transform: translateY(-2px);
        }

        a[id*="LinkButton2"] {
            background: linear-gradient(135deg, #dc3545 0%, #c82333 100%);
            color: #fff !important;
            box-shadow: 0 3px 10px rgba(220, 53, 69, 0.3);
        }

        a[id*="LinkButton2"]:hover {
            background: linear-gradient(135deg, #c82333 0%, #bd2130 100%);
            box-shadow: 0 5px 15px rgba(220, 53, 69, 0.5);
            transform: translateY(-2px);
        }

        /* Form Section */
        .form-group {
            margin-bottom: 25px;
            padding: 25px;
            background: #f8f9fa;
            border-radius: 10px;
            border-left: 4px solid #6096cc;
        }

        .col-form-label {
            font-size: 15px;
            font-weight: 700;
            color: #2c3e50;
            margin-bottom: 10px;
            display: block;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .form-control {
            padding: 14px 18px;
            font-size: 15px;
            border: 2px solid #e9ecef;
            border-radius: 8px;
            transition: all 0.3s;
            background: #fff;
            color: #495057;
            width: 100%;
        }

        .form-control:focus {
            border-color: #6096cc;
            box-shadow: 0 0 0 0.25rem rgba(96, 150, 204, 0.2);
            outline: none;
            background: #f8f9fa;
        }

        .form-control:hover {
            border-color: #6096cc;
        }

        /* Button Styles */
        .btn {
            padding: 14px 35px;
            font-size: 15px;
            font-weight: 700;
            border-radius: 8px;
            border: none;
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            cursor: pointer;
            text-transform: uppercase;
            letter-spacing: 1px;
            position: relative;
            overflow: hidden;
        }

        .btn::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 0;
            height: 0;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.3);
            transform: translate(-50%, -50%);
            transition: width 0.6s, height 0.6s;
        }

        .btn:hover::before {
            width: 300px;
            height: 300px;
        }

        .btn-primary {
            background: linear-gradient(135deg, #6096cc 0%, #4a7ba7 100%) !important;
            color: #fff !important;
            box-shadow: 0 5px 20px rgba(96, 150, 204, 0.4);
            position: relative;
            z-index: 1;
        }

        .btn-primary:hover {
            background: linear-gradient(135deg, #4a7ba7 0%, #3a6187 100%) !important;
            box-shadow: 0 8px 30px rgba(96, 150, 204, 0.6);
            transform: translateY(-3px);
        }

        .btn-primary:active {
            transform: translateY(0);
        }

        /* Validation & Messages */
        #ContentPlaceHolder2_ValidationSummary1 {
            background: linear-gradient(135deg, #fee 0%, #fdd 100%);
            border: 2px solid #fcc;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 25px;
            box-shadow: 0 3px 15px rgba(220, 53, 69, 0.2);
        }

        #ContentPlaceHolder2_ValidationSummary1 ul {
            margin: 0;
            padding-left: 25px;
        }

        #ContentPlaceHolder2_ValidationSummary1 li {
            margin-bottom: 8px;
            color: #dc3545;
            font-weight: 600;
        }

        #ContentPlaceHolder2_lblError,
        #ContentPlaceHolder2_lblResponse {
            display: block;
            margin: 20px 0;
            padding: 15px 20px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 600;
            text-align: center;
            box-shadow: 0 3px 10px rgba(0,0,0,0.1);
        }

        #ContentPlaceHolder2_lblError {
            background: linear-gradient(135deg, #fee 0%, #fdd 100%);
            border: 2px solid #fcc;
            color: #dc3545;
        }

        #ContentPlaceHolder2_lblResponse {
            background: linear-gradient(135deg, #d4edda 0%, #c3e6cb 100%);
            border: 2px solid #c3e6cb;
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

        .col-4 {
            flex: 0 0 33.333333%;
            max-width: 33.333333%;
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

            .col-4 {
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

            .ec-preview .imagePreview {
                height: 250px;
            }

            .table {
                font-size: 12px;
            }

            .table thead th,
            .table tbody td {
                padding: 10px 8px;
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

            a[id*="LinkButton"] {
                padding: 6px 12px;
                font-size: 11px;
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
            width: 28px;
            height: 28px;
        }

        .header_svg {
            filter: brightness(0) invert(1);
        }

        /* GridView Border */
        #ContentPlaceHolder2_GridView1 {
            border: 3px solid #e9ecef !important;
            border-radius: 8px;
            overflow: hidden;
        }

        /* Empty Table State */
        .table tbody:empty::after {
            content: "No categories found. Add your first category!";
            display: block;
            text-align: center;
            padding: 40px;
            color: #6c757d;
            font-style: italic;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="ec-content-wrapper">
        <div class="content">
            <div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
                <div>
                    <h1>Add Category</h1>
                    <p class="breadcrumbs"><span><a href="index.aspx">Home</a></span>
                        <span><i class="mdi mdi-chevron-right"></i></span>Categories</p>
                </div>
                <div>
                    <a href="Categories.aspx" class="btn btn-primary"> View All</a>
                </div>
            </div>
            
            <div class="row">
                <div class="col-12">
                    <div class="card card-default">
                        <div class="card-header card-header-border-bottom">
                            <h2>Add Category</h2>			
                        </div>

                        <div class="card-body">
                            <div class="row ec-vendor-uploads">
                                <div class="col-lg-4">
                                    <div class="ec-vendor-img-upload">
                                        <div class="ec-vendor-main-img">
                                            <div class="avatar-upload">
                                                <p>Category Image</p>
                                                <div class="avatar-edit">
                                                    <asp:FileUpload class="ec-image-upload" ID="fuCategoryImage" runat="server" />
                                                    <asp:HiddenField ID="hfCategoryImage" runat="server" />
                                                    <label for="ContentPlaceHolder2_fuCategoryImage">
                                                        <img src="assets/img/icons/edit.svg" class="svg_img header_svg" alt="edit" />
                                                    </label>
                                                </div>
                                                <div class="avatar-preview ec-preview">
                                                    <div class="imagePreview ec-div-preview">
                                                        <img class="ec-image-preview" src="assets/img/products/vender-upload-preview.jpg" alt="edit" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-lg-8">
                                    <div class="ec-cat-list card card-default">
                                        <div class="card-body">
                                            <div class="table-responsive">
                                                <asp:GridView ID="GridView1" class="table table-striped cart-list" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" BorderStyle="Solid" BorderWidth="3px">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Category Id">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lbl1" runat="server" Text='<%# Eval("Category_Id") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Category Image">
                                                            <ItemTemplate>
                                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Category_Image") %>' Height="91px" Width="91px" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Category Name">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lbl2" runat="server" Text='<%# Eval("Category_Name") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Update">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Category_Id") %>' CommandName="cmd_update" Text="Update"></asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Delete">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Category_Id") %>' CommandName="cmd_delete" Text="Delete" ForeColor="Red"></asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <br />
                                
                                <div class="form-group row">
                                    <label for="text" class="col-12 col-form-label">Category Name</label> 
                                    <div class="col-4">
                                        <asp:TextBox class="form-control here slug-title" ID="txtCategoryName" runat="server"></asp:TextBox>
                                        <asp:HiddenField ID="hfCategoryId" runat="server" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCategoryName" ValidationGroup="AddCategoryGroup" Display="None" ErrorMessage="Please Enter a Category Details"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                
                                <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" ValidationGroup="AddCategoryGroup" runat="server" />
                                <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                                <asp:Label ID="lblResponse" runat="server" Text="" Visible="false"></asp:Label>
                                
                                <div class="row">
                                    <div class="col-12">
                                        <asp:Button class="btn btn-primary" ValidationGroup="AddCategoryGroup" BackColor="#6096cc" ForeColor="White" ID="btnAddCategory" runat="server" Text="Add Category" OnClick="btnAddCategory_Click" />
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