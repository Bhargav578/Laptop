using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Laptop.Admin
{
    public partial class AddUser : System.Web.UI.Page
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
                lblResponse.Visible = false;
            }
        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            string firstName = txtFirstName.Text.Trim();
            string lastName = txtLastName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string mobileNo = txtMobileNo.Text.Trim();
            string password = txtPassword.Text.Trim();
            string userRoleId = ddlUserRole.SelectedValue;

            if (!emailExists(email))
            {
                addUser(firstName, lastName, email, mobileNo, password, userRoleId);
                Response.Redirect("Users.aspx");
            }
            else
            {
                lblResponse.Text = "Email already exists!";
                lblResponse.Visible = true;
            }
        }

        // --- Check if email exists ---
        bool emailExists(string email)
        {
            getcon();
            string query = "SELECT COUNT(*) FROM User_Details_tbl WHERE Email='" + email + "'";
            cmd = new SqlCommand(query, con);
            int count = Convert.ToInt32(cmd.ExecuteScalar());
             
            return count > 0;
        }

        // --- Add new user ---
        void addUser(string firstName, string lastName, string email, string mobileNo, string password, string userRoleId)
        {
            getcon();
            string query = "INSERT INTO User_Details_tbl (First_Name, Last_Name, Email, Mobile_No, Password, User_Role_Id) " +
                           "VALUES ('" + firstName + "','" + lastName + "','" + email + "','" + mobileNo + "','" + password + "','" + userRoleId + "')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
             
        }
    }
}
