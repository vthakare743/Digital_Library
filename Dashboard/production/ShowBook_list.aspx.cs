using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
public partial class Dashboard_production_ShowBook_list : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }  
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Download")
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[rowIndex];
            string id = row.Cells[1].Text;

            con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select book_pdf from BookDeatails where id=@id";
            cmd.Parameters.AddWithValue("@id", id);


            cmd.Connection = con;
            Object obj = cmd.ExecuteScalar();

            if (obj == null)
            {

            }
            else
            {
                string fileName = obj.ToString();

                Response.Redirect("~/Dashboard/production/Book_pdf/"+fileName);
                


              //  Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open(fileName,'_newtab');", true);


                ////Path of the File to be downloaded.
                //string filePath = Server.MapPath(string.Format("~/user/Presphoto/{0}", fileName));

                ////Content Type and Header.
                //Response.ContentType = "application/png";
                //Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);

                ////Writing the File to Response Stream.
                //Response.WriteFile(filePath);

                ////Flushing the Response.
                //Response.Flush();
                //Response.End();


            }


        }
    }

}