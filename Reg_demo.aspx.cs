using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;
using System.IO;
public partial class Reg_Author : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

  
    }
    protected void btnsubmit_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Server = LAPTOP-LNJQT0CR\\SQLEXPRESS; Initial Catalog = Digital_libraryDB; Integrated Security = True";
        con.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Insert into AuthorRegistration(aid,first_name,last_name,email,mobile,author_name,pwd)values(@aid,@fn,@ln,@e,@m,@au,@p)";
        cmd.Parameters.AddWithValue("@aid", txtid.Text);
        cmd.Parameters.AddWithValue("@fn", txtfirstname.Text);
        cmd.Parameters.AddWithValue("@ln", txtlastname.Text);
        cmd.Parameters.AddWithValue("@e", txtemail.Text);
        cmd.Parameters.AddWithValue("@m", txtno.Text);
        cmd.Parameters.AddWithValue("@au", txtauthor.Text);
        cmd.Parameters.AddWithValue("@p", txtpwd.Text);
        cmd.Connection = con;
        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n > 0)
        {
            Response.Write("<script>alert('Record Saved Successfully!!!!!!');</script>");
        }
  
       
    }
}