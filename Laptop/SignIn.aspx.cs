using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.IO.Ports;

namespace Laptop
{
    public partial class SignIn : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlDataAdapter da;
        SqlConnection con;
        SqlCommand cmd;
        DataSet ds;
        string fnm;
        int i;
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Ragister.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtLoginEmail.Text != null && txtLoginPassword.Text != null)
            {
                getcon();
                cmd = new SqlCommand("select count(*) from User_Details_tbl where email='" + txtLoginEmail.Text + "' and Password='" + txtLoginPassword.Text + "'", con);
                i = Convert.ToInt32(cmd.ExecuteScalar());
                if (i > 0)
                {
                    Session["user"] = txtLoginEmail.Text;
                    Response.Redirect("Default.aspx");

                }

                else if (txtLoginEmail.Text == "sv348@gmail.com" && txtLoginPassword.Text == "123456")
                {
                    Session["Username"] = txtLoginEmail.Text;
                    Response.Redirect("Admin/index.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Email or password!!!');</script>");

            }

        }
    }
}