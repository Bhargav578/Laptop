<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Laptop.SignIn" %>
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
                          <h2 class="ec-breadcrumb-title">Login</h2>
                      </div>
                      <div class="col-md-6 col-sm-12">
                          <!-- ec-breadcrumb-list start -->
                          <ul class="ec-breadcrumb-list">
                              <li class="ec-breadcrumb-item"><a href="index.aspx">Home</a></li>
                              <li class="ec-breadcrumb-item active">Login</li>
                          </ul>
                          <!-- ec-breadcrumb-list end -->
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <!-- Ec breadcrumb end -->

  <!-- Ec login page -->
  <section class="ec-page-content section-space-p">
      <div class="container">
          <div class="row">
              <div class="col-md-12 text-center">
                  <div class="section-title">
                      <h2 class="ec-bg-title">Log In</h2>
                      <h2 class="ec-title">Log In</h2>
                      <p class="sub-title mb-3">Best place to buy and sell digital products</p>
                  </div>
              </div>
              <div class="ec-login-wrapper" style="max-width: 530px; margin: 0 auto 0;">
                  <div class="ec-login-container">
                      <div class="ec-login-form">
                          <asp:Label ID="lblLoginResult" ForeColor="Red" BackColor="White" runat="server"></asp:Label>
                          <form action="#" method="post">
                              <span class="ec-login-wrap row">
                                  <label>Email Address*</label>
                                  <asp:TextBox ID="txtLoginEmail" TextMode="Email" runat="server" placeholder="Enter your email add..."></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLoginEmail" ValidationGroup="Login" ErrorMessage="Please Enter Email Address" Display="Static" ForeColor="Red"></asp:RequiredFieldValidator>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtLoginEmail" ValidationGroup="Login"  Display="Dynamic" ErrorMessage="Enter Valid Email Address..." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                              </span>
                              <span class="ec-login-wrap row">
                                  <label>Password*</label>
                                  <asp:TextBox ID="txtLoginPassword" TextMode="Password" placeholder="Enter your password" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtLoginPassword" runat="server" ValidationGroup="Login" Display="Dynamic" ForeColor="Red" ErrorMessage="Enter Your Password"></asp:RequiredFieldValidator>
                              </span>
                              <span class="ec-login-wrap ec-login-fp">
                                  <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#">Forgot Password?</a></label>
                              </span>
                              <span class="ec-login-wrap ec-login-btn">
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Button class="btn btn-primary" ID="btnLogin" runat="server"  Text="Login" BackColor="#0000CC" ValidationGroup="Login" CssClass="btn btn-primary" ForeColor="White" OnClick="btnLogin_Click" />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Button class="btn btn-primary" ID="Button1" runat="server" BackColor="Black" ForeColor="White" Text="Register" PostBackUrl="~/Register.aspx" OnClick="Button1_Click1" />
                              </span>
                          </form>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section>
</asp:Content>


