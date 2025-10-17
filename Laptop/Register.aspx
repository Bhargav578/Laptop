<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Laptop.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
      <!-- Start Register -->
  <section class="ec-page-content section-space-p">
      <div class="container">
          <div class="row">
              <div class="col-md-12 text-center">
                  <div class="section-title">
                      <h2 class="ec-bg-title">Register</h2>
                      <h2 class="ec-title">Register</h2>
                  </div>
              </div>
              <div class="ec-register-wrapper">
                  <div class="ec-register-container">
                      <div class="ec-register-form">
                          <asp:Label ID="lblRegisterError" runat="server" ForeColor="Red"></asp:Label>
                          <asp:Label ID="lblRegisterResponse" runat="server" Font-Bold="True" ForeColor="#00CC00"></asp:Label>
                          <div class="row">
                               <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />

                              <span class="ec-register-wrap ec-register-half col">
                                  <label>First Name*</label>
                                  <asp:TextBox ID="txtFirstName" placeholder="Enter your first name" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator1" ControlToValidate="txtFirstName" runat="server" ErrorMessage="Please Enter Your First Name..." ForeColor="Red"></asp:RequiredFieldValidator>
                               </span>
                              <span class="col">
                                  <label>Last Name*</label>
                                  <asp:TextBox ID="txtLastName" placeholder="Enter your last name" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator2" ControlToValidate="txtLastName" runat="server" ErrorMessage="Please Enter Your Last Name..." ForeColor="Red"></asp:RequiredFieldValidator>
                              </span>
                          </div>
                          <div class="row">
                              <span class="ec-register-wrap ec-register-half col">
                                  <label>Email*</label>
                                  <asp:TextBox ID="txtEmail" placeholder="Enter your Email Id" TextMode="Email" runat="server"></asp:TextBox>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter a Valid Email Address..." ControlToValidate="txtEmail"  ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None" ></asp:RegularExpressionValidator>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtEMail" Display="None" runat="server" ErrorMessage="Please Enter a Email..."></asp:RequiredFieldValidator>
                              </span>
                              <span class="ec-register-wrap ec-register-half col">
                                  <label>Phone Number*</label>
                                  <asp:TextBox ID="txtMobileNo" TextMode="Number" placeholder="Enter your Mobile No" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="None" maxlength="10" minlength="10" ControlToValidate="txtMobileNo"  runat="server" ErrorMessage="Please Enter Your Mobile No..." ForeColor="Red" ></asp:RequiredFieldValidator>
                              </span>
                          </div>
                          <div class="row">
                              <span class="ec-register-wrap ec-register-half col">
                                  <label>Password*</label>
                                  <asp:TextBox ID="txtPassword" TextMode="Password" placeholder="Enter your Password" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="None"  ControlToValidate="txtPassword"  runat="server" ErrorMessage="Please Enter a Password..." ForeColor="Red"></asp:RequiredFieldValidator>
                              </span>
                              <span class="ec-register-wrap ec-register-half col">
                                  <label>Confirm Password*</label>
                                  <asp:TextBox ID="txtCPassword" TextMode="Password" placeholder="Enter your Confirm Password" runat="server"></asp:TextBox>
                                  <asp:CompareValidator ID="CompareValidator1" Display="None" runat="server" ErrorMessage="CompareValidator" ControlToCompare="txtPassword" ControlToValidate="txtCPassword" ForeColor="Red"></asp:CompareValidator>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="None" ControlToValidate="txtCPassword"  runat="server" ErrorMessage="Both Password Doesn't Match..." ForeColor="Red"></asp:RequiredFieldValidator>
                              </span>
                          </div>
                              <span class="ec-register-wrap ec-register-btn">
                                  <asp:Button ID="btnRegister" class="btn btn-primary" runat="server" Text="Register" BackColor="#0000CC" ForeColor="White" OnClick="btnRegister_Click"  />
                              </span>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section>
  <!-- End Register -->
</asp:Content>

