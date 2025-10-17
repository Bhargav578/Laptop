using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Laptop.Admin
{
    public partial class Brands : System.Web.UI.Page
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

            // --- Fill GridView with brands ---
            void fillGrid()
            {
                getcon();
                da = new SqlDataAdapter("SELECT b.Brand_Id, b.Brand_Name, b.Brand_Image, " +
                                        "COUNT(l.Laptop_Id) AS Products " +
                                        "FROM Brand_Details_tbl AS b " +
                                        "LEFT JOIN Laptop_Details_tbl AS l ON b.Brand_Id = l.Brand_Id " +
                                        "GROUP BY b.Brand_Id, b.Brand_Name, b.Brand_Image", con);
                ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
            }

            // --- Upload brand image ---
            string uploadImage()
            {
                if (fuBrandImage.HasFile)
                {
                    string extension = Path.GetExtension(fuBrandImage.FileName).ToLower();
                    if (extension == ".jpg" || extension == ".jpeg" || extension == ".png")
                    {
                        string imagePath = "../assets/images/brand-image/" + fuBrandImage.FileName;
                        fuBrandImage.SaveAs(Server.MapPath(imagePath));
                        return imagePath;
                    }
                }
                else
                {
                    if (btnAddBrand.Text == "Add Brand")
                        lblError.Text = "Please Upload an image...";
                }
                return null;
            }

            // --- Add or Update brand ---
            protected void btnAddBrand_Click(object sender, EventArgs e)
            {
                string image = uploadImage();

                getcon();

                if (btnAddBrand.Text == "Add Brand" && image != null)
                {
                    string query = "INSERT INTO Brand_Details_tbl (Brand_Name, Brand_Image) " +
                                   "VALUES (@BrandName, @BrandImage)";
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@BrandName", txtBrandName.Text);
                    cmd.Parameters.AddWithValue("@BrandImage", image);
                    cmd.ExecuteNonQuery();

                    lblResponse.Text = "Brand Added Successfully!";
                }
                else if (btnAddBrand.Text == "Update Brand")
                {
                    string brandId = hfBrandId.Value;
                    if (image == null)
                    {
                        image = hfBrandImage.Value;
                    }

                    string query = "UPDATE Brand_Details_tbl SET Brand_Name=@BrandName, Brand_Image=@BrandImage " +
                                   "WHERE Brand_Id=@BrandId";
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@BrandName", txtBrandName.Text);
                    cmd.Parameters.AddWithValue("@BrandImage", image);
                    cmd.Parameters.AddWithValue("@BrandId", brandId);
                    cmd.ExecuteNonQuery();

                    lblResponse.Text = "Brand Updated Successfully!";
                    btnAddBrand.Text = "Add Brand";
                }

                con.Close();
                txtBrandName.Text = "";
                lblResponse.Visible = true;
                fillGrid();
            }

            // --- GridView RowCommand for Update/Delete ---
            protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
            {
                string brandId = e.CommandArgument.ToString();

                if (e.CommandName == "cmd_delete")
                {
                    getcon();
                    cmd = new SqlCommand("DELETE FROM Brand_Details_tbl WHERE Brand_Id=@BrandId", con);
                    cmd.Parameters.AddWithValue("@BrandId", brandId);
                    cmd.ExecuteNonQuery();
                    con.Close();

                    fillGrid();
                }
                else if (e.CommandName == "cmd_update")
                {
                    getcon();
                    da = new SqlDataAdapter("SELECT Brand_Name, Brand_Image FROM Brand_Details_tbl WHERE Brand_Id=@BrandId", con);
                    da.SelectCommand.Parameters.AddWithValue("@BrandId", brandId);
                    ds = new DataSet();
                    da.Fill(ds);
                    con.Close();

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        txtBrandName.Text = ds.Tables[0].Rows[0]["Brand_Name"].ToString();
                        hfBrandId.Value = brandId;
                        hfBrandImage.Value = ds.Tables[0].Rows[0]["Brand_Image"].ToString();
                        btnAddBrand.Text = "Update Brand";
                    }
                }
            }
        }
    }
