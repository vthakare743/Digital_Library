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


public partial class Dashboard_production_uploadBook : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    BasicCode b = new BasicCode();
    int num = 1;
    string file;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
         if (Fuphoto.HasFile)
        {
            string fileName = Path.GetFileName(Fuphoto.PostedFile.FileName);
            Fuphoto.PostedFile.SaveAs(Server.MapPath("Book_images/") + fileName);
            hfphoto.Value = file;
        }
        else
        {
            lblmsg.Text = " Please Select your file";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
         if (FUpdf.HasFile)
         {
             string fileName = Path.GetFileName(FUpdf.PostedFile.FileName);
             FUpdf.PostedFile.SaveAs(Server.MapPath("Book_pdf/") + fileName);
             hfpdf.Value = file;
         }
         else
         {
             lblmsg.Text = " Please Select your file";
             lblmsg.ForeColor = System.Drawing.Color.Red;
         }
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();

        cmd.CommandText = "Insert into BookDeatails(id,owner_name,mobile_no,Published_date,book_category,book_name,book_price,uploaded_book,book_pdf)values(@id,@an,@m,@d,@c,@b,@p,@ph,@bd)";
        cmd.Parameters.AddWithValue("@id", b.generateID("id", "BookDeatails"));
        cmd.Parameters.AddWithValue("@an", txtaname.Text);
        //cmd.Parameters.AddWithValue("@a", txtaddrss.Text);
        cmd.Parameters.AddWithValue("@m", Txtmob.Text);
        cmd.Parameters.AddWithValue("@d", txtyear.Text);
        cmd.Parameters.AddWithValue("@c", DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@b", txtbook.Text);
        cmd.Parameters.AddWithValue("@p", txtprice.Text);
        cmd.Parameters.AddWithValue("@ph", Fuphoto.FileName);
        cmd.Parameters.AddWithValue("@bd", FUpdf.FileName);
        cmd.Connection = con;
        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n > 0)
        {
            Response.Write("<script>alert('Record Saved Successfully!!!!!!');</script>");
        }
    
    }
}
    
