<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Laptop.Admin.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <!-- CONTENT WRAPPER -->
			<div class="ec-content-wrapper">
				<div class="content">
					<div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
						<div>
							<h1>Products</h1>
							<p class="breadcrumbs"><span><a href="index.aspx">Home</a></span>
								<span><i class="mdi mdi-chevron-right"></i></span>Products</p>
						</div>
						<div>
							<a href="AddUser.aspx" class="btn btn-primary"> Add User</a>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="card card-default">
								<div class="card-body">
									<div class="table-responsive">
										<asp:GridView class="table table-striped cart-list" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand"  >
                                            <Columns>
                                                <asp:TemplateField HeaderText="User Id"> 
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label0" runat="server" Text='<%# Eval("User_Id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="First Name">
													<ItemTemplate>
														<asp:Label ID="Label1" runat="server" Text='<%# Eval("First_Name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Last Name">
													<ItemTemplate>
														<asp:Label ID="Label2" runat="server" Text='<%# Eval("Last_Name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Email">
													<ItemTemplate>
														<asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Mobile No">
													<ItemTemplate>
														<asp:Label ID="Label4" runat="server" Text='<%# Eval("Mobile_No") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Password">
													<ItemTemplate>
														<asp:Label ID="Label5" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="User Role Id">
													<ItemTemplate>
														<asp:Label ID="Label6" runat="server" Text='<%# Eval("User_Role_Id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Update">
													<ItemTemplate>
														<asp:LinkButton ID="LinkButton1" Text="Update" CommandName="cmd_update" CommandArgument='<%# Eval("User_Id") %>' runat="server"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Delete">
													<ItemTemplate>
														<asp:LinkButton ID="LinkButton2" Text="Delete" CommandName="cmd_delete" CommandArgument='<%# Eval("User_Id") %>' runat="server" ForeColor="Red"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div> <!-- End Content -->
			</div> <!-- End Content Wrapper -->
</asp:Content>

