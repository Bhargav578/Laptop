using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Laptop.Admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadBrands();
                loadCategories();
                lblImageMessage.Visible = false;
                lblResponse.Visible = false;
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void loadBrands()
        {
            getcon();
            da = new SqlDataAdapter("SELECT Brand_Id, Brand_Name FROM Brand_Details_tbl", con);
            ds = new DataSet();
            da.Fill(ds);

            ddlBrandId.Items.Clear();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                ddlBrandId.Items.Add(new ListItem(dr["Brand_Name"].ToString(), dr["Brand_Id"].ToString()));
            }

            con.Close();
        }

        void loadCategories()
        {
            getcon();
            da = new SqlDataAdapter("SELECT Category_Id, Category_Name FROM Category_Details_tbl", con);
            ds = new DataSet();
            da.Fill(ds);

            ddlCategoryId.Items.Clear();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                ddlCategoryId.Items.Add(new ListItem(dr["Category_Name"].ToString(), dr["Category_Id"].ToString()));
            }

            con.Close();
        }

        void clearForm()
        {
            txtLaptopModel.Text = "";
            txtDisplaySize.Text = "";
            ddlGraphicCard.SelectedIndex = 0;
            ddlHDD.SelectedIndex = 0;
            ddlSSD.SelectedIndex = 0;
            ddlRAM.SelectedIndex = 0;
            txtCostPrice.Text = "";
            txtDescription.Text = "";
            txtDiscount.Text = "";
            txtPrice.Text = "";
            txtQuantity.Text = "";
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            if (fuLaptopImage.HasFile)
            {
                string ext = Path.GetExtension(fuLaptopImage.FileName).ToLower();
                if (ext == ".jpg" || ext == ".jpeg" || ext == ".png")
                {
                    string imagePath = "../assets/images/products/laptops/" + fuLaptopImage.FileName;
                    fuLaptopImage.SaveAs(Server.MapPath(imagePath));

                    int categoryId = Convert.ToInt32(ddlCategoryId.SelectedValue);
                    int brandId = Convert.ToInt32(ddlBrandId.SelectedValue);
                    string laptopModel = txtLaptopModel.Text;
                    string ram = ddlRAM.SelectedValue;
                    string ssd = ddlSSD.SelectedValue;
                    string hdd = ddlHDD.SelectedValue;
                    string graphicCard = ddlGraphicCard.SelectedValue;
                    string displaySize = txtDisplaySize.Text;
                    string description = txtDescription.Text;
                    int costPrice = Convert.ToInt32(txtCostPrice.Text);
                    int salePrice = Convert.ToInt32(txtPrice.Text);
                    int discount = Convert.ToInt32(txtDiscount.Text);
                    int quantity = Convert.ToInt32(txtQuantity.Text);

                    // --- Insert into database directly (2-Tier) ---
                    getcon();
                    string query = "INSERT INTO Laptop_Details_tbl " +
                        "(Image, Category_Id, Brand_Id, Laptop_Model, RAM, SSD, HDD, Display_Size, Graphic_Card, Description, Cost_Price, Sale_Price, Discount, Quantity, Upload_Date, Sold_Quantity, Is_Deleted) " +
                        "VALUES('" + imagePath + "'," + categoryId + "," + brandId + ",'" + laptopModel + "','" + ram + "','" + ssd + "','" + hdd + "','" + displaySize + "','" + graphicCard + "','" + description + "'," + costPrice + "," + salePrice + "," + discount + "," + quantity + ", GETDATE(), 0, 0)";
                    cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                    con.Close();

                    lblResponse.Text = "Product Added Successfully!";
                    lblResponse.Visible = true;
                    clearForm();
                }
                else
                {
                    lblImageMessage.Text = "Only .jpg, .jpeg, .png files allowed!";
                    lblImageMessage.Visible = true;
                }
            }
            else
            {
                lblImageMessage.Text = "Please upload an image!";
                lblImageMessage.Visible = true;
            }
        }
    }
}
