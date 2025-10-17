using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Laptop
{
    public partial class Cart : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string userId;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
            {
                Response.Redirect("Login.aspx"); // Redirect if not logged in
            }
            else
            {
                userId = Session["userId"].ToString();
            }

            string quantity = Request.QueryString["Quantity"];
            string laptopId = Request.QueryString["Laptop_Id"];

            if (!IsPostBack)
            {
                FillGrid();
                if (laptopId != null && quantity != null)
                {
                    if (!RecordExist(userId, laptopId))
                    {
                        AddToCart(Convert.ToInt32(laptopId), Convert.ToInt32(quantity), Convert.ToInt32(userId));
                        FillGrid();
                    }
                }
            }
        }

     

        void RemoveFromCart(int productId, int userId)
        {
            getcon();
            string query = $"DELETE FROM Cart_Details_tbl WHERE Product_Id={productId} AND User_Id={userId}";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
             
        }

        bool RecordExist(string userId, string laptopId)
        {
            getcon();
            string query = $"SELECT COUNT(*) FROM Cart_Details_tbl WHERE User_Id={userId} AND Product_Id={laptopId}";
            cmd = new SqlCommand(query, con);
            int count = Convert.ToInt32(cmd.ExecuteScalar());
             
            return count > 0;
        }

        DataSet GetCartDataSet(int userId)
        {
            getcon();
            string query = @"SELECT c.Product_Id, l.Image, l.Laptop_Model, c.Quantity, 
                            l.Sale_Price, l.Sale_Price - (l.Sale_Price * l.Discount / 100) AS Price
                            FROM Laptop_Details_tbl AS l
                            JOIN Cart_Details_tbl AS c ON l.Laptop_Id = c.Product_Id
                            WHERE c.User_Id = " + userId;
            da = new SqlDataAdapter(query, con);
            ds = new DataSet();
            da.Fill(ds);
             
            return ds;
        }

        
        void SetData(DataSet ds)
        {
            double subTotal = 0, shipping = 50, total;
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                subTotal += Convert.ToDouble(row["Price"]) * Convert.ToInt32(row["Quantity"]);
            }
            lblSubTotal.Text = subTotal.ToString();
            lblShipping.Text = shipping.ToString();
            total = subTotal + shipping;
            lblTotalAmount.Text = total.ToString();
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }

        
    }
}
