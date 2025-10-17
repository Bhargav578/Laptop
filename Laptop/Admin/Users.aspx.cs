using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Laptop.Admin
{
    public partial class Users : System.Web.UI.Page
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
                fillGrid();
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        // --- Fill GridView with all users ---
        public void fillGrid()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM User_Details_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
             
        }

        // --- GridView RowCommand for Update/Delete ---
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string userId = e.CommandArgument.ToString();

            if (e.CommandName.Equals("cmd_update"))
            {
                Response.Redirect("UpdateUser.aspx?userId=" + userId);
            }
            else if (e.CommandName.Equals("cmd_delete"))
            {
                deleteUser(userId);
                fillGrid();
            }
        }

        // --- Add new user ---
        public void addUser(string firstName, string lastName, string email, string mobileNo, string password, string userRoleId)
        {
            getcon();
            string query = $"INSERT INTO User_Details_tbl (First_Name, Last_Name, Email, Mobile_No, Password, User_Role_Id) " +
                           $"VALUES('{firstName}', '{lastName}', '{email}', '{mobileNo}', '{password}', '{userRoleId}')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
             
            fillGrid();
        }

        // --- Update existing user ---
        public void updateUser(string userId, string firstName, string lastName, string email, string mobileNo, string password, string userRoleId)
        {
            getcon();
            string query = $"UPDATE User_Details_tbl SET First_Name='{firstName}', Last_Name='{lastName}', Email='{email}', " +
                           $"Mobile_No='{mobileNo}', Password='{password}', User_Role_Id='{userRoleId}' WHERE User_Id='{userId}'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
             
            fillGrid();
        }

        // --- Delete user ---
        public void deleteUser(string userId)
        {
            getcon();
            cmd = new SqlCommand("DELETE FROM User_Details_tbl WHERE User_Id=" + userId, con);
            cmd.ExecuteNonQuery();
             
        }

        // --- Check if email exists ---
        public bool emailExist(string email)
        {
            getcon();
            cmd = new SqlCommand("SELECT COUNT(*) FROM User_Details_tbl WHERE Email='" + email + "'", con);
            int count = Convert.ToInt32(cmd.ExecuteScalar());
             
            return count > 0;
        }
    }
}
