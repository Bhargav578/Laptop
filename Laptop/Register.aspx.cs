using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Laptop
{
    public partial class Register : System.Web.UI.Page
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

        void clear()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtMobileNo.Text = "";
            txtPassword.Text = "";
            txtCPassword.Text = "";
        }

        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM User_Details_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
        }

        bool emailExists(string email)
        {
            getcon();
            string query = "SELECT COUNT(*) FROM User_Details_tbl WHERE Email = '" + email + "'";
            cmd = new SqlCommand(query, con);
            int count = Convert.ToInt32(cmd.ExecuteScalar());
             

            return count > 0;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            getcon();
            lblRegisterError.Visible = false;
            lblRegisterResponse.Visible = false;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (btnRegister.Text == "Register")
            {
                if (emailExists(txtEmail.Text))
                {
                    lblRegisterError.Text = "Email already exists!";
                    lblRegisterError.Visible = true;
                }
                else
                {
                    getcon();
                    cmd = new SqlCommand("INSERT INTO User_Details_tbl (First_Name, Last_Name, Email, Mobile_No, Password, User_Role_Id) VALUES('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtEmail.Text + "','" + txtMobileNo.Text + "','" + txtPassword.Text + "', '0')", con);
                    cmd.ExecuteNonQuery();
                    clear();
                    lblRegisterResponse.Text = "Registration successful!";
                    lblRegisterResponse.Visible = true;
                    Response.Redirect("SignIn.aspx");
                }
            }
        }
    }
}




