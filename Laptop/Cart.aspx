<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Laptop.Cart" %>
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
                            <h2 class="ec-breadcrumb-title">Cart</h2>
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <!-- ec-breadcrumb-list start -->
                            <ul class="ec-breadcrumb-list">
                                <li class="ec-breadcrumb-item"><a href="index.html">Home</a></li>
                                <li class="ec-breadcrumb-item active">Cart</li>
                            </ul>
                            <!-- ec-breadcrumb-list end -->

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Ec breadcrumb end -->

    <!-- Ec cart page -->
    <section class="ec-page-content section-space-p">
        <div class="container">
            <div class="row">
                <div class="ec-cart-leftside col-lg-8 col-md-12 ">
                    <div class="ec-cart-content">
                        <div class="ec-cart-inner">
                            <asp:GridView ID="GridView1" class="table table-striped cart-list" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating"  >
                                <Columns>
                                    <asp:TemplateField HeaderText="Image">
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl='<%# Eval("Image") %>' Width="50px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Brand">
                                        <ItemTemplate>
                                            <asp:Label ID="lblBrandName" runat="server" Text='<%# Eval("Brand_Name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Model">
                                        <ItemTemplate>
                                            <asp:Label ID="lblLaptopModel" runat="server" Text='<%# Eval("Laptop_Model") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Price">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPrice" runat="server" Text='<%# Convert.ToInt32(Eval("Price")) %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Quantity">
                                        <ItemTemplate>
                                            <div class="numbers-row row">
                                                <div class="dec button_inc col-2 font-weight-bold" onclick="decrementQuantity(this)">-</div>
						                    	<asp:TextBox ID="txtQuantity" runat="server" TextMode="Number" Text='<%# Eval("Quantity") %>' class="qty2  col-6" name="quantity_1" ></asp:TextBox>
						                    	<div class="inc button_inc col-2 font-weight-bold" onclick="incrementQuantity(this)">+</div>
						                    </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Sub-Total">
                                        <ItemTemplate>
                                            <asp:Label ID="lblSubTotal" runat="server" Text='<%# Convert.ToDouble(Eval("Price")) * Convert.ToInt32(Eval("Quantity")) %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Update">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton4" runat="server"  CommandName="cmd_edit" CommandArgument='<%# Eval("Product_Id") + ";" + Container.DataItemIndex  %>' >Update</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Remove">
                                         <ItemTemplate>
                                             <asp:LinkButton ID="LinkButton3" runat="server" CommandName="cmd_delete" CommandArgument='<%# Eval("Product_Id") + ";" + Container.DataItemIndex %>' >Delete</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            
                                <div class="row">
                                    <div class="col-9" >
                                    </div>
                                    <div class="col-3">
                                        <asp:Button ID="btnCheckout" class="btn btn-primary"  Text="Check Out" runat="server" OnClick="btnCheckout_Click"  />
                                    </div>
                                </div>
                            
                        </div>
                    </div>
                    <!--cart content End -->
                </div>
                <!-- Sidebar Area Start -->
                <div class="ec-cart-rightside col-lg-4 col-md-12">
                    <div class="ec-sidebar-wrap">
                        <!-- Sidebar Summary Block -->
                        <div class="ec-sidebar-block">
                            <div class="ec-sb-block-content">
                                <div class="ec-cart-summary-bottom">
                                    <div class="ec-cart-summary">
                                        <div>
                                            <span class="text-left">Sub-Total</span>
                                             <span class="text-right">
                                                 ₹<asp:Label ID="lblSubTotal" runat="server" Text=""></asp:Label>.00
                                             </span>
                                        </div>
                                        <div>
                                            <span class="text-left">Shipping Charges</span>
                                            <span class="text-right">
                                                ₹<asp:Label ID="lblShipping" runat="server" Text="50"></asp:Label>.00
                                            </span>
                                        </div>
                                       <%-- <div>
                                            <span class="text-left">Coupan Discount</span>
                                            <span class="text-right"><a class="ec-cart-coupan">Apply Coupan</a></span>
                                        </div>
                                        <div class="ec-cart-coupan-content">
                                            <form class="ec-cart-coupan-form" name="ec-cart-coupan-form" method="post"
                                                action="#">
                                                <input class="ec-coupan" type="text" required=""
                                                    placeholder="Enter Your Coupan Code" name="ec-coupan" value="">
                                                <button class="ec-coupan-btn button btn-primary" type="submit"
                                                    name="subscribe" value="">Apply</button>
                                            </form>
                                        </div>--%>
                                        <div class="ec-cart-summary-total">
                                            <span class="text-left">Total Amount</span>
                                             <span class="text-right">
                                                 ₹<asp:Label ID="lblTotalAmount" runat="server" Text=""></asp:Label>.00
                                             </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
    <script type="text/javascript">
        function incrementQuantity(element) {
            var textBox = element.parentNode.querySelector('input[type="number"]');
            textBox.value = parseInt(textBox.value) + 1;
        }

        function decrementQuantity(element) {
            var textBox = element.parentNode.querySelector('input[type="number"]');
            var value = parseInt(textBox.value) - 1;
            if (value >= 1) {
                textBox.value = value;
            }
        }
    </script>
</asp:Content>

