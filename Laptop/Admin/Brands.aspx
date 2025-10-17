<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Brands.aspx.cs" Inherits="Laptop.Admin.Brands" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="ec-content-wrapper">
				<div class="content">
					<div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
						<div>
							<h1>Add Brand</h1>
							<p class="breadcrumbs"><span><a href="index.aspx">Home</a></span>
								<span><i class="mdi mdi-chevron-right"></i></span>Brands</p>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="card card-default">
								<div class="card-header card-header-border-bottom">
									<h2>Add Brand</h2>			
								</div>

								<div class="card-body">
									<div class="row ec-vendor-uploads">
										<div class="col-lg-4">
											<div class="ec-vendor-img-upload">
												<div class="ec-vendor-main-img">
													<div class="avatar-upload"><p>Brand Image</p>
														<div class="avatar-edit">
															<asp:FileUpload class="ec-image-upload" ID="fuBrandImage" runat="server" />
															<asp:HiddenField ID="hfBrandImage" runat="server" />
															<label for="fuBrandImage"><img
																	src="assets/img/icons/edit.svg"
																	class="svg_img header_svg" alt="edit" /></label>
														</div>
														<div class="avatar-preview ec-preview">
															<div class="imagePreview ec-div-preview">
																<img class="ec-image-preview"
																	src="assets/img/products/vender-upload-preview.jpg"
																	alt="edit" />
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
														<asp:GridView ID="GridView1" class="table table-striped cart-list" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Brand Id">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Brand_Id") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Brand Image">
																	<ItemTemplate>
																		<asp:Image ID="Image1" ImageUrl='<%# Eval("Brand_Image") %>' Height="91px" Width="91px" runat="server" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Brand Name">
																	<ItemTemplate>
                                                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Brand_Name") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                               
                                                                <asp:TemplateField HeaderText="Update">
																	<ItemTemplate>
																		<asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Brand_Id") %>' CommandName="cmd_update" Text="Update"></asp:LinkButton>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Delete">
																	<ItemTemplate>
																		<asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Brand_Id") %>' CommandName="cmd_delete" ForeColor="Red" Text="Delete"></asp:LinkButton>
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
												<label for="text" class="col-12 col-form-label">Brand Name</label> 
												<div class="col-4">
													<asp:TextBox class="form-control here slug-title" ID="txtBrandName" runat="server"></asp:TextBox>
													<asp:HiddenField ID="hfBrandId" runat="server" />
													<asp:RequiredFieldValidator runat="server"  ControlToValidate="txtBrandName" ValidationGroup="AddBrandGroup" Display="None" ErrorMessage="Please Enter a Brand Details"></asp:RequiredFieldValidator>
												</div>
										</div>
										<asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
										<asp:Label ID="lblResponse" runat="server" Text="" ></asp:Label>
										<asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" ValidationGroup="AddBrandGroup" runat="server" />
										<div class="row">
											<div class="col-12">
													<asp:Button class="btn btn-primary" ValidationGroup="AddBrandGroup" BackColor="#6096cc" ForeColor="White" ID="btnAddBrand" runat="server" Text="Add Brand" OnClick="btnAddBrand_Click" />
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


