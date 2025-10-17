using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

namespace Laptop
{
    public partial class Default : System.Web.UI.Page
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
                ShowProducts();
            }
        }

        // 🟢 Show product data
        void ShowProducts()
        {
            con = new SqlConnection(s);
            string query = @"SELECT TOP 8 l.Laptop_Id, l.Image, cd.Category_Name, bd.Brand_Name, 
                            l.Laptop_Model, l.RAM, l.SSD, l.HDD, l.Display_Size, l.Graphic_Card, 
                            l.Description, l.Cost_Price, l.Sale_Price, l.Discount, l.Quantity,
                            l.Sale_Price - (l.Sale_Price * Discount / 100) AS New_Price, 
                            l.Upload_Date, l.Sold_Quantity 
                            FROM Laptop_Details_tbl l 
                            JOIN Category_Details_tbl cd ON l.Category_Id = cd.Category_Id 
                            JOIN Brand_Details_tbl bd ON l.Brand_Id = bd.Brand_Id 
                            WHERE l.Is_Deleted = 0 
                            ORDER BY l.Laptop_Id";

            da = new SqlDataAdapter(query, con);
            ds = new DataSet();
            da.Fill(ds);

            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
    }
}
