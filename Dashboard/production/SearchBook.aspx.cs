using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Dashboard_production_SearchBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlDataSource1.SelectCommand = " SELECT [owner_name],[book_name],[Published_date],[book_price],[uploaded_book]FROM [BookDeatails]";
    
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        string book_name = txtbname.Text;


        SqlDataSource1.SelectCommand = "SELECT [owner_name],[book_name],[Published_date],[book_price],[uploaded_book]FROM [BookDeatails] WHERE [book_name] LIKE '%" + book_name + "%' OR [book_name] LIKE '%" + book_name + "%' OR [owner_name] LIKE '%" + book_name + "%'";
    }
}