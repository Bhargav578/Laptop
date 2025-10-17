<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Laptop.Contact" %>
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
                         <h2 class="ec-breadcrumb-title">Contact Us</h2>
                     </div>
                     <div class="col-md-6 col-sm-12">
                         <!-- ec-breadcrumb-list start -->
                         <ul class="ec-breadcrumb-list">
                             <li class="ec-breadcrumb-item"><a href="Default.aspx">Home</a></li>
                             <li class="ec-breadcrumb-item active">Contact Us</li>
                         </ul>
                         <!-- ec-breadcrumb-list end -->
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </div>
 <!-- Ec breadcrumb end -->


 <!-- Ec Contact Us page -->
 <section class="ec-page-content section-space-p">
     <div class="container">
         <div class="row">
             <div class="ec-common-wrapper">
                 <div class="ec-contact-leftside">
                     <div class="ec-contact-container">
                         <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="ContactUs" ForeColor="Red" runat="server" />
                         <asp:Label ID="lblResponse" runat="server" ForeColor="Green" Font-Bold="True"></asp:Label>
                         <div class="ec-contact-form">
                             <form action="#" method="post">
                                 <span class="ec-contact-wrap">
                                     <label>Name*</label>
                                     <asp:TextBox ID="txtName" runat="server" placeholder="Enter your name"></asp:TextBox>
                                     <asp:RequiredFieldValidator ControlToValidate="txtName"  ValidationGroup="ContactUs" ID="RequiredFieldValidator1" runat="server" Display="None" ErrorMessage="Please Enter Name..."></asp:RequiredFieldValidator>
                                 </span>
                                 <span class="ec-contact-wrap">
                                     <label>Email*</label>
                                     <asp:TextBox ID="txtEmail" TextMode="Email" placeholder="Enter your email address" runat="server"></asp:TextBox>
                                     <asp:RegularExpressionValidator ControlToValidate="txtEmail" ValidationGroup="ContactUs" ID="RegularExpressionValidator1" Display="None" runat="server" ErrorMessage="Please Enter a Valid Email Address..."  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                     <asp:RequiredFieldValidator ControlToValidate="txtEmail" ValidationGroup="ContactUs" ID="RequiredFieldValidator3" Display="None"  runat="server"   ErrorMessage="Please Enter Email Address..."></asp:RequiredFieldValidator>
                                 </span>
                                 <span class="ec-contact-wrap">
                                     <label>Phone Number*</label>
                                     <asp:TextBox ID="txtMobileNo" TextMode="Number" placeholder="Enter your phone number" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ControlToValidate="txtMobileNo" ID="RequiredFieldValidator4" ValidationGroup="ContactUs" Display="None" runat="server" ErrorMessage="Enter Your Mobile No..."></asp:RequiredFieldValidator>
                                 </span>
                                  <span class="ec-contact-wrap">
                                     <label>Subject*</label>
                                     <asp:TextBox ID="txtSubject" runat="server" placeholder="Enter Syour Subject"></asp:TextBox>
                                     <asp:RequiredFieldValidator ControlToValidate="txtSubject" ValidationGroup="ContactUs" ID="RequiredFieldValidator2" runat="server" Display="None" ErrorMessage="Please Enter Subject..."></asp:RequiredFieldValidator>
                                 </span>
                                 <span class="ec-contact-wrap">
                                     <label>Comments/Questions*</label>
                                     <asp:TextBox ID="txtMessage" Rows="4" TextMode="MultiLine" placeholder="Please leave your comments here.." runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ControlToValidate="txtMessage" ID="RequiredFieldValidator5" ValidationGroup="ContactUs" Display="None" runat="server" ErrorMessage="Please Enter Your Question/Message..."></asp:RequiredFieldValidator>
                                 </span>
                                 <%--<span class="ec-contact-wrap ec-recaptcha">
                                     <span class="g-recaptcha"
                                         data-sitekey="6LfKURIUAAAAAO50vlwWZkyK_G2ywqE52NU7YO0S"
                                         data-callback="verifyRecaptchaCallback"
                                         data-expired-callback="expiredRecaptchaCallback"></span>
                                     <asp:TextBox class="form-control d-none" ID="txt" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txt" ValidationGroup="ContactUs" Display="None" runat="server" ErrorMessage="Enter Comment or Question..."></asp:RequiredFieldValidator>
                                     <span class="help-block with-errors"></span>
                                 </span>--%>
                                 <span class="ec-contact-wrap ec-contact-btn">
                                     <asp:Button ID="btnSendMessage" ForeColor="White" BackColor="Blue" ValidationGroup="ContactUs"  class="btn btn-primary" runat="server" Text="Send Message" OnClick="btnSendMessage_Click" />
                                 </span>
                             </form>
                         </div>
                     </div>
                 </div>
                 <div class="ec-contact-rightside">
                     <div class="ec_contact_map">
                         <div class="ec_map_canvas">
                             <iframe id="ec_map_canvas"
                                 src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d71263.65594328841!2d144.93151478652146!3d-37.8734290780509!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sus!4v1615963387757!5m2!1sen!2sus"></iframe>
                             <a href="https://sites.google.com/view/maps-api-v2/mapv2"></a>
                         </div>
                     </div>
                     <div class="ec_contact_info">
                         <h1 class="ec_contact_info_head">Contact us</h1>
                         <ul class="align-items-center">
                             <li class="ec-contact-item"><i class="ecicon eci-map-marker"
                                     aria-hidden="true"></i><span>Address :</span>RK PRIME Near Nanamava Circle 150 foot Ring Road, Rajkot. 
                                    Gujarat, INDIA</li>  
                             <li class="ec-contact-item align-items-center"><i class="ecicon eci-phone"
                                     aria-hidden="true"></i><span>Call Us :</span><a href="tel:+91 9737074939">+91 97370
                                     74939</a></li>
                             <li class="ec-contact-item align-items-center"><i class="ecicon eci-envelope"
                                     aria-hidden="true"></i><span>Email :</span><a
                                     href="ekkalaptopstore@gmail.com">ekkalaptopstore@gmail.com</a></li>
                         </ul>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </section>
</asp:Content>

