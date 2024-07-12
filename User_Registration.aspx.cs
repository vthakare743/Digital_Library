﻿using System;
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


public partial class User_Registration : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    BasicCode b = new BasicCode();
    int num = 1;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (fuphoto.HasFile)
        {
            string fileName = Path.GetFileName(fuphoto.PostedFile.FileName);
            fuphoto.PostedFile.SaveAs(Server.MapPath("photo/") + fileName);

            lblmsg.Text = " Image Uploaded";
            lblmsg.ForeColor = System.Drawing.Color.ForestGreen;
        }
        else
        {
            lblmsg.Text = " Please Select your file";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();

        cmd.CommandText = "Insert into User_Registration (id,first_name,last_name,email,mobile,user_name,pwd,photo)values(@id,@fn,@ln,@e,@m,@u,@p,@ph)";
        cmd.Parameters.AddWithValue("@id", b.generateID("id", "User_Registration"));
        cmd.Parameters.AddWithValue("@fn", txtfirstname.Text);
        cmd.Parameters.AddWithValue("@ln", txtlastname.Text);
        cmd.Parameters.AddWithValue("@e", txtemail.Text);
        cmd.Parameters.AddWithValue("@m", txtno.Text);
        cmd.Parameters.AddWithValue("@u", txtuser.Text);
        cmd.Parameters.AddWithValue("@p", txtpwd.Text);
        cmd.Parameters.AddWithValue("@ph", fuphoto.FileName);
        cmd.Connection = con;
        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n > 0)
        {
            Response.Write("<script>alert('Record Saved Successfully!!!!!!');</script>");
        }
    }
}