using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Laptop.Admin
{
    public partial class UpdateProduct : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadBrands();
                loadCategories();
                loadData();
            }
        }

        // --- Load Brand Dropdown ---
        void loadBrands()
        {
            getcon();
            string query = "SELECT Brand_Id, Brand_Name FROM Brand_Details_tbl WHERE Is_Deleted = 0";
            da = new SqlDataAdapter(query, con);
            ds = new DataSet();
            da.Fill(ds);
            ddlBrandId.Items.Clear();
            ddlBrandId.Items.Add(new ListItem("-- Select Brand --", "0"));
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                ddlBrandId.Items.Add(new ListItem(dr["Brand_Name"].ToString(), dr["Brand_Id"].ToString()));
            }
              
        }

        // --- Load Category Dropdown ---
        void loadCategories()
        {
            getcon();
            string query = "SELECT Category_Id, Category_Name FROM Category_Details_tbl WHERE Is_Deleted = 0";
            da = new SqlDataAdapter(query, con);
            ds = new DataSet();
            da.Fill(ds);
            ddlCategoryId.Items.Clear();
            ddlCategoryId.Items.Add(new ListItem("-- Select Category --", "0"));
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                ddlCategoryId.Items.Add(new ListItem(dr["Category_Name"].ToString(), dr["Category_Id"].ToString()));
            }
              
        }

        // --- Load Product Data for Update ---
        void loadData()
        {
            int productId = Convert.ToInt32(Request.QueryString["productId"]);
            getcon();
            string query = "SELECT Image, Category_Id, Brand_Id, Laptop_Model, RAM, SSD, HDD, Display_Size, Graphic_Card, Description, Cost_Price, Sale_Price, Discount, Quantity " +
                           "FROM Laptop_Details_tbl WHERE Laptop_Id = " + productId;
            da = new SqlDataAdapter(query, con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                DataRow dr = ds.Tables[0].Rows[0];
                imgView.ImageUrl = dr["Image"].ToString();
                ddlCategoryId.SelectedValue = dr["Category_Id"].ToString();
                ddlBrandId.SelectedValue = dr["Brand_Id"].ToString();
                txtLaptopModel.Text = dr["Laptop_Model"].ToString();
                ddlRAM.SelectedValue = dr["RAM"].ToString();
                ddlSSD.SelectedValue = dr["SSD"].ToString();
                ddlHDD.SelectedValue = dr["HDD"].ToString();
                txtDisplaySize.Text = dr["Display_Size"].ToString();
                ddlGraphicCard.SelectedValue = dr["Graphic_Card"].ToString();
                txtDescription.Text = dr["Description"].ToString();
                txtCostPrice.Text = dr["Cost_Price"].ToString();
                txtPrice.Text = dr["Sale_Price"].ToString();
                txtDiscount.Text = dr["Discount"].ToString();
                txtQuantity.Text = dr["Quantity"].ToString();

                hfImage.Value = dr["Image"].ToString();
                hfProductId.Value = productId.ToString();
            }
              
        }

        // --- Update Product ---
        protected void btnUpdateProduct_Click(object sender, EventArgs e)
        {
            string imagePath;

            if (fuLaptopImage.HasFile)
            {
                string extension = Path.GetExtension(fuLaptopImage.FileName);
                if (extension == ".jpg" || extension == ".jpeg" || extension == ".png")
                {
                    imagePath = "../assets/images/products/laptops/" + fuLaptopImage.FileName;
                    fuLaptopImage.SaveAs(Server.MapPath(imagePath));
                }
                else
                {
                    lblImageMessage.Text = "Please upload a valid image (.jpg, .jpeg, .png)";
                    lblImageMessage.Visible = true;
                    return;
                }
            }
            else
            {
                imagePath = hfImage.Value;
            }

            int productId = Convert.ToInt32(hfProductId.Value);
            int categoryId = Convert.ToInt32(ddlCategoryId.SelectedValue);
            int brandId = Convert.ToInt32(ddlBrandId.SelectedValue);
            string laptopModel = txtLaptopModel.Text;
            string ram = ddlRAM.SelectedValue;
            string ssd = ddlSSD.SelectedValue;
            string hdd = ddlHDD.SelectedValue;
            string displaySize = txtDisplaySize.Text;
            string graphicCard = ddlGraphicCard.SelectedValue;
            string description = txtDescription.Text;
            double costPrice = Convert.ToDouble(txtCostPrice.Text);
            double salePrice = Convert.ToDouble(txtPrice.Text);
            int discount = Convert.ToInt32(txtDiscount.Text);
            int quantity = Convert.ToInt32(txtQuantity.Text);

            getcon();
            string query = "UPDATE Laptop_Details_tbl SET " +
                           "Image='" + imagePath + "', Category_Id=" + categoryId + ", Brand_Id=" + brandId +
                           ", Laptop_Model='" + laptopModel + "', RAM='" + ram + "', SSD='" + ssd + "', HDD='" + hdd +
                           "', Display_Size='" + displaySize + "', Graphic_Card='" + graphicCard +
                           "', Description='" + description + "', Cost_Price=" + costPrice +
                           ", Sale_Price=" + salePrice + ", Discount=" + discount +
                           ", Quantity=" + quantity + ", Upload_Date=GETDATE() WHERE Laptop_Id=" + productId;

            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
              

            Response.Redirect("Products.aspx");
        }
    }
}
