<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Laptop.Admin.Products" %>
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
							<a href="AddProduct.aspx" class="btn btn-primary"> Add Porduct</a>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="card card-default">
								<div class="card-body">
									<div class="table-responsive">
										<asp:GridView class="table table-striped cart-list" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand" >
                                            <Columns>
                                                <asp:TemplateField HeaderText="Laptop Id"> 
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Laptop_Id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Image">
													<ItemTemplate>
									                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Image") %>' Height="78px" Width="83px" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Category Name">
													<ItemTemplate>
														<asp:Label ID="Label2" runat="server" Text='<%# Eval("Category_Name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Brand Name">
													<ItemTemplate>
														<asp:Label ID="Label3" runat="server" Text='<%# Eval("Brand_Name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Model">
													<ItemTemplate>
														<asp:Label ID="Label4" runat="server" Text='<%# Eval("Laptop_Model") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="RAM">
													<ItemTemplate>
														<asp:Label ID="Label5" runat="server" Text='<%# Eval("RAM") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="SSD">
													<ItemTemplate>
														<asp:Label ID="Label6" runat="server" Text='<%# Eval("SSD") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="HDD">
													<ItemTemplate>
														<asp:Label ID="Label7" runat="server" Text='<%# Eval("HDD") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Display">
													<ItemTemplate>
														<asp:Label ID="Label8" runat="server" Text='<%# Eval("Display_Size") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Graphic Card">
													<ItemTemplate>
														<asp:Label ID="Label9" runat="server" Text='<%# Eval("Graphic_Card") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Description">
													<ItemTemplate>
														<asp:Label ID="Label10" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Cost Price">
													<ItemTemplate>
														<asp:Label ID="Label11" runat="server" Text='<%# Eval("Cost_Price") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Sale Price">
													<ItemTemplate>
														<asp:Label ID="Label12" runat="server" Text='<%# Eval("Sale_Price") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Discount">
													<ItemTemplate>
														<asp:Label ID="Label13" runat="server" Text='<%# Eval("Discount") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Qunatity">
													<ItemTemplate>
														<asp:Label ID="Label14" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Upload Date">
													<ItemTemplate>
														<asp:Label ID="Label15" runat="server" Text='<%# Eval("Upload_Date") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Sold Qunatity">
													<ItemTemplate>
														<asp:Label ID="Label16" runat="server" Text='<%# Eval("Sold_Quantity") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Update">
													<ItemTemplate>
														<asp:LinkButton ID="LinkButton1" Text="Update" CommandName="cmd_update" CommandArgument='<%# Eval("Laptop_Id") %>' runat="server"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
												<asp:TemplateField HeaderText="Delete">
													<ItemTemplate>
														<asp:LinkButton ID="LinkButton2" Text="Delete" CommandName="cmd_delete" CommandArgument='<%# Eval("Laptop_Id") %>' runat="server" ForeColor="Red"></asp:LinkButton>
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



