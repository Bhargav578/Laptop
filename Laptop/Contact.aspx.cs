using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Laptop
{
    public partial class Contact : System.Web.UI.Page
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
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        // Insert method
        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            try
            {
                getcon(); // open connection
                string query = $"INSERT INTO Responses_tbl(Name,Email,Mobile_No,Subject,Message) " +
                               $"VALUES('{txtName.Text}','{txtEmail.Text}','{txtMobileNo.Text}','{txtSubject.Text}','{txtMessage.Text}')";

                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                lblResponse.Text = "Record Submitted Successfully!";
                clearForm();
            }
            catch (Exception ex)
            {
                lblResponse.Text = "Error: " + ex.Message;
            }
        }

        void clearForm()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtMobileNo.Text = "";
            txtSubject.Text = "";
            txtMessage.Text = "";
        }
    }
}
