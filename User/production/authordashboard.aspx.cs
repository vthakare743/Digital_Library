using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Dashboard_production_Author_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //lblmsg.Text = Session["author_name"].ToString();
        //SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        //con.Open();
        //SqlCommand cmd = new SqlCommand();

        //cmd.CommandText = "Select photo from AuthorRegistration where author_name=@a";
        //cmd.Parameters.AddWithValue("@a", Session["author_name"].ToString());
        //cmd.Connection = con;
        //object obj = cmd.ExecuteScalar();
        //con.Close();
        //String fname = obj.ToString();
        //Image1.ImageUrl = "../../photo/" + fname;
    }
}