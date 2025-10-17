<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="Laptop.Admin.UpdateProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!-- CONTENT WRAPPER -->
			<div class="ec-content-wrapper">
				<div class="content">
					<div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
						<div>
							<h1>Update Product</h1>
							<p class="breadcrumbs"><span><a href="index.aspx">Home</a></span>
								<span><i class="mdi mdi-chevron-right"></i></span>Update Product</p>
						</div>
						<div>
							<a href="Products.aspx" class="btn btn-primary"> View All
							</a>
						</div>
					</div>

					<div class="row">
						<div class="col-12">
							<div class="card card-default">
								<div class="card-header card-header-border-bottom">
									<h2>Update Product</h2>			
								</div>

								<div class="card-body">
									<div class="row ec-vendor-uploads">
										<div class="col-lg-4">
											<div class="ec-vendor-img-upload">
												<div class="ec-vendor-main-img">
													<div class="avatar-upload"><p>Laptop Image</p>
														<div class="avatar-edit">
															<asp:FileUpload class="ec-image-upload" ID="fuLaptopImage" runat="server" />
															<label for="fuLaptopImage"><img
																	src="assets/img/icons/edit.svg"
																	class="svg_img header_svg" alt="edit" /></label>
														</div>
														<div class="avatar-preview ec-preview">
															<div class="imagePreview ec-div-preview">
																<asp:Image ID="imgView" runat="server" class="ec-image-preview"
																	alt="edit" />
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
														<asp:ValidationSummary ValidationGroup="UpdateProductGroup" ForeColor="Red" ID="ValidationSummary1" runat="server" />

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
															<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtLaptopModel" ValidationGroup="UpdateProductGroup" Display="None" runat="server" ErrorMessage="Enter a Laptop Model"></asp:RequiredFieldValidator>
														</div>
													</div>
													<div class="col-md-6">
														<label >RAM</label>
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
														<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="ddlRAM" ValidationGroup="UpdateProductGroup" Display="None" runat="server" ErrorMessage="Enter a RAM in GB Format"></asp:RequiredFieldValidator>
													</div>
													<div class="col-md-6">
														<label >SSD</label>
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
														<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="ddlSSD" ValidationGroup="UpdateProductGroup" Display="None" runat="server" ErrorMessage="Enter a SSD in GB Format"></asp:RequiredFieldValidator>
													</div>
													<div class="col-md-6">
														<label >HDD</label>
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
														<asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="ddlHDD" ValidationGroup="UpdateProductGroup" Display="None" runat="server" ErrorMessage="Enter a HDD in GB Format"></asp:RequiredFieldValidator>
													</div>
													<div class="col-md-6">
														<label >Display Size</label>
														<asp:TextBox class="form-control" ID="txtDisplaySize"   runat="server"></asp:TextBox>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtDisplaySize" ValidationGroup="UpdateProductGroup" Display="None" runat="server" ErrorMessage="Enter a Display SIze"></asp:RequiredFieldValidator>
													</div>
													<div class="col-md-6">
														<label >Graphic Card</label>
														<asp:DropDownList class="form-select" ID="ddlGraphicCard" runat="server">
                                                            <asp:ListItem>1 GB</asp:ListItem>
                                                            <asp:ListItem>2 GB</asp:ListItem>
															<asp:ListItem>4 GB</asp:ListItem>
															<asp:ListItem>6 GB</asp:ListItem>
                                                            <asp:ListItem>8 GB</asp:ListItem>
                                                        </asp:DropDownList>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator7"  ControlToValidate="ddlGraphicCard" ValidationGroup="UpdateProductGroup" Display="None" runat="server" ErrorMessage="Enter a Grpahic Card in GB Format"></asp:RequiredFieldValidator>
													</div>
													<div class="col-md-12">
														<label class="form-label">Description</label>
														<asp:TextBox class="form-control" Rows="3"  ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="txtDescription" ValidationGroup="UpdateProductGroup" Display="None" runat="server" ErrorMessage="Enter a Description"></asp:RequiredFieldValidator>
													</div>
													<div class="col-md-6">
														<label >Cost Price</label>
														<asp:TextBox class="form-control" TextMode="Number" ID="txtCostPrice" runat="server"></asp:TextBox>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="txtCostPrice" ValidationGroup="UpdateProductGroup" Display="None" runat="server" ErrorMessage="Enter a Laptop Cost Price"></asp:RequiredFieldValidator>
													</div>
													<div class="col-md-6">
														<label class="form-label">Sale Price<span>( In INR(₹)
																)</span></label>
														<asp:TextBox class="form-control" TextMode="Number" ID="txtPrice" runat="server"></asp:TextBox>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="txtPrice" ValidationGroup="UpdateProductGroup" Display="None" runat="server" ErrorMessage="Enter a Price of Laptop"></asp:RequiredFieldValidator>
													</div>
													<div class="col-md-6">
														<label >Discount</label>
														<asp:TextBox class="form-control" TextMode="Number"  ID="txtDiscount" runat="server"></asp:TextBox>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="txtDiscount" ValidationGroup="UpdateProductGroup" Display="None" runat="server" ErrorMessage="Enter a Discount in Percentage(%)..."></asp:RequiredFieldValidator>
													</div>
													<div class="col-md-6">
														<label >Quantity</label>
														<asp:TextBox class="form-control"  TextMode="Number" ID="txtQuantity" runat="server"></asp:TextBox>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtQuantity" ValidationGroup="UpdateProductGroup" Display="None" runat="server" ErrorMessage="Enter a Quantity..."></asp:RequiredFieldValidator>
													</div>
													<br>
													<asp:HiddenField ID="hfImage" runat="server" />
													<asp:HiddenField ID="hfProductId" runat="server" />
													<div class="col-md-12">
														<asp:Button class="btn btn-primary" ValidationGroup="UpdateProductGroup" BackColor="#6096cc" ForeColor="White" ID="btnUpdateProduct" runat="server" Text="Update Product" OnClick="btnUpdateProduct_Click" />
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


