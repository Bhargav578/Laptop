using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Laptop
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string userId = "1"; // Example: assign logged-in user ID here
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                fillData();
        }

        void fillData()
        {
            ds = new DataSet();
            string laptopId = Request.QueryString["Laptop_Id"];
            try
            {
                getcon();
                string query = "SELECT l.Laptop_Id, cd.Category_Name, bd.Brand_Name, l.Image, l.Laptop_Model, l.RAM, l.SSD, l.HDD, l.Display_Size, l.Graphic_Card, l.Description, l.Cost_Price, l.Sale_Price, l.Discount, l.Quantity, l.Sale_Price - (l.Sale_Price * l.Discount / 100) as New_Price, l.Upload_Date, l.Sold_Quantity " +
                               "FROM Laptop_Details_tbl l " +
                               "JOIN Category_Details_tbl cd ON l.Category_Id = cd.Category_Id " +
                               "JOIN Brand_Details_tbl bd ON l.Brand_Id = bd.Brand_Id " +
                               "WHERE l.Laptop_Id=" + laptopId;

                da = new SqlDataAdapter(query, con);
                da.Fill(ds);

                lblBrandTitle.Text = ds.Tables[0].Rows[0]["Brand_Name"].ToString();
                lblBrand.Text = ds.Tables[0].Rows[0]["Brand_Name"].ToString();
                lblModel.Text = ds.Tables[0].Rows[0]["Laptop_Model"].ToString();
                lblCategoryName.Text = ds.Tables[0].Rows[0]["Category_Name"].ToString();
                lblNewPrice.Text = ds.Tables[0].Rows[0]["New_Price"].ToString();

                lblProductDetail.Text = "RAM: " + ds.Tables[0].Rows[0]["RAM"] + "<br/>" +
                                        "SSD: " + ds.Tables[0].Rows[0]["SSD"] + "<br/>" +
                                        "HDD: " + ds.Tables[0].Rows[0]["HDD"] + "<br/>" +
                                        "Display: " + ds.Tables[0].Rows[0]["Display_Size"] + "<br/>" +
                                        "Graphics Card: " + ds.Tables[0].Rows[0]["Graphic_Card"];

                lblBrandName.Text = ds.Tables[0].Rows[0]["Brand_Name"].ToString();
                lblRAM.Text = ds.Tables[0].Rows[0]["RAM"].ToString();
                lblSSD.Text = ds.Tables[0].Rows[0]["SSD"].ToString();
                lblHDD.Text = ds.Tables[0].Rows[0]["HDD"].ToString();
                lblLaptopModel.Text = ds.Tables[0].Rows[0]["Laptop_Model"].ToString();
                lblGraphicCard.Text = ds.Tables[0].Rows[0]["Graphic_Card"].ToString();
                lblDisplay.Text = ds.Tables[0].Rows[0]["Display_Size"].ToString();
                lblDate.Text = ds.Tables[0].Rows[0]["Upload_Date"].ToString();
                Image1.ImageUrl = ds.Tables[0].Rows[0]["Image"].ToString();

                hlWishlist.NavigateUrl = "Wishlist.aspx?Laptop_Id=" + laptopId;
            }
            finally
            {
                con.Close();
            }
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            int productId = Convert.ToInt32(Request.QueryString["Laptop_Id"]);
            int quantity = Convert.ToInt32(txtQuantity.Text);

            try
            {
                getcon();

                // Check if record exists
                string checkQuery = $"SELECT COUNT(*) FROM Cart_Details_tbl WHERE User_Id={userId} AND Product_Id={productId}";
                cmd = new SqlCommand(checkQuery, con);
                int count = Convert.ToInt32(cmd.ExecuteScalar());

                if (count == 0)
                {
                    // Insert new cart record
                    string insertQuery = $"INSERT INTO Cart_Details_tbl(Product_Id, Quantity, User_Id) VALUES({productId}, {quantity}, {userId})";
                    cmd = new SqlCommand(insertQuery, con);
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    // Update existing cart record
                    string updateQuery = $"UPDATE Cart_Details_tbl SET Quantity={quantity} WHERE Product_Id={productId} AND User_Id={userId}";
                    cmd = new SqlCommand(updateQuery, con);
                    cmd.ExecuteNonQuery();
                }

                Response.Redirect($"Cart.aspx?Laptop_Id={productId}&Quantity={quantity}");
            }
            finally
            {
                con.Close();
            }
        }
    }
}
