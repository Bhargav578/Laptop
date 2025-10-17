using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Laptop.Admin
{
    public partial class Categories : System.Web.UI.Page
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

        void fillGrid()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM Category_Details_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
             
        }

        string uploadImage()
        {
            if (fuCategoryImage.HasFile)
            {
                string extension = Path.GetExtension(fuCategoryImage.FileName).ToLower();
                if (extension == ".jpg" || extension == ".jpeg" || extension == ".png")
                {
                    string image = "../assets/images/category-image/" + fuCategoryImage.FileName;
                    fuCategoryImage.SaveAs(Server.MapPath(image));
                    return image;
                }
                else
                {
                    lblError.Text = "Only .jpg, .jpeg, .png files allowed!";
                    return null;
                }
            }
            else
            {
                if (btnAddCategory.Text.Equals("Add Category"))
                    lblError.Text = "Please upload an image...";
                return null;
            }
        }

        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            string image = uploadImage();

            getcon();

            if (btnAddCategory.Text.Equals("Add Category") && image != null)
            {
                cmd = new SqlCommand("INSERT INTO Category_Details_tbl(Category_Name, Category_Image) VALUES('" + txtCategoryName.Text + "','" + image + "')", con);
                cmd.ExecuteNonQuery();
                lblResponse.Text = "Category Added Successfully!";
            }
            else if (btnAddCategory.Text.Equals("Update Category"))
            {
                if (image == null)
                {
                    image = hfCategoryImage.Value;
                }
                string categoryId = hfCategoryId.Value;
                string query = "UPDATE Category_Details_tbl SET Category_Name='" + txtCategoryName.Text + "', Category_Image='" + image + "' WHERE Category_Id='" + categoryId + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                lblResponse.Text = "Category Updated Successfully!";
                btnAddCategory.Text = "Add Category";
            }

             
            txtCategoryName.Text = "";
            lblResponse.Visible = true;
            fillGrid();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string categoryId = e.CommandArgument.ToString();
            getcon();

            if (e.CommandName == "cmd_delete")
            {
                cmd = new SqlCommand("DELETE FROM Category_Details_tbl WHERE Category_Id=" + categoryId, con);
                cmd.ExecuteNonQuery();
                fillGrid();
            }
            else if (e.CommandName == "cmd_update")
            {
                da = new SqlDataAdapter("SELECT * FROM Category_Details_tbl WHERE Category_Id='" + categoryId + "'", con);
                ds = new DataSet();
                da.Fill(ds);

                txtCategoryName.Text = ds.Tables[0].Rows[0]["Category_Name"].ToString();
                hfCategoryId.Value = categoryId;
                hfCategoryImage.Value = ds.Tables[0].Rows[0]["Category_Image"].ToString();
                btnAddCategory.Text = "Update Category";
            }

         
        }
    }
}
