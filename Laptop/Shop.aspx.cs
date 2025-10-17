using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Laptop
{
    public partial class Shop : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        List<string> brands = new List<string>();
        int sortId;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(s);
            if (!IsPostBack)
            {
                setData();
                setBrands();
            }
        }

        void setData()
        {
            ds = new DataSet();
            string query = "SELECT l.Laptop_Id,l.Image,cd.Category_Name,bd.Brand_Name, l.Laptop_Model, l.RAM, l.SSD, l.HDD, l.Display_Size,l.Graphic_Card, l.Description, l.Cost_Price, l.Sale_Price, l.Discount, l.Quantity,l.Sale_Price - (l.Sale_Price * Discount / 100) as New_Price, l.Upload_Date, l.Sold_Quantity " +
                           "FROM Laptop_Details_tbl l " +
                           "JOIN Category_Details_tbl cd ON l.Category_Id = cd.Category_Id " +
                           "JOIN Brand_Details_tbl bd ON l.Brand_Id = bd.Brand_Id " +
                           "WHERE l.Is_Deleted = 0 " +
                           "ORDER BY l.Laptop_Model";

            da = new SqlDataAdapter(query, con);
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        void setBrands()
        {
            ds = new DataSet();
            string query = "SELECT Brand_Id, Brand_Name FROM Brand_Details_tbl";
            da = new SqlDataAdapter(query, con);
            da.Fill(ds);

            chklBrands.Items.Clear();
            foreach (DataRow dataRow in ds.Tables[0].Rows)
            {
                ListItem item = new ListItem(dataRow["Brand_Name"].ToString(), dataRow["Brand_Id"].ToString());
                item.Text = $"<div class='ec-sidebar-block-item'>{dataRow["Brand_Name"].ToString()}</div>";
                item.Attributes.Add("class", "ec-sidebar-block-item ec-more-toggle");
                chklBrands.Items.Add(item);
            }
        }

        void setSelectedBrands()
        {
            brands.Clear();
            foreach (ListItem li in chklBrands.Items)
            {
                if (li.Selected)
                {
                    brands.Add(li.Value);
                }
            }
        }

        void setSortId()
        {
            sortId = Convert.ToInt32(ddlSort.SelectedValue);
        }

        protected void chklBrands_SelectedIndexChanged(object sender, EventArgs e)
        {
            filter();
        }

        protected void ddlSort_SelectedIndexChanged(object sender, EventArgs e)
        {
            filter();
        }

        void filter()
        {
            setSelectedBrands();
            setSortId();

            string brandFilter = "";
            if (brands.Count > 0)
            {
                brandFilter = " AND l.Brand_Id IN(" + string.Join(",", brands) + ")";
            }

            string sortString = "";
            switch (sortId)
            {
                case 1: sortString = "ORDER BY l.Laptop_Model"; break;
                case 2: sortString = "ORDER BY l.Laptop_Model DESC"; break;
                case 3: sortString = "ORDER BY New_Price"; break;
                case 4: sortString = "ORDER BY New_Price DESC"; break;
            }

            string query = "SELECT l.Laptop_Id,l.Image,cd.Category_Name,bd.Brand_Name, l.Laptop_Model, l.RAM, l.SSD, l.HDD, l.Display_Size,l.Graphic_Card, l.Description, l.Cost_Price, l.Sale_Price, l.Discount, l.Quantity,l.Sale_Price - (l.Sale_Price * Discount / 100) as New_Price, l.Upload_Date, l.Sold_Quantity " +
                           "FROM Laptop_Details_tbl l " +
                           "JOIN Category_Details_tbl cd ON l.Category_Id = cd.Category_Id " +
                           "JOIN Brand_Details_tbl bd ON l.Brand_Id = bd.Brand_Id " +
                           "WHERE l.Is_Deleted = 0 " + brandFilter + " " + sortString;

            ds = new DataSet();
            da = new SqlDataAdapter(query, con);
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
    }
}
