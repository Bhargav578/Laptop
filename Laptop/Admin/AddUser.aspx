<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="Laptop.Admin.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
      <!-- CONTENT WRAPPER -->
			<div class="ec-content-wrapper">
				<div class="content">
					<div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
						<div>
							<h1>Add User</h1>
							<p class="breadcrumbs"><span><a href="index.aspx">Home</a></span>
								<span><i class="mdi mdi-chevron-right"></i></span>Users</p>
						</div>
						<div>
							<a href="Users.aspx" class="btn btn-primary"> View All Users
							</a>
						</div>
					</div>

					<div class="col-12">
						<div class="card card-default">
							<div class="card-header card-header-border-bottom">
								<h2>Add User</h2>			
							</div>
							<asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="AddUserGroup" ForeColor="Red" runat="server" />
							<asp:Label ID="lblResponse" ForeColor="#33cc33"  runat="server" Text=""></asp:Label>
							<div class="card-body">
								<div class="row ec-vendor-uploads">
									
									<div class="col-lg-12">
										<div class="ec-vendor-upload-detail">
											<div class="row g-3">
												<div class="col-md-6">
													<label for="" class="col-12 col-form-label">First Name</label> 
													<div class="col-12">
														<asp:TextBox class="form-control here set-slug" ID="txtFirstName" runat="server"></asp:TextBox>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtFirstName" ValidationGroup="AddUserGroup" Display="None" runat="server" ErrorMessage="Enter a First Name..."></asp:RequiredFieldValidator>
													</div>
												</div>
										        <div class="col-md-6">
													<label for="" class="col-12 col-form-label">Last Name</label> 
													<div class="col-12">
														<asp:TextBox class="form-control here set-slug" ID="txtLastName" runat="server"></asp:TextBox>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtLastName" ValidationGroup="AddUserGroup" Display="None" runat="server" ErrorMessage="Enter a Last Name..."></asp:RequiredFieldValidator>
													</div>
												</div>
											</div>
											<div class="row g-3">
												<div class="col-md-6">
													<label for="" class="col-12 col-form-label">Email</label> 
													<div class="col-12">
														<asp:TextBox class="form-control here set-slug" TextMode="Email" ID="txtEmail" runat="server"></asp:TextBox>
														<asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtEmail" Display="None" runat="server" ValidationGroup="AddUserGroup" ErrorMessage="Please Enter Valid Email Address..." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtEmail" ValidationGroup="AddUserGroup" Display="None" runat="server" ErrorMessage="Enter a Email Address ..."></asp:RequiredFieldValidator>
													</div>
												</div>
										        <div class="col-md-6">
													<label for="" class="col-12 col-form-label">Mobile Number</label> 
													<div class="col-12">
														<asp:TextBox class="form-control here set-slug" ID="txtMobileNo" TextMode="Number" runat="server"></asp:TextBox>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtMobileNo" ValidationGroup="AddUserGroup" Display="None" runat="server" ErrorMessage="Enter a Mobile No..."></asp:RequiredFieldValidator>
													</div>
												</div>
											</div>
											<div class="row g-3">
												<div class="col-md-6">
													<label for="" class="col-12 col-form-label">Password</label> 
													<div class="col-12">
														<asp:TextBox class="form-control here set-slug" ID="txtPassword" runat="server"></asp:TextBox>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPassword" ValidationGroup="AddUserGroup" Display="None" runat="server" ErrorMessage="Enter a Password..."></asp:RequiredFieldValidator>
													</div>
												</div>
												<div class="col-md-6">
													<label for="" class="col-12 col-form-label">User Role Details</label>
													<asp:DropDownList class="form-select" ID="ddlUserRole" runat="server">
                                                        <asp:ListItem Value="0">User</asp:ListItem>
                                                        <asp:ListItem Value="1">Admin</asp:ListItem>
                                                    </asp:DropDownList>
													<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="ddlUserRole" ValidationGroup="AddUserGroup" Display="None" runat="server" ErrorMessage="Select User Role or Admin Role"></asp:RequiredFieldValidator>
												</div>
											</div>=
											<br>
											<div class="row g-3">	
												<div class="col-md-12">
													<asp:Button class="btn btn-primary" ValidationGroup="AddUserGroup" BackColor="#6096cc" ForeColor="White" ID="btnAddUser" runat="server" Text="Add User" OnClick="btnAddUser_Click" />
												</div>
											<//div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div> <!-- End Content -->
			</div> <!-- End Content Wrapper -->
</div>
</asp:Content>

