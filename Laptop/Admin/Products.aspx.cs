using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Laptop.Admin
{
    public partial class Products : System.Web.UI.Page
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
                fillData();
            }
        }

     
        void fillData()
        {
            getcon();
            string query = "SELECT l.Laptop_Id, l.Image, cd.Category_Name, bd.Brand_Name, l.Laptop_Model, " +
                           "l.RAM, l.SSD, l.HDD, l.Display_Size, l.Graphic_Card, l.Description, " +
                           "l.Cost_Price, l.Sale_Price, l.Discount, l.Quantity, " +
                           "(l.Sale_Price - (l.Sale_Price * Discount / 100)) as New_Price, " +
                           "l.Upload_Date, l.Sold_Quantity " +
                           "FROM Laptop_Details_tbl l " +
                           "JOIN Category_Details_tbl cd ON l.Category_Id = cd.Category_Id " +
                           "JOIN Brand_Details_tbl bd ON l.Brand_Id = bd.Brand_Id " +
                           "WHERE l.Is_Deleted = 0 ORDER BY l.Laptop_Model";

            da = new SqlDataAdapter(query, con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
             
        }

        
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int productId = Convert.ToInt32(e.CommandArgument.ToString());

            if (e.CommandName.Equals("cmd_delete"))
            {
                deleteProduct(productId);
                fillData();
            }
            else if (e.CommandName.Equals("cmd_update"))
            {
                Response.Redirect("UpdateProduct.aspx?productId=" + productId);
            }
        }

        // --- Delete Product (Soft Delete) ---
        void deleteProduct(int productId)
        {
            getcon();
            string query = "UPDATE Laptop_Details_tbl SET Is_Deleted = 1 WHERE Laptop_Id = " + productId;
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
             
        }
    }
}
